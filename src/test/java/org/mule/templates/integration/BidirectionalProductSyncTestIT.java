package org.mule.templates.integration;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.jetel.component.fileoperation.result.CreateResult;
import org.junit.After;
import org.junit.Assert;
import org.junit.Before;
import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.mule.MessageExchangePattern;
import org.mule.api.MuleException;
import org.mule.api.lifecycle.InitialisationException;
import org.mule.construct.Flow;
import org.mule.templates.AbstractTemplatesTestCase;
import org.mule.transport.NullPayload;

import com.google.common.collect.MapDifference;
import com.google.common.collect.Maps;
import com.mulesoft.module.batch.BatchTestHelper;
import com.sforce.soap.partner.SaveResult;

/**
 * The objective of this class is validating the correct behavior of the flows
 * for this Mule Anypoint Template
 * 
 */
@SuppressWarnings("unchecked")
public class BidirectionalProductSyncTestIT extends AbstractTemplatesTestCase {

	private static final String SFDC2SAP_INBOUND_FLOW_NAME = "fromSalesforceToSapFlow";
	private static final String SAP2SFDC_INBOUND_FLOW_NAME = "fromSapToSalesforceFlow";
	private static final int TIMEOUT_MILLIS = 60;

	private List<String> productsCreatedInSalesforce;
	private List<String> productsCreatedInSap;
	
	private Flow deleteProductFromSalesforceFlow;
	private Flow deleteProductFromSapFlow;
	private Flow createProductInSalesforceFlow;
	private Flow createProductInSapFlow;
	private Flow queryProductFromSalesforceFlow;
	private Flow queryProductFromSapFlow;
	private BatchTestHelper batchTestHelper;

	@BeforeClass
	public static void beforeTestClass() {
//		System.setProperty("page.size", "1000");
//
//		// Set polling frequency to 10 seconds
//		System.setProperty("polling.frequency", "10000");
//
//		// Set default water-mark expression to current time
//		System.setProperty("watermark.default.expression.sfdc", "2014-07-08T09:22:00.000Z");
//		System.setProperty("watermark.default.expression.sap", "2014-07-08T09:22:00.000Z");
	}

	@Before
	public void setUp() throws MuleException {
		productsCreatedInSalesforce = new ArrayList<String>();
		productsCreatedInSap = new ArrayList<String>();
		
		stopAutomaticPollTriggering();
		getAndInitializeFlows();
		
		batchTestHelper = new BatchTestHelper(muleContext);
	}

	@After
	public void tearDown() throws MuleException, Exception {
		cleanUpSandboxesByRemovingTestProducts();
		productsCreatedInSalesforce = null;
		productsCreatedInSap = null;
	}

	private void stopAutomaticPollTriggering() throws MuleException {
		stopFlowSchedulers(SFDC2SAP_INBOUND_FLOW_NAME);
		stopFlowSchedulers(SAP2SFDC_INBOUND_FLOW_NAME);
	}

	private void getAndInitializeFlows() throws InitialisationException {
		// Flow for creating products in Salesforce
		createProductInSalesforceFlow = getFlow("createProductsInSalesforceFlow");

		// Flow for creating products in Sap
		createProductInSapFlow = getFlow("createProductsInSapFlow");

		// Flow for deleting products in Salesforce
		deleteProductFromSalesforceFlow = getFlow("deleteProductsFromSalesforceFlow");

		// Flow for deleting products in Sap
		deleteProductFromSapFlow = getFlow("deleteProductsFromSapFlow");

		// Flow for querying the product in Salesforce
		queryProductFromSalesforceFlow = getFlow("queryProductFromSalesforceFlow");

		// Flow for querying the product in Sap
		queryProductFromSapFlow = getFlow("queryProductFromSapFlow");
	}

	private void cleanUpSandboxesByRemovingTestProducts() throws MuleException, Exception {
		final List<String> idList = new ArrayList<String>();
		for (String product : productsCreatedInSalesforce) {
			idList.add(product);
		}
		deleteProductFromSalesforceFlow.process(getTestEvent(idList, MessageExchangePattern.REQUEST_RESPONSE));
		idList.clear();
		for (String product : productsCreatedInSap) {
			idList.add(product);
		}
		deleteProductFromSapFlow.process(getTestEvent(idList, MessageExchangePattern.REQUEST_RESPONSE));
	}

//	@Test
//	public void testSalesforceToSapUpdate()
//			throws MuleException, Exception {
//
//		final HashMap<String, Object> product = createTestProducts(false);
//
//		Thread.sleep(20000); // wait until IDocs are applied in SAP
//
//		// Execution
//		executeWaitAndAssertBatchJob(SFDC2SAP_INBOUND_FLOW_NAME);
//
//		Thread.sleep(20000); // wait until IDocs are applied in SAP
//
//		compareProducts(product);
//	}

	@Test
	public void testSapToSalesforceUpdate()
			throws MuleException, Exception {

		final HashMap<String, Object> product = createTestProducts(true);

		Thread.sleep(10000); // wait until IDocs are applied in SAP
		// Execution
		executeWaitAndAssertBatchJob(SAP2SFDC_INBOUND_FLOW_NAME);

		Thread.sleep(10000); // wait until IDocs are applied in SAP

		compareProducts(product);
	}

	private HashMap<String, Object> createTestProducts(boolean sfdcFirst) throws Exception {
		// Build test products
		final HashMap<String, Object> product = new HashMap<String, Object>();
		String uniqueSuffix = Long.toString(System.currentTimeMillis(), Character.MAX_RADIX).toUpperCase();
		product.put("ProductCode", "S2S_PBS-" + uniqueSuffix);

		final Map<String, Object> salesforceProduct = (Map<String, Object>) product.clone();
		salesforceProduct.put("Name", "sfdc2sap-prod-bidi-" + uniqueSuffix + "-SFDC");
		
		final Map<String, Object> sapProduct = (Map<String, Object>) product.clone();
		sapProduct.put("Name", "sfdc2sap-prod-bidi-"+ uniqueSuffix + "-SAP");

		// Create products in sand-boxes and keep track of them for posterior cleaning up
		// note that product in target instance doesn't need to exist - other tests could test that too
		if (sfdcFirst) {
			productsCreatedInSalesforce.add(createTestProductsInSalesforceSandbox(salesforceProduct, createProductInSalesforceFlow));
		}
		Thread.sleep(64000); // to have different time
		productsCreatedInSap.add(createTestProductsInSapSandbox(sapProduct, createProductInSapFlow));
		if (!sfdcFirst) {
			productsCreatedInSalesforce.add(createTestProductsInSalesforceSandbox(salesforceProduct, createProductInSalesforceFlow));
		}
		return product;
	}

	private void compareProducts(HashMap<String, Object> product) throws Exception {
		// Assertions
		Map<String, String> retrievedProductFromSalesforce = (Map<String, String>) queryProduct(product, queryProductFromSalesforceFlow);
		
		Object product2 = queryProduct(product, queryProductFromSapFlow);
		Assert.assertFalse("Product from SAP is null", product2 instanceof NullPayload);
		Map<String, String> retrievedProductFromSap = (Map<String, String>) product2;
		
		Assert.assertEquals("Some products are not synchronized between systems.",
				retrievedProductFromSalesforce.get("Name"),
				retrievedProductFromSap.get("Name"));
	}

	private Object queryProduct(Map<String, Object> product, Flow queryProductFlow)
			throws Exception {
		return queryProductFlow.process(getTestEvent(product, MessageExchangePattern.REQUEST_RESPONSE)).getMessage().getPayload();
	}

	private String createTestProductsInSalesforceSandbox(Map<String, Object> product, Flow createProductFlow)
			throws Exception {
		List<Map<String, Object>> salesforceProducts = new ArrayList<Map<String, Object>>();
		salesforceProducts.add(product);

		final List<?> payloadAfterExecution = (List<?>) createProductFlow.process(
						getTestEvent(salesforceProducts, MessageExchangePattern.REQUEST_RESPONSE)).getMessage().getPayload();
		
		return ((SaveResult) payloadAfterExecution.get(0)).getId();
	}

	private String createTestProductsInSapSandbox(Map<String, Object> product, Flow createProductFlow)
			throws Exception {
		List<Map<String, Object>> salesforceProducts = new ArrayList<Map<String, Object>>();
		salesforceProducts.add(product);

		final List<?> payloadAfterExecution = (List<?>) createProductFlow.process(
						getTestEvent(salesforceProducts, MessageExchangePattern.REQUEST_RESPONSE)).getMessage().getPayload();
		return (String) product.get("ProductCode"); // ((CreateResult) payloadAfterExecution.get(0)).getCreatedObjects().get(0);
	}

	private void executeWaitAndAssertBatchJob(String flowConstructName) throws Exception {
		// Execute synchronization
		runSchedulersOnce(flowConstructName);

		// Wait for the batch job execution to finish
		batchTestHelper.awaitJobTermination(TIMEOUT_MILLIS * 1000, 500);
		batchTestHelper.assertJobWasSuccessful();
	}

}
