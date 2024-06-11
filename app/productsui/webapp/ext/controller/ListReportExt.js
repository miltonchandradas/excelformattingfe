sap.ui.define([
  "sap/m/MessageToast", "com/sap/productsui/utils/excelUtils"
], function(MessageToast, excelUtils) {
  'use strict';

  return {
      onExcelDownload: async function(oEvent) {
        let controller = this._controller;
        controller._mainModel = controller.getModel();

        // Remove any existing DOM artifacts...
        let domHyperlink = document.getElementById("domHyperlink");
        if (domHyperlink) domHyperlink.remove();

        // Set busy indicator to true
        controller.getView().setBusy(true);

        // Create DOM table
        // Populate and format DOM table with data
        let table = await excelUtils.createDOMTable(controller);
        
        // Write DOM table to Excel
        excelUtils.writeToExcel(table, "northwind")

        // Set busy indicator to false
        controller.getView().setBusy(false);
      }
  };
});
