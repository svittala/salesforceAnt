@isTest
private class CPQLineItemsMotiveControllerTest
{
	static CPQLineItemsTestDataFactory testData;

	static void setup() {
		testData = new CPQLineItemsTestDataFactory();

	}

	@isTest
	static void testController()
	{
		setup();
		testData.setupScenario1();

		Test.startTest();	

		CPQLineItemsMotiveController c = new CPQLineItemsMotiveController(testData.quotes.values()[0].Id);

		Test.stopTest();

		CPQLineItemsMotiveController.DisplayGroup truck = c.displayGroups[1];
		CPQLineItemsMotiveController.SortedGroup truckSortedGroup = c.displayGroups[1].groups[0];

		Integer expected0=3;
		Integer expected1=1;
		Integer expected2=2;
		Integer expected3=2;
		Integer expected4=4;
		Integer expected5=4;
		Integer expected6=1;

		System.assert(c.displayGroups.size()==expected0, 'The quote preview did not show the correct number displayGroups');
		System.assert(truck.getShowTruckInfo().size()==expected1, 'The second group was not a Truck');
		System.assert(!String.isBlank(truck.getCleanTruckDimensions()), 'The Truck did not have dimensions');
		System.assert(!String.isBlank(truck.getCleanVoltTerm()), 'The Truck did not have Volt/Term');
		Utils.logContents('truckSortedGroup.batteries', String.valueOf(truckSortedGroup.batteries));
		System.debug(LoggingLevel.INFO, '*** truckSortedGroup.batteries.size(): ' + truckSortedGroup.batteries.size());
		System.debug(LoggingLevel.INFO, '*** truckSortedGroup.batteriesNoSpecs.size(): ' + truckSortedGroup.batteriesNoSpecs.size());
		System.debug(LoggingLevel.INFO, '*** truckSortedGroup.chargers.size(): ' + truckSortedGroup.chargers.size());
		System.debug(LoggingLevel.INFO, '*** truckSortedGroup.chargersNoSpecs.size(): ' + truckSortedGroup.chargersNoSpecs.size());
		System.assert(truckSortedGroup.batteries.size()==expected2, 'The Truck group did not show the correct number of Batteries with specs');
		System.assert(truckSortedGroup.batteriesNoSpecs.size()==expected3, 'The Truck group did not show the correct number of Batteries with No Specs');
		System.assert(truckSortedGroup.chargers.size()==expected4, 'The Truck group did not show the correct number of Chargers with specs');
		System.assert(truckSortedGroup.chargersNoSpecs.size()==expected5, 'The Truck group did not show the correct number of Chargers with No Specs');
		System.assert(truckSortedGroup.getShowOtherHeading().size()==expected6, 'The Truck group did not show the Other heading');

	}

	// Scenarios for generic battery header

	// 1 - Quote Line has Product Category of Battery, but no nightly sync of tech specs (Battery Type not filled on Product)
	// 2 - Quote Line has Product Category of Battery, and more than 1 tech spec option, no specific option selected (Battery Type filled on Product w/ slashes, QL Battery Type Selected not filled)

	// Scenarios for generic charger header

	// 3 - Quote Line has Product Category of Charger, but no nightly sync of tech specs (VAC Options or Voltage Options not filled on Product)
	// 4 - Quote Line has Product Category of Charger, and more than 1 tech spec option, no specific option selected (VAC Options and Voltage options filled on Product w/ slashes, QL VAC Selected or Voltage Selected not filled)

	// Scenarios for battery tech spec header

	// 5 - Quote Line has Product Category of Battery, and 1 tech spec option loaded (Battery Type filled on Product, no slashes)
	// 6 - Quote Line has Product Category of Battery, and more than 1 tech spec option, 1 specific option selected in OEMSpec (Battery Type filled on Product w/ slashes, QL Battery Type Selected also filled)

	// Scenarios for battery tech spec header

	// 7 - Quote Line has Product Category of Charger, and 1 tech spec option loaded (VAC Options and Voltage options filled on Product, no slashes)
	// 8 - Quote Line has Product Category of Charger, and more than 1 tech spec option, 1 specific option selected in OEMSpec (VAC Options and Voltage options filled on Product w/ slashes, QL VAC Selected and Voltage Selected also filled)
}