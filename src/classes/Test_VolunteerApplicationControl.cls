@isTest
public with sharing class Test_VolunteerApplicationControl {

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
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        Test.stopTest();
    }

    @isTest
    static void test_getNewApp()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        Volunteer_Application__c newApp = vac.getNewApp();
        Test.stopTest();
    }

    @isTest
    static void test_getrenderPage1()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage1();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage2()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage2();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage3()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage3();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage4()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage4();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage5()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage5();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage6()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage6();
        Test.stopTest();
    }
    @isTest
    static void test_getrenderPage7()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage7();
        Test.stopTest();
    }
    @isTest
    static void test_getSaveDisabled()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getSaveDisabled();
        Test.stopTest();
    }
    @isTest
    static void test_nextPage()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.nextpage();
        Test.stopTest();
    }
    @isTest
    static void test_prevpage()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.prevpage();
        Test.stopTest();
    }
    @isTest
    static void test_getValidationOn()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        Boolean validationOn = vac.validationOn;
        Test.stopTest();
        system.assert(validationOn);
    }

    @isTest
    static void test_save()
    {
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.BandCoach = true;
        vac.InstrumentTeacher = true;
        vac.Counsellor = true;
        vac.WorkshopLeader = true;
        vac.BeforeCampCare = true;
        vac.AfterCampCare = true;
        vac.JuniorCounsellor = true;
        vac.RoadieFullTime = true;
        vac.RoadiePartTime = true;
        vac.Session1_OpenAvailability = true;
        vac.Session1_9to5 = true;
        vac.Session1_9to1 = true;
        vac.Session1_1to5 = true;
        vac.Session1_Weekend = true;
        vac.Session1_Other = true;
        vac.Session1_Varies = true;
        vac.Session1_NotAvailable = true;
        vac.Session2_OpenAvailability = true;
        vac.Session2_9to5 = true;
        vac.Session2_9to1 = true;
        vac.Session2_1to5 = true;
        vac.Session2_Weekend = true;
        vac.Session2_Other = true;
        vac.Session2_Varies = true;
        vac.Session2_NotAvailable = true;
        vac.LadiesRock_OpenAvailability = true;
        vac.LadiesRock_FridayMorning = true;
        vac.LadiesRock_WeekendMorning = true;
        vac.LadiesRock_WeekendEvening = true;
        vac.LadiesRock_MondayEvening = true;
        vac.LadiesRock_Other = true;
        vac.LadiesRock_NotAvailable = true;
        vac.LoadInLadiesRock = true;
        vac.LoadInSession1 = true;
        vac.LoadInSession2 = true;
        vac.LoadOutSession2 = true;
        vac.LoadOutOther = true;
        vac.ShredShop_Saturday1 = true;
        vac.ShredShop_Sunday1 = true;
        vac.ShredShop_Saturday2 = true;
        vac.ShredShop_Sunday2 = true;
        vac.ShredShop_Other = true;
        vac.ShredShop_NotAvailable = true;
        vac.JAMusicClub_Tuesday330_5 = true;
        vac.JAMusicClub_Tuesday430_6 = true;
        vac.JAMusicClub_Tuesday330_6 = true;
        vac.JAMusicClub_Other = true;
        vac.JAMusicClub_NotAvailable = true;
        vac.InstrumentTeacherBass = true;
        vac.InstrumentTeacherDrums = true;
        vac.InstrumentTeacherGuitar = true;
        vac.InstrumentTeacherKeyboards = true;
        vac.InstrumentTeacherDJ = true;
        vac.No_First_Time = true;
        vac.Yes2016 = true;
        vac.Yes2015 = true;
        vac.Yes2014 = true;
        vac.Yes2013 = true;
        vac.Yes2012 = true;
        vac.Yes2011 = true;
        vac.Yes2010 = true;
        vac.Yes2009 = true;
        vac.Yes2008 = true;
        vac.Yes2007 = true;
        vac.Yes2006 = true;
        vac.VolunteeredButNotForCamp = true;
        vac.VolunteeredInAnotherCity = true;
        vac.VolunteeredButNotWorkedAtCamp = true;
        vac.newApp.grcapp__First_Name__c = 'test';
        vac.newApp.grcapp__Last_Name__c = 'test';
        vac.newApp.grcapp__Date_of_Birth__c = Date.Today();
        vac.newApp.grcapp__Email_Address__c = 'test@a.c';
        vac.newApp.grcapp__Phone_Number__c = '1234567890';
        vac.newApp.grcapp__City__c = 'test';
        vac.newApp.grcapp__State__c = 'IL';
        Test.startTest();
        vac.save();
        Test.stopTest();
        List<Volunteer_Application__c> app = [SELECT Id FROM Volunteer_Application__c];
        system.assertEquals(1, app.size());
    }
}