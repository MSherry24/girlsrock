@isTest 
public class test_CamperApplicationControl {
    @testSetup
    static void testSetup() {
        Camp_Dates__c dates = new Camp_Dates__c (
                Session_One_Start__c = Date.Today(),
                Session_One_End__c = Date.Today(),
                Session_Two_Start__c = Date.Today(),
                Session_Two_End__c = Date.Today(),
                Ladies_Rock_Start__c = Date.Today(),
                Ladies_Rock_End__c = Date.Today(),
                Session_One_Load_In_1__c = Date.Today(),
                Session_One_Load_In_2__c = Date.Today(),
                Session_One_Load_Out__c = Date.Today(),
                Session_Two_Load_In_1__c = Date.Today(),
                Session_Two_Load_In_2__c = Date.Today(),
                Session_Two_Load_Out__c = Date.Today()
        );
        insert dates;
    }

    @isTest
    static void test_constructor() 
    {
     	Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        Test.stopTest();
    }

	@isTest    
    static void test_getNewApp()
    {
     	Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        Camper_Application__c ca = cac.getNewApp();
        Test.stopTest();
    }
    
    @isTest
	static void test_save()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.save();
        Test.stopTest();
    }
    
    @isTest
	static void test_attendedBefore()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.attendedBefore();
        Test.stopTest();
    }
    
    @isTest
	static void test_getSessionOptions()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getSessionOptions();
        Test.stopTest();
    }
    
    @isTest
	static void test_getYesNoOptions()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getYesNoOptions();
        Test.stopTest();
    }
    
    @isTest
	static void test_getrenderPage1()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage1();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage2()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage2();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage3()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage3();
        Test.stopTest();
    }
   
    
    @isTest
    static void test_getrenderPage4()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage4();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage5()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage5();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage6()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage6();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage7()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage7();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage8()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage8();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage9()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage9();
        Test.stopTest();
    }
    
    @isTest
    static void test_getrenderPage10()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getrenderPage10();
        Test.stopTest();
    }
    
     @isTest
    static void test_nextpage()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.nextpage();
        Test.stopTest();
    }
    @isTest
    static void test_prevpage()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.prevpage();
        Test.stopTest();
    }
     @isTest
    static void test_getRightOrLeftHandedOptions()
    {
        Test.startTest();
        CamperApplicationControl cac = new CamperApplicationControl();
        cac.getRightOrLeftHandedOptions();
        Test.stopTest();
    }
}