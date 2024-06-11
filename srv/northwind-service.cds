using {northwind} from './external/northwind';

@path: 'service/northwind'
service RestaurantService {
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