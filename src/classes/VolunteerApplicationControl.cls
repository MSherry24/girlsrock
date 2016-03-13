public with sharing class VolunteerApplicationControl {
    public boolean getValidationOn() { return true; }
    // Control Variables
    Integer pageNumber { get; set; }
    public Boolean BandCoach { get; set; }
    public Boolean InstrumentTeacher { get; set; }
    public Boolean Counsellor { get; set; }
    public Boolean WorkshopLeader { get; set; }
    public Boolean BeforeCampCare { get; set; }
    public Boolean AfterCampCare { get; set; }
    public Boolean JuniorCounsellor { get; set; }
    public Boolean RoadieFullTime { get; set; }
    public Boolean RoadiePartTime { get; set; }
    public Boolean Session1_OpenAvailability { get; set; }
    public Boolean Session1_9to5 { get; set; }
    public Boolean Session1_9to1 { get; set; }
    public Boolean Session1_1to5 { get; set; }
    public Boolean Session1_Weekend { get; set; }
    public Boolean Session1_Other { get; set; }
    public Boolean Session1_Varies { get; set; }
    public Boolean Session1_NotAvailable { get; set; }
    public Boolean Session2_OpenAvailability { get; set; }
    public Boolean Session2_9to5 { get; set; }
    public Boolean Session2_9to1 { get; set; }
    public Boolean Session2_1to5 { get; set; }
    public Boolean Session2_Weekend { get; set; }
    public Boolean Session2_Other { get; set; }
    public Boolean Session2_Varies { get; set; }
    public Boolean Session2_NotAvailable { get; set; }
    public Boolean LadiesRock_OpenAvailability { get; set; }
    public Boolean LadiesRock_FullTIme { get; set; }
    public Boolean LadiesRock_Morning { get; set; }
    public Boolean LadiesRock_Evening { get; set; }
    public Boolean LadiesRock_Sunday { get; set; }
    public Boolean LadiesRock_Other { get; set; }
    public Boolean LadiesRock_Varies { get; set; }
    public Boolean LadiesRock_NotAvailable { get; set; }
    public Boolean LoadInSession1 { get; set; }
    public Boolean LoadOutSession1 { get; set; }
    public Boolean LoadInSession2 { get; set; }
    public Boolean LoadOutSession2 { get; set; }
    public Boolean InstrumentTeacherBass { get; set; }
    public Boolean InstrumentTeacherDrums { get; set; }
    public Boolean InstrumentTeacherGuitar { get; set; }
    public Boolean InstrumentTeacherKeyboards { get; set; }
    public Boolean InstrumentTeacherDJ { get; set; }
    public Boolean No_First_Time { get; set; }
    public Boolean Yes2015Two { get; set; }
    public Boolean Yes2015One { get; set; }
    public Boolean Yes2014Two { get; set; }
    public Boolean Yes2014One { get; set; }
    public Boolean Yes2013Two { get; set; }
    public Boolean Yes2013One { get; set; }
    public Boolean Yes2012Two { get; set; }
    public Boolean Yes2012One { get; set; }
    public Boolean Yes2011Two { get; set; }
    public Boolean Yes2011One { get; set; }
    public Boolean Yes2010Two { get; set; }
    public Boolean Yes2010One { get; set; }
    public Boolean Yes2009 { get; set; }
    public Boolean Yes2008 { get; set; }
    public Boolean Yes2007 { get; set; }
    public Boolean Yes2006 { get; set; }
    public Boolean VolunteeredButNotForCamp { get; set; }
    public Boolean VolunteeredInAnotherCity { get; set; }
    public Boolean VolunteeredButNotWorkedAtCamp { get; set; }
    public String SessionOneStart { get{ return GrcUtils.SessionOneStart; } }
    public String SessionOneEnd { get{ return GrcUtils.SessionOneEnd; } }
    public String SessionTwoStart { get{ return GrcUtils.SessionTwoStart; } }
    public String SessionTwoEnd { get{ return GrcUtils.SessionTwoEnd; } }
    public String LadiesRockStart { get{ return GrcUtils.LadiesRockStart; } }
    public String LadiesRockEnd { get{ return GrcUtils.LadiesRockEnd; } }
    public String Session1LoadIn1 { get {return GrcUtils.Session1LoadIn1;} }
    public String Session1LoadIn2 { get {return GrcUtils.Session1LoadIn2;} }
    public String Session1LoadOut { get {return GrcUtils.Session1LoadOut;} }
    public String Session2LoadIn1 { get {return GrcUtils.Session2LoadIn1;} }
    public String Session2LoadIn2 { get {return GrcUtils.Session2LoadIn2;} }
    public String Session2LoadOut { get {return GrcUtils.Session2LoadOut;} }

    Volunteer_Application__c newApp { get; set; }
    Boolean validationOn = true;

    // Logic Controls
    public VolunteerApplicationControl() {
        this.newApp = new Volunteer_Application__c();
        this.pageNumber = 1;
    }
    public Volunteer_Application__c getNewApp() {
        return this.newApp;
    }
    public void save() {
        // Page 1
        // NONE
        // Page 2
        //Session 1 Availability
        newApp.Session_One_Availability__c = '';
        if (Session1_OpenAvailability) {newApp.Session_One_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        if (Session1_9to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session1_9to1) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session1_1to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session1_Weekend) {newApp.Session_One_Availability__c += 'I am available on the weekend. ';}
        if (Session1_Other) {newApp.Session_One_Availability__c += 'I have availability that extends beyond the hours listed here; please contact me to discuss additional opportunities. ';}
        if (Session1_Varies) {newApp.Session_One_Availability__c += 'My availability varies; please contact me to discuss my options. ';}
        if (Session1_NotAvailable) {newApp.Session_One_Availability__c += 'I\'m not available to volunteer. ';}
        // Session 2 Availability
        newApp.Session_Two_Availability__c = '';
        if (Session2_OpenAvailability) {newApp.Session_Two_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        if (Session2_9to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session2_9to1) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session2_1to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session2_Weekend) {newApp.Session_Two_Availability__c += 'I am available on the weekend. ';}
        if (Session2_Other) {newApp.Session_Two_Availability__c += 'I have availability that extends beyond the hours listed here; please contact me to discuss additional opportunities. ';}
        if (Session2_Varies) {newApp.Session_Two_Availability__c += 'My availability varies; please contact me to discuss my options. ';}
        if (Session2_NotAvailable) {newApp.Session_Two_Availability__c += 'I\'m not available to volunteer. ';}
        // Ladies Rock Availability
        newApp.Ladies_Rock_Availability__c = '';
        if (LadiesRock_OpenAvailability) {newApp.Ladies_Rock_Availability__c += 'I have open availability; I can help any time throughout the session. ';}
        if (LadiesRock_FullTIme) {newApp.Ladies_Rock_Availability__c += 'I am available Friday - Sunday, Insert Full Time Hours ';}
        if (LadiesRock_Morning) {newApp.Ladies_Rock_Availability__c += 'I am available Friday - Sunday, Insert Morning Hours ';}
        if (LadiesRock_Evening) {newApp.Ladies_Rock_Availability__c += 'I am available Friday - Sunday, Insert Evening Hours ';}
        if (LadiesRock_Sunday) {newApp.Ladies_Rock_Availability__c += 'I am available on Sunday (Showcase!) ';}
        if (LadiesRock_Other) {newApp.Ladies_Rock_Availability__c += 'I have availability that extends beyond the hours listed here; please contact me to discuss additional opportunities. ';}
        if (LadiesRock_Varies) {newApp.Ladies_Rock_Availability__c += 'My availability varies; please contact me to discuss my options. ';}
        if (LadiesRock_NotAvailable) {newApp.Ladies_Rock_Availability__c += 'I\'m not available to volunteer. ';}
        // Load in/Load out
        newApp.Load_In_Load_Out_Availability__c = '';
        if(LoadInSession1) {newApp.Load_In_Load_Out_Availability__c += 'Load In Session 1 - Friday, July 3rd & Sunday, July 5th; ';}
        if(LoadOutSession1) {newApp.Load_In_Load_Out_Availability__c += 'Load Out Session 1 - Saturday, July 11th; ';}
        if(LoadInSession2) {newApp.Load_In_Load_Out_Availability__c += 'Load In Session 2 - Saturday, August 1st & Sunday, August 2nd; ';}
        if(LoadOutSession2) {newApp.Load_In_Load_Out_Availability__c += 'Load Out Session 2 - Sunday, August 9th; ';}
        // Page 3
        // Positions
        newApp.positions__c = '';
        if(BandCoach) { newApp.positions__c += 'BAND COACH **musical experience required** (Monday - Friday, 2:30pm-4:30pm; showcase and recording); ';}
        if(InstrumentTeacher) { newApp.positions__c += 'INSTRUMENT TEACHER **musical experience required** (Monday - Friday, 10:30am-12:30pm); ';}
        if(Counsellor) { newApp.positions__c += 'COUNSELOR *FULL TIME* (Monday - Friday, 9am-5pm; showcase); ';}
        if(WorkshopLeader) { newApp.positions__c += 'WORKSHOP LEADER (1 hour, one day of camp); ';}
        if(BeforeCampCare) { newApp.positions__c += 'BEFORE-CAMP CARE (Monday - Friday, 7:45am-9:15am); ';}
        if(AfterCampCare) { newApp.positions__c += 'AFTER-CAMP CARE (Monday - Friday, 4:45pm-6:15pm); ';}
        if(JuniorCounsellor) { newApp.positions__c += 'JUNIOR COUNSELOR *FULL TIME* (Monday - Friday, 9am-5pm; showcase); ';}
        if(RoadieFullTime) { newApp.positions__c += 'ROADIE *FULL TIME* (Monday - Friday, 9am-5pm; showcase); ';}
        if(RoadiePartTime) { newApp.positions__c += 'ROADIE *PART TIME* (We will contact you for your availability); ';}
        // Instrument Teacher
        newApp.Instrument_Teacher_Explained__c = '';
        if(InstrumentTeacherBass) { newApp.Instrument_Teacher_Explained__c += 'Bass; ';}
        if(InstrumentTeacherDrums) { newApp.Instrument_Teacher_Explained__c += 'Drums; ';}
        if(InstrumentTeacherGuitar) { newApp.Instrument_Teacher_Explained__c += 'Guitar; ';}
        if(InstrumentTeacherKeyboards) { newApp.Instrument_Teacher_Explained__c += 'Keyboards; ';}
        if(InstrumentTeacherDJ) { newApp.Instrument_Teacher_Explained__c += 'Turntables/DJ; ';}
        // Page 4
        // NONE
        // Page 5
        // Volunteered Before
        newApp.Volunteered_Before__c = '';
        if(No_First_Time) {newApp.Volunteered_Before__c += 'Nope! This is my first time. ';}
        if(Yes2015Two) {newApp.Volunteered_Before__c += 'Yes, 2015 Session Two. ';}
        if(Yes2015One) {newApp.Volunteered_Before__c += 'Yes, 2015 Session One. ';}
        if(Yes2014Two) {newApp.Volunteered_Before__c += 'Yes, 2014 Session Two. ';}
        if(Yes2014One) {newApp.Volunteered_Before__c += 'Yes, 2014 Session One. ';}
        if(Yes2013Two) {newApp.Volunteered_Before__c += 'Yes, 2013 Session Two. ';}
        if(Yes2013One) {newApp.Volunteered_Before__c += 'Yes, 2013 Session One. ';}
        if(Yes2012Two) {newApp.Volunteered_Before__c += 'Yes, 2012 Session Two. ';}
        if(Yes2012One) {newApp.Volunteered_Before__c += 'Yes, 2012 Session One. ';}
        if(Yes2011Two) {newApp.Volunteered_Before__c += 'Yes, 2011 Session Two. ';}
        if(Yes2011One) {newApp.Volunteered_Before__c += 'Yes, 2011 Session One. ';}
        if(Yes2010Two) {newApp.Volunteered_Before__c += 'Yes, 2010 Session Two. ';}
        if(Yes2010One) {newApp.Volunteered_Before__c += 'Yes, 2010 Session One. ';}
        if(Yes2009) {newApp.Volunteered_Before__c += 'Yes, in 2009. ';}
        if(Yes2008) {newApp.Volunteered_Before__c += 'Yes, in 2008. ';}
        if(Yes2007) {newApp.Volunteered_Before__c += 'Yes, in 2007. ';}
        if(Yes2006) {newApp.Volunteered_Before__c += 'Yes, in 2006 ';}
        if(VolunteeredButNotForCamp) {newApp.Volunteered_Before__c += 'I have volunteered for Ladies Rock! Camp or interned for Girls Rock! Chicago before, but I have not worked at camp. ';}
        if(VolunteeredInAnotherCity) {newApp.Volunteered_Before__c += 'I have volunteered for rock camp in another city. ';}
        if(VolunteeredButNotWorkedAtCamp) {newApp.Volunteered_Before__c += 'I have volunteered or interned for Girls Rock! Chicago before, but I have not worked at camp. ';}
                // Page 6
        // Page 7
        upsert newApp;
        this.pageNumber++;
//            sendConfirmationEmail(newApp.id);
    }

    // UI Controls
    public boolean getrenderPage1() { return this.pageNumber == 1; }
    public boolean getrenderPage2() { return this.pageNumber == 2; }
    public boolean getrenderPage3() { return this.pageNumber == 3; }
    public boolean getrenderPage4() { return this.pageNumber == 4; }
    public boolean getrenderPage5() { return this.pageNumber == 5; }
    public boolean getrenderPage6() { return this.pageNumber == 6; }
    public boolean getrenderPage7() { return this.pageNumber == 7; }
    public boolean getrenderPage8() { return this.pageNumber == 8; }
    public boolean getSaveDisabled() { return this.pageNumber != 7; }
    public void nextpage() {
        this.pageNumber++;
    }
    public void prevpage() {
        this.pageNumber--;
    }
}