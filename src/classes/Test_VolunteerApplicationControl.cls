@isTest
public with sharing class Test_VolunteerApplicationControl {

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
    static void test_getrenderPage8()
    {
        Test.startTest();
        VolunteerApplicationControl vac = new VolunteerApplicationControl();
        vac.getrenderPage8();
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
        Boolean validationOn = vac.getValidationOn();
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
        vac.LadiesRock_FullTIme = true;
        vac.LadiesRock_Morning = true;
        vac.LadiesRock_Evening = true;
        vac.LadiesRock_Sunday = true;
        vac.LadiesRock_Other = true;
        vac.LadiesRock_Varies = true;
        vac.LadiesRock_NotAvailable = true;
        vac.LoadInSession1 = true;
        vac.LoadOutSession1 = true;
        vac.LoadInSession2 = true;
        vac.LoadOutSession2 = true;
        vac.InstrumentTeacherBass = true;
        vac.InstrumentTeacherDrums = true;
        vac.InstrumentTeacherGuitar = true;
        vac.InstrumentTeacherKeyboards = true;
        vac.InstrumentTeacherDJ = true;
        vac.No_First_Time = true;
        vac.Yes2015Two = true;
        vac.Yes2015One = true;
        vac.Yes2014Two = true;
        vac.Yes2014One = true;
        vac.Yes2013Two = true;
        vac.Yes2013One = true;
        vac.Yes2012Two = true;
        vac.Yes2012One = true;
        vac.Yes2011Two = true;
        vac.Yes2011One = true;
        vac.Yes2010Two = true;
        vac.Yes2010One = true;
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