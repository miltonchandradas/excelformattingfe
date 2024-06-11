const cds = require("@sap/cds");

module.exports = async (srv) => {
  const { Products } = srv.entities;
  // connect to SuccessFactors
  const Northwind_Service = await cds.connect.to("northwind");

  srv.on("READ", Products, async (req) => {
    try {
      return await Northwind_Service.send({ query: req.query });
    } catch (err) {
      req.reject(err);
    }
  });
};
