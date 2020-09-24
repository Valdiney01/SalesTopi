@isTest
private class EventCategoriaPremiumHandlerTest {
	@isTest
    static void testTriggerAfter(){
        List<Account> accounts = new List<Account>();
        accounts.add (new Account (Name = 'Teste 01' , categoria__c = EventCategoriaPremiumConstants.EVENT_CATEGORY, AnnualRevenue = EventCategoriaPremiumConstants.EVENT_ANNUALREVENUE + 1) );
 
        insert accounts;
		
       	//System.assertEquals(expected, actual);
    }
}