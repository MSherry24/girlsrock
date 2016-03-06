public with sharing class VolunteerApplicationControl {
    public boolean getValidationOn() { return false; }
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
        // Page 2
        // Page 3 - All inputfields
        // Page 4 - All inputfields
        // Page 5
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
    public boolean getSaveDisabled() { return this.pageNumber != 7; }
    public void nextpage() {
        this.pageNumber++;
    }
    public void prevpage() {
        this.pageNumber--;
    }
}