using {northwind} from './external/northwind';

@path: 'service/northwind'
service NorthwindService {
    @readonly
    entity Products   as
        projection on northwind.Products {
            ProductID,
            ProductName,
            QuantityPerUnit,
            UnitPrice,
            UnitsInStock
        };
}