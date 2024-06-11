sap.ui.define([], function () {
  "use strict";

  return {
    readFromBackend: function (entity, mainModel) {
      return new Promise(function (resolve, reject) {
        mainModel
          .bindContext("/" + entity)
          .requestObject()
          .then((data) => resolve(data))
          .catch((err) => reject(err));
      });
    },
  };
});
