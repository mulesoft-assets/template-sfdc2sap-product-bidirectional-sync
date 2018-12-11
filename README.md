
# Anypoint Template: Salesforce and SAP Product Bidirectional Sync	

<!-- Header (start) -->
Bidirectionally synchronize product data between Salesforce and SAP. Configure this template quickly by modifying the fields to be synchronized, how they map, and criteria on when to trigger the synchronization. This template is initiated via an iDocs message from SAP and polling on SFDC side (which can be easily switched to receive outbound messages to reduce API calls). This template leverages watermarking functionality to ensure that only the most recent items are synchronized and uses batch to effectively process many records at a time, if you choose not to process all the records one at a time.

![4cd462df-6257-4768-a58b-87def1fc25d9-image.png](https://exchange2-file-upload-service-kprod.s3.us-east-1.amazonaws.com:443/4cd462df-6257-4768-a58b-87def1fc25d9-image.png)

<!-- Header (end) -->

# License Agreement
This template is subject to the conditions of the <a href="https://s3.amazonaws.com/templates-examples/AnypointTemplateLicense.pdf">MuleSoft License Agreement</a>. Review the terms of the license before downloading and using this template. You can use this template for free with the Mule Enterprise Edition, CloudHub, or as a trial in Anypoint Studio. 
# Use Case
<!-- Use Case (start) -->
This template provides an online bidirectional synchronization of products or materials between Salesforce and SAP. Every time there is a new product or material or a change in an existing one in Salesforce or a SAP instance, the template fetches it and sends it as an IDoc to SAP or Salesforce respectively to update product and material there.

Requirements have been set not only to be used as examples, but also to establish a starting point to adapt the integration to your requirements.

This template leverages the Mule batch module. The batch job is divided in *Process* and *On Complete* stages.
The integration is triggered by polling one of Salesforce products or SAP materials. New or modified products and materials are passed to the batch process as input. In the batch, the material and product is fetched from SAP by material number or from Salesforce by its product code.
Afterwards every such product and material is sent to destination instance - to Salesforce with Upsert or to SAP in form of iDoc XML where it is asynchronously updated or created.
<!-- Use Case (end) -->

# Considerations
<!-- Default Considerations (start) -->

<!-- Default Considerations (end) -->

<!-- Considerations (start) -->
To make this template run, there are certain preconditions that must be considered. All of them deal with the preparations in SAP, that must be made for the template to run smoothly. Failing to do so can lead to unexpected behavior of the template.

Before continuing with the use of this template, see [Install the SAP Connector in Studio](https://docs.mulesoft.com/connectors/sap/sap-connector#install-the-sap-connector-in-studio).

## Disclaimer

This template uses a few private Maven dependencies from MuleSoft to work. If you intend to run this template with Maven support, you need to add three extra dependencies for SAP to the pom.xml file.
<!-- Considerations (end) -->


## SAP Considerations

Here's what you need to know to get this template to work with SAP.

### As a Data Source

The SAP backend system is used as a source of data. The SAP connector is used to send and receive the data from the SAP backend. The connector can either use RFC calls of BAPI functions and/or IDoc messages for data exchange, and needs to be properly customized per the "Properties to Configure" section.


### As a Data Destination

Template uses custom BAPI function. To create them please use following steps:

1. Create structure `ZMMST_ENH_MARA` in transaction `SE11` as per its definition in file `structure_ZMMST_ENH_MARA.abap`
2. Create table type `ZMMTTY_ENH_MARA` in transaction `SE11` as per its definition in file `table_type_ZMMTTY_ENH_MARA.abap`
3. Create message class called `ZMC_ENGTEMPLATES` in transaction `SE91` as per definition in file `message_class_ZMC_ENGTEMPLATES.abap`
4. Create function module `ZMMFM_MATERIAL_GETLIST` in transaction `SE37` as per source file `ZMMFM_MATERIAL_GETLIST.abap`

Referenced files are in src/main/resources directory.
## Salesforce Considerations

Here's what you need to know about Salesforce to get this template to work:

- Where can I check that the field configuration for my Salesforce instance is the right one? See: <a href="https://help.salesforce.com/HTViewHelpDoc?id=checking_field_accessibility_for_a_particular_field.htm&language=en_US">Salesforce: Checking Field Accessibility for a Particular Field</a>.
- Can I modify the Field Access Settings? How? See: <a href="https://help.salesforce.com/HTViewHelpDoc?id=modifying_field_access_settings.htm&language=en_US">Salesforce: Modifying Field Access Settings</a>.

### As a Data Source

If the user who configured the template for the source system does not have at least *read only* permissions for the fields that are fetched, then an *InvalidFieldFault* API fault displays.

```
java.lang.RuntimeException: [InvalidFieldFault [ApiQueryFault 
[ApiFault  exceptionCode='INVALID_FIELD'
exceptionMessage='Account.Phone, Account.Rating, Account.RecordTypeId, 
Account.ShippingCity
^
ERROR at Row:1:Column:486
No such column 'RecordTypeId' on entity 'Account'. If you are 
attempting to use a custom field, be sure to append the '__c' 
after the custom field name. Reference your WSDL or the describe 
call for the appropriate names.'
]
row='1'
column='486'
]
]
```

### As a Data Destination

There are no considerations with using Salesforce as a data destination.

# Run it!
Simple steps to get this template running.
<!-- Run it (start) -->

<!-- Run it (end) -->

## Running On Premises
In this section we help you run this template on your computer.
<!-- Running on premise (start) -->

<!-- Running on premise (end) -->

### Where to Download Anypoint Studio and the Mule Runtime
If you are new to Mule, download this software:

+ [Download Anypoint Studio](https://www.mulesoft.com/platform/studio)
+ [Download Mule runtime](https://www.mulesoft.com/lp/dl/mule-esb-enterprise)

**Note:** Anypoint Studio requires JDK 8.
<!-- Where to download (start) -->

<!-- Where to download (end) -->

### Importing a Template into Studio
In Studio, click the Exchange X icon in the upper left of the taskbar, log in with your Anypoint Platform credentials, search for the template, and click Open.
<!-- Importing into Studio (start) -->

<!-- Importing into Studio (end) -->

### Running on Studio
After you import your template into Anypoint Studio, follow these steps to run it:

1. Locate the properties file `mule.dev.properties`, in src/main/resources.
2. Complete all the properties required per the examples in the "Properties to Configure" section.
3. Right click the template project folder.
4. Hover your mouse over `Run as`.
5. Click `Mule Application (configure)`.
6. Inside the dialog, select Environment and set the variable `mule.env` to the value `dev`.
7. Click `Run`.
<!-- Running on Studio (start) -->
To make this template run in Studio see [Install the SAP Connector in Studio](https://docs.mulesoft.com/connectors/sap/sap-connector#install-the-sap-connector-in-studio).
<!-- Running on Studio (end) -->

### Running on Mule Standalone
Update the properties in one of the property files, for example in mule.prod.properties, and run your app with a corresponding environment variable. In this example, use `mule.env=prod`. 


## Running on CloudHub
When creating your application in CloudHub, go to Runtime Manager > Manage Application > Properties to set the environment variables listed in "Properties to Configure" as well as the mule.env value.
<!-- Running on Cloudhub (start) -->

<!-- Running on Cloudhub (end) -->

### Deploying a Template in CloudHub
In Studio, right click your project name in Package Explorer and select Anypoint Platform > Deploy on CloudHub.
<!-- Deploying on Cloudhub (start) -->

<!-- Deploying on Cloudhub (end) -->

## Properties to Configure
To use this template, configure properties such as credentials, configurations, etc.) in the properties file or in CloudHub from Runtime Manager > Manage Application > Properties. The sections that follow list example values.
### Application Configuration
<!-- Application Configuration (start) -->
**Common Configuration**

+ scheduler.frequency `10000`
+ scheduler.startDelay `5000`
+ watermark.default.expression `2019-09-11T12:30:00.000Z`
+ page.size `100`

**SalesForce Connector Configuration**

+ sfdc.username `bob.dylan@sfdc`
+ sfdc.password `DylanPassword123`
+ sfdc.securityToken `avsfwCUl7apQs56Xq2AKi3X`
+ sfdc.integration.user.id `005n0000000T3QpAAK`

    **Note:** To find out the correct *sfdc.integration.user.id* value, refer to the example project [Salesforce Data Retrieval in Anypoint Exchange](https://www.mulesoft.com/exchange/org.mule.examples/salesforce-data-retrieval/).

**SAP Connector Configuration**

+ sap.jco.ashost `your.sap.address.com`
+ sap.jco.user `SAP_USER`
+ sap.jco.passwd `SAP_PASS`
+ sap.jco.sysnr `14`
+ sap.jco.client `800`
+ sap.jco.lang `EN`

**SAP Material Properties Configuration**

+ sap.material.type `ZHTI`
+ sap.material.industrySector `T`
+ sap.material.baseUnitOfMeasurement `KGS`
<!-- Application Configuration (end) -->

# API Calls
<!-- API Calls (start) -->
Salesforce imposes limits on the number of API calls that can be made. Therefore calculating this amount may be an important factor to consider. The template calls to the API can be calculated using the formula:

* ***1 + X + X / ${page.size}*** -- Where ***X*** is the number of products and materials to synchronize on each run.
* Divide by ***${page.size}*** because, by default, products and materials are gathered in groups of ${page.size} for each Upsert API call in the commit step. Also consider that these calls are executed repeatedly every polling cycle.

For instance if 10 records are fetched from an origin instance, then 12 API calls are made (1 + 10 + 1).
<!-- API Calls (end) -->

# Customize It!
This brief guide provides a high level understanding of how this template is built and how you can change it according to your needs. As Mule applications are based on XML files, this page describes the XML files used with this template. More files are available such as test classes and Mule application files, but to keep it simple, we focus on these XML files:

* config.xml
* businessLogic.xml
* endpoints.xml
* errorHandling.xml<!-- Customize it (start) -->

<!-- Customize it (end) -->

## config.xml
<!-- Default Config XML (start) -->
This file provides the configuration for connectors and configuration properties. Only change this file to make core changes to the connector processing logic. Otherwise, all parameters that can be modified should instead be in a properties file, which is the recommended place to make changes.
<!-- Default Config XML (end) -->

<!-- Config XML (start) -->

<!-- Config XML (end) -->

## businessLogic.xml
<!-- Default Business Logic XML (start) -->
The business logic XML file creates or updates objects in the destination system for a represented use case. You can customize and extend the logic of this template in this XML file to more meet your needs.
<!-- Default Business Logic XML (end) -->

<!-- Business Logic XML (start) -->

<!-- Business Logic XML (end) -->

## endpoints.xml
<!-- Default Endpoints XML (start) -->
This file contains the endpoints for triggering the template and for retrieving the objects that meet the defined criteria in a query. You can execute a batch job process with the query results.
<!-- Default Endpoints XML (end) -->

<!-- Endpoints XML (start) -->

<!-- Endpoints XML (end) -->

## errorHandling.xml
<!-- Default Error Handling XML (start) -->
This file handles how your integration reacts depending on the different exceptions. This file provides error handling that is referenced by the main flow in the business logic.
<!-- Default Error Handling XML (end) -->

<!-- Error Handling XML (start) -->

<!-- Error Handling XML (end) -->

<!-- Extras (start) -->

<!-- Extras (end) -->
