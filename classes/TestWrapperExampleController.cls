// 
// TestWrapperExampleController()
//
@isTest
private class TestWrapperExampleController {
    public static testMethod void testController() {
        // create an account so that there is at least one available
        Account acc1=new Account(Name='Unit Test 1', 
                                 BillingStreet='Unit Test Street',
                                 BillingCity='Unit Testville',
                                 BillingPostalCode='UTEST1 1UT');
        insert acc1;
        
        // instantiate the controller
        WrapperExampleController ctrl=new WrapperExampleController();
        
        // check that there is at least one account
        Integer accSize=ctrl.getAccounts().size();
        System.assert(accSize>=1);
    }
}