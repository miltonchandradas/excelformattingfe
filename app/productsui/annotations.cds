using NorthwindService as service from '../../srv/northwind-service';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'Product ID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Product Name',
            Value : ProductName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Quantity Per Unit',
            Value : QuantityPerUnit,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Unit Price',
            Value : UnitPrice,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Units In Stock',
            Value : UnitsInStock,
        },
    ]
);
annotate service.Products with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'Product ID',
                Value : ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Product Name',
                Value : ProductName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Quantity Per Unit',
                Value : QuantityPerUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Unit Price',
                Value : UnitPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Units In Stock',
                Value : UnitsInStock,
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : 'General Information',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
    ]
);
