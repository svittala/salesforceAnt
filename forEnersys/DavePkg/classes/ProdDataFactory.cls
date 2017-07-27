public with sharing class ProdDataFactory {

	private List<String> productsMP;
	private List<String> productsRP;
	private List<String> productsMPRP;
	private List<String> productsSpecial;

	public ProdDataFactory() {
		productsSpecial = new List<String>{};
		productsMP = new List<String>{};
		productsRP = new List<String>{};
		productsMPRP = new List<String>{};

	}

	public void markItemsEditable() {
		fillproductsSpecial();
		fillProductsMP();
		fillProductsRP();
		fillProductsMPRP();
		Set<String> productsAll = new Set<String>{};
		Set<String> productFound = new Set<String>{};
		productsAll.addAll(productsSpecial);
		productsAll.addAll(productsRP);
		productsAll.addAll(productsMP);
		productsAll.addAll(productsMPRP);
		List<Product2> products = [Select Id, Name, SBQQ__PriceEditable__c From Product2 Where Name IN: productsAll];
		List<Product2> productsToUpdate = new List<Product2>{};
		for (Product2 p : products) {
			productFound.add(p.Name);
			if (p.SBQQ__PriceEditable__c!=true) {
				productsToUpdate.add(new Product2(Id=p.Id, SBQQ__PriceEditable__c=true));

			}
		}

		update productsToUpdate;

		for (String s : productsAll) {
			if (!productFound.contains(s)){
				System.debug('*** Product Not Found: ' + s);
				
			}
		}
	}

	private void fillproductsSpecial() {
		productsSpecial.add('99999EB');
		productsSpecial.add('99999GBM');

	}


	private void fillProductsMP() {

		productsMP.add('DH WASH MP');
		productsMP.add('DH WATERING MP');
		productsMP.add('EZS-180');
		productsMP.add('EZS-192');
		productsMP.add('EZS-192RNW');
		productsMP.add('EZS-213');
		productsMP.add('EZS-213RNW');
		productsMP.add('EZS-214');
		productsMP.add('EZS-214RNW');
		productsMP.add('EZS-215');
		productsMP.add('EZS-215RNW');
		productsMP.add('EZS-216');
		productsMP.add('EZS-216RNW');
		productsMP.add('EZS-235');
		productsMP.add('EZS-2601RNW');
		productsMP.add('EZS-BTRTRKRSVC1');
		productsMP.add('EZS-BTRTRKRSVC1R');
		productsMP.add('EZS-NDP1');
		productsMP.add('EZS-NDP1CAN');
		productsMP.add('EZS-NDP1MEX');
		productsMP.add('EZS-NDP2');
		productsMP.add('EZS-NDP2CAN');
		productsMP.add('EZS-NDP2MEX');
		productsMP.add('EZS-NDP3');
		productsMP.add('EZS-NDP3CAN');
		productsMP.add('EZS-NDP3MEX');
		productsMP.add('EZS-NDP4');
		productsMP.add('EZS-NDP4CAN');
		productsMP.add('EZS-NDP4MEX');
		productsMP.add('EZS-NDP5');
		productsMP.add('EZS-NDP5CAN');
		productsMP.add('EZS-NDP5MEX');
		productsMP.add('EZS-REPAIR');
		productsMP.add('EZS2051');
		productsMP.add('EZS2052');
		productsMP.add('EZS2053');
		productsMP.add('EZS2054');
		productsMP.add('EZS2055');
		productsMP.add('EZS2057');
		productsMP.add('EZS2058');
		productsMP.add('EZS205824');
		productsMP.add('EZS205836');
		productsMP.add('EZS205848');
		productsMP.add('EZS205860');
		productsMP.add('EZS2059');
		productsMP.add('EZS205924');
		productsMP.add('EZS205936');
		productsMP.add('EZS205948');
		productsMP.add('EZS205960');
		productsMP.add('EZSDEMOSVC');
		productsMP.add('INSTALLEXTRACTOR');
		productsMP.add('INSTALL - MPS');
		productsMP.add('IQ REPORT');
		productsMP.add('MPFC-TWIN-INS');
		productsMP.add('MPFC-UNI-INS');
		productsMP.add('MPMNDP1-A');
		productsMP.add('MPMNDP1-V');
		productsMP.add('MPOC INSTALL');
		productsMP.add('PRODUCT BUYBACK');
		productsMP.add('RDSDEMOSVC');
		productsMP.add('RENTAL');
		productsMP.add('RPT-SBCIQ-MPM-A');
		productsMP.add('RPT-SBCIQ-MPM-M');
		productsMP.add('RPT-SBCIQ-MPM-Q');
		productsMP.add('RPT-SBCIQ-MPM-W');
		productsMP.add('RPT-SBCIQ-MPME-W');
		productsMP.add('RPT-SBCIQ-WQ-A');
		productsMP.add('RPT-SBCIQ-WQ-M');
		productsMP.add('RPT-SBCIQ-WQ-Q');
		productsMP.add('RPT-SBCIQ-WQ-W');
		productsMP.add('RPT-SBCIQ-WQE-W');
		productsMP.add('RPT-SBOIQ-MPM-A');
		productsMP.add('RPT-SBOIQ-MPM-M');
		productsMP.add('RPT-SBOIQ-MPM-Q');
		productsMP.add('RPT-SBOIQ-MPM-W');
		productsMP.add('RPT-SBOIQ-MPME-W');
		productsMP.add('RPT-SBOIQ-WQ-A');
		productsMP.add('RPT-SBOIQ-WQ-M');
		productsMP.add('RPT-SBOIQ-WQ-Q');
		productsMP.add('RPT-SBOIQ-WQ-W');
		productsMP.add('RPT-SBOIQ-WQE-W');
		productsMP.add('RPT-ZBCIQ-MPM-A');
		productsMP.add('RPT-ZBCIQ-MPM-M');
		productsMP.add('RPT-ZBCIQ-MPM-Q');
		productsMP.add('RPT-ZBCIQ-MPM-W');
		productsMP.add('RPT-ZBCIQ-MPME-W');
		productsMP.add('RPT-ZBCIQ-WQ-A');
		productsMP.add('RPT-ZBCIQ-WQ-M');
		productsMP.add('RPT-ZBCIQ-WQ-Q');
		productsMP.add('RPT-ZBCIQ-WQ-W');
		productsMP.add('RPT-ZBCIQ-WQE-W');
		productsMP.add('XINX-DATA 1 YEAR');
		productsMP.add('XINX-DATA 2 YEAR');
		productsMP.add('XINX-DATA 3 YEAR');
		productsMP.add('XINX-DATA 4 YEAR');
		productsMP.add('XINX-DATA 5 YEAR');
		productsMP.add('XINX-REPORT1YEAR');
		productsMP.add('XINX-REPORT2YEAR');
		productsMP.add('XINX-REPORT3YEAR');
		productsMP.add('XINX-REPORT4YEAR');
		productsMP.add('XINX-REPORT5YEAR');

	}

	private void fillProductsRP() {

		productsRP.add('FREIGHT/HANDLING');
		productsRP.add('FRT QUOTE REQ');
		productsRP.add('BONDING ISS');
		productsRP.add('CABINET REQUIRED');
		productsRP.add('CHARGER REQUIRED');
		productsRP.add('DCD 1HR');
		productsRP.add('DCD 3HR');
		productsRP.add('DCD 8HR');
		productsRP.add('DRAWING');
		productsRP.add('DRAWING REQUIRED');
		productsRP.add('EXTENDEDWARRANTY');
		productsRP.add('HXLEADADJ');
		productsRP.add('INSTALLATION-NH');
		productsRP.add('KIT REQUIRED');
		productsRP.add('LAB R&D');
		productsRP.add('LAB TESTING');
		productsRP.add('LAYOUT REQUIRED');
		productsRP.add('NEWKIT');
		productsRP.add('NEWPART');
		productsRP.add('NPLEADADJ');
		productsRP.add('ORDER HANDLING');
		productsRP.add('PROCESSING FEE');
		productsRP.add('RACK REQUIRED');
		productsRP.add('STORAGE');
		productsRP.add('SWGR 1HR 1.75V');
		productsRP.add('SWGR 3HR 1.75V');
		productsRP.add('SWGR 8HR 1.75V');
		productsRP.add('TELCOM 72HR STD');
		productsRP.add('TELCOM 8HR 1.75V');
		productsRP.add('TELCOM 96HR SPEC');
		productsRP.add('TOPCHARGE');
		productsRP.add('UPS 15MIN 1.67V');
		productsRP.add('UPS 15MIN 1.75V');
		productsRP.add('UPS 48HR CV');
		productsRP.add('UPS 72HR CC');
		productsRP.add('VERIZONTRANSPORT');
		productsRP.add('CERTIFICATION');
		productsRP.add('DEINSTALLATION');
		productsRP.add('ENGINEERING');
		productsRP.add('ENGINEERING PWR');
		productsRP.add('HAUL-HOIST');
		productsRP.add('INSIDE DELIVERY');
		productsRP.add('INSTALL PWR');
		productsRP.add('INSTALL PWR MTL');
		productsRP.add('INSTALLATION');
		productsRP.add('INSTALL PWR');
		productsRP.add('INSTALL PWR MTL');
		productsRP.add('INSTALL START UP');
		productsRP.add('INSTALL PSMCM');
		productsRP.add('INSTALLATION');
		productsRP.add('INSTALLATION MP');
		productsRP.add('INSTALLATION MTL');
		productsRP.add('INSURANCE CERT');
		productsRP.add('INTEGRATED TEST');
		productsRP.add('LABOR HOURS');
		productsRP.add('LOAD TEST');
		productsRP.add('REMOVAL');
		productsRP.add('REMOVAL PWR');
		productsRP.add('RENT EQUIPMENT');
		productsRP.add('SCRAP PICKUP');
		productsRP.add('STORAGE ISS');
		productsRP.add('TRAINING');

	}

	private void fillProductsMPRP() {

		productsMPRP.add('ENERGY SURCHARGE');
		productsMPRP.add('EXPORT PACK');
		productsMPRP.add('FREIGHT');
		productsMPRP.add('HANDLING FEE');
		productsMPRP.add('MISC');
		productsMPRP.add('RESTOCKING FEE');
		productsMPRP.add('SCRAP CREDIT PB');
		productsMPRP.add('LABOR');
		productsMPRP.add('TRANSPORTATION');
		productsMPRP.add('TRAVEL');

		productsMPRP.add('CERTIFICATION');
		productsMPRP.add('COMMISSIONING');
		productsMPRP.add('DEINSTALLATION');
		productsMPRP.add('ENGINEERING');
		productsMPRP.add('ENGINEERING PWR');
		productsMPRP.add('HAUL-HOIST');
		productsMPRP.add('INSIDE DELIVERY');
		productsMPRP.add('INSTALL PWR');
		productsMPRP.add('INSTALL PWR MTL');
		productsMPRP.add('INSTALLATION');
		productsMPRP.add('INSTALLATION MTL');
		productsMPRP.add('INSURANCE CERT');
		productsMPRP.add('INTEGRATED TEST');
		productsMPRP.add('LABOR');
		productsMPRP.add('LABOR HOURS');
		productsMPRP.add('LOAD TEST');
		productsMPRP.add('REMOVAL');
		productsMPRP.add('REMOVAL PWR');
		productsMPRP.add('RENT EQUIPMENT');
		productsMPRP.add('SCRAP PICKUP');
		productsMPRP.add('STORAGE ISS');
		productsMPRP.add('TRAINING');
		productsMPRP.add('TRANSPORTATION');
		productsMPRP.add('TRAVEL');

	}
}