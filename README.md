- Extending the EKKO Table-Purchase Order
- EKKO can have Z fields and these needs to be available to CDS views
- Ekko can be extended either with EKKO_INCL_EEW_PS or CI_EKKODB include
- For our case Ekko is extended using CI_EKKODB is used
- So we need to add all the Zfield sinside this structure to our CDS
- Two ways: Fiori is based on r_purchasingdocument
- theres also i_purchasingdocument, but we will use r_purchasingdocument

We come across with:
r_purchasingdocument CDS view at the lowest level
Then there is r_purchaseorder
I_purchaseordertp- which a transactional view
C_PurchaseOrderTP is the consumption view which is used as reference data source in SEGW OData project and will be enhanced so that custom fields appear on SAP Fiori application.
I_PurchaseOrderTP is the transactional view with associated BOPF node, and is responsible for transactional behavior. This view also needs to be enhanced so that we can save data for custom field
R_PurchaseOrder is the built on R_PurchasingDocument view below.
R_PurchasingDocument is the basic view which gets data from EKKO.
We will extend all four view highlighted below so that custom fields are available in Consumption and Transactional CDS View
