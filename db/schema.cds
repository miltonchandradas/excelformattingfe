// using an external service from Northwind
using {northwind} from '../srv/external/northwind.csn';

entity Products as
    projection on northwind.Products {
        key ProductID,
            ProductName,
            QuantityPerUnit,
            UnitPrice,
            UnitsInStock
    }
