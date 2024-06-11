sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/sap/productsui/test/integration/FirstJourney',
		'com/sap/productsui/test/integration/pages/ProductsList',
		'com/sap/productsui/test/integration/pages/ProductsObjectPage'
    ],
    function(JourneyRunner, opaJourney, ProductsList, ProductsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/sap/productsui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheProductsList: ProductsList,
					onTheProductsObjectPage: ProductsObjectPage
                }
            },
            opaJourney.run
        );
    }
);