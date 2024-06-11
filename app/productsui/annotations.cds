using NorthwindService as service from '../../srv/northwind-service';

annotate service.Products with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ProductID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ProductName',
            Value : ProductName,
        },
        {
            $Type : 'UI.DataField',
            Label : 'QuantityPerUnit',
            Value : QuantityPerUnit,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UnitPrice',
            Value : UnitPrice,
        },
        {
            $Type : 'UI.DataField',
            Label : 'UnitsInStock',
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
                Label : 'ProductID',
                Value : ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProductName',
                Value : ProductName,
            },
            {
                $Type : 'UI.DataField',
                Label : 'QuantityPerUnit',
                Value : QuantityPerUnit,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitPrice',
                Value : UnitPrice,
            },
            {
                $Type : 'UI.DataField',
                Label : 'UnitsInStock',
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
