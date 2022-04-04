@AbapCatalog.sqlViewAppendName: 'ZCPURCHORDTPEXT'
@EndUserText.label: 'extend Consumption view C_PurchaseOrderTP'
extend view C_PurchaseOrderTP with zC_PurchaseOrderTP_ext {
  
  @UI: {lineItem: [ {position: 25, importance: #LOW} ] }
  @UI.fieldGroup: [ { position: 45, qualifier: 'Varku'} ]       
  PurchaseOrderTP.zzvarastokunta,

  @UI: {lineItem: [ {position: 30, importance: #LOW} ] }
  @UI.fieldGroup: [ { position: 50, qualifier: 'Varku'} ]       
  PurchaseOrderTP.zzostosopimus,

 
 @UI: {lineItem: [ {position: 35, importance: #LOW} ] }
  @UI.fieldGroup: [ { position: 55, qualifier: 'Varku'} ]       
  PurchaseOrderTP.zzostosopvk
 
}
