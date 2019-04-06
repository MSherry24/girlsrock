@isTest
public with sharing class Test_GrcUtils {

    @isTest
    static void test_Dates()
    {
        Important_Dates__c dates = new Important_Dates__c (
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
            Session_Two_Load_Out__c = Date.Today(),
            Ladies_Rock_Load_In_1__c = Date.Today(),
            Ladies_Rock_Load_In_2__c = Date.Today(),
            Jam_Day_Of_The_Week__c = Date.Today().format(),
            Jam_Start_Time__c = Date.Today().format(),
            Jam_End_Time__c = Date.Today(),
            Jam_Start_Date__c = Date.Today(),
            Jam_End_Date__c = Date.Today().format(),
            Jam_Volunteer_Start_Time_1__c = Date.Today().format(),
            Jam_Volunteer_Start_Time_2__c = Date.Today().format(),
            Jam_Volunteer_Start_Time_3__c = Date.Today().format(),
            Jam_Volunteer_End_Time_1__c = Date.Today().format(),
            Jam_Volunteer_End_Time_2__c = Date.Today().format(),
            Jam_Volunteer_End_Time_3__c = Date.Today(.format())
        );
        insert dates;

        Test.startTest();
            String SessionOneStart = GrcUtils.SessionOneStart;
            String SessionOneEnd = GrcUtils.SessionOneEnd;
            String SessionTwoStart = GrcUtils.SessionTwoStart;
            String SessionTwoEnd = GrcUtils.SessionTwoEnd;
            String LadiesRockStart = GrcUtils.LadiesRockStart;
            String LadiesRockEnd = GrcUtils.LadiesRockEnd;
            String Session1LoadIn1 = GrcUtils.Session1LoadIn1;
            String Session1LoadIn2 = GrcUtils.Session1LoadIn2;
            String Session1LoadOut = GrcUtils.Session1LoadOut;
            String Session2LoadIn1 = GrcUtils.Session2LoadIn1;
            String Session2LoadIn2 = GrcUtils.Session2LoadIn2;
            String Session2LoadOut = GrcUtils.Session2LoadOut;
            String LadiesRockLoadIn1 = GrcUtils.LadiesRockLoadIn1;
            String LadiesRockLoadIn2 = GrcUtils.LadiesRockLoadIn2;
            String SessionOneStartVerbose = GrcUtils.SessionOneStartVerbose;
            String SessionOneEndVerbose = GrcUtils.SessionOneEndVerbose;
            String SessionTwoStartVerbose = GrcUtils.SessionTwoStartVerbose;
            String SessionTwoEndVerbose = GrcUtils.SessionTwoEndVerbose;
            String JamDayOfTheWeek = GrcUtils.JamDayOfTheWeek;
            String JamStartTime = GrcUtils.JamStartTime;
            String JamEndTime = GrcUtils.JamEndTime;
            String JamStartDate = GrcUtils.JamStartDate;
            String JamEndDate = GrcUtils.JamEndDate;
            String JamVolunteerStartTime1 = GrcUtils.JamVolunteerStartTime1;
            String JamVolunteerStartTime2 = GrcUtils.JamVolunteerStartTime2;
            String JamVolunteerStartTime3 = GrcUtils.JamVolunteerStartTime3;
            String JamVolunteerEndTime1 = GrcUtils.JamVolunteerEndTime1;
            String JamVolunteerEndTime2 = GrcUtils.JamVolunteerEndTime2;
            String JamVolunteerEndTime3 = GrcUtils.JamVolunteerEndTime3;
        Test.stopTest();

        System.AssertNotEquals(null,SessionOneStart);
        System.AssertNotEquals(null,SessionOneEnd);
        System.AssertNotEquals(null,SessionTwoStart);
        System.AssertNotEquals(null,SessionTwoEnd);
        System.AssertNotEquals(null,LadiesRockStart);
        System.AssertNotEquals(null,LadiesRockEnd);
        System.AssertNotEquals(null,Session1LoadIn1);
        System.AssertNotEquals(null,Session1LoadIn2);
        System.AssertNotEquals(null,Session1LoadOut);
        System.AssertNotEquals(null,Session2LoadIn1);
        System.AssertNotEquals(null,Session2LoadIn2);
        System.AssertNotEquals(null,Session2LoadOut);
        System.AssertNotEquals(null,LadiesRockLoadIn1);
        System.AssertNotEquals(null,LadiesRockLoadIn2);
        System.AssertNotEquals(null,SessionOneStartVerbose);
        System.AssertNotEquals(null,SessionOneEndVerbose);
        System.AssertNotEquals(null,SessionTwoStartVerbose);
        System.AssertNotEquals(null,SessionTwoEndVerbose);
        System.AssertNotEquals(null,JamDayOfTheWeek);
        System.AssertNotEquals(null,JamStartTime);
        System.AssertNotEquals(null,JamEndTime);
        System.AssertNotEquals(null,JamStartDate);
        System.AssertNotEquals(null,JamEndDate);
        System.AssertNotEquals(null,JamVolunteerStartTime1);
        System.AssertNotEquals(null,JamVolunteerStartTime2);
        System.AssertNotEquals(null,JamVolunteerStartTime3);
        System.AssertNotEquals(null,JamVolunteerEndTime1);
        System.AssertNotEquals(null,JamVolunteerEndTime2);
        System.AssertNotEquals(null,JamVolunteerEndTime3);
    }
}