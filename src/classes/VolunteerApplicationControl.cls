global class VolunteerApplicationControl {
    // Control Variables
    Integer pageNumber { get; set; }
    public Boolean BandCoach { get; set; }
    public Boolean InstrumentTeacher { get; set; }
    public Boolean CounsellorA { get; set; }
    public Boolean CounsellorB { get; set; }
    public Boolean WorkshopLeader { get; set; }
    public Boolean BeforeCampCare { get; set; }
    public Boolean AfterCampCare { get; set; }
    public Boolean JuniorCounsellor { get; set; }
    public Boolean RoadieA { get; set; }
    public Boolean RoadieB { get; set; }
    public Boolean FrontDeskPartTime { get; set; }
    public Boolean CoolDownCrewA { get; set; }
    public Boolean CoolDownCrewB { get; set; }
    public Boolean Session1_OpenAvailability { get; set; }
    public Boolean Session1_8to9 { get; set; }
    public Boolean Session1_9to5 { get; set; }
    public Boolean Session1_9to1 { get; set; }
    public Boolean Session1_1to5 { get; set; }
    public Boolean Session1_5to6 { get; set; }
    public Boolean Session1_Weekend { get; set; }
    public Boolean Session1_Other { get; set; }
    public Boolean Session1_Varies { get; set; }
    public Boolean Session1_NotAvailable { get; set; }
    public Boolean Session2_OpenAvailability { get; set; }
    public Boolean Session2_8to9 { get; set; }
    public Boolean Session2_9to5 { get; set; }
    public Boolean Session2_9to1 { get; set; }
    public Boolean Session2_1to5 { get; set; }
    public Boolean Session2_5to6 { get; set; }
    public Boolean Session2_Weekend { get; set; }
    public Boolean Session2_Other { get; set; }
    public Boolean Session2_Varies { get; set; }
    public Boolean Session2_NotAvailable { get; set; }
    public Boolean LadiesRock_OpenAvailability { get; set; }
    public Boolean LetsRock_Friday { get; set; }
    public Boolean LetsRock_Saturday9am { get; set; }
    public Boolean LetsRock_Saturday1pm { get; set; }
    public Boolean LetsRock_Monday9am { get; set; }
    public Boolean LetsRock_Monday1pm { get; set; }
    public Boolean LetsRock_Monday6pm { get; set; }
    public Boolean LadiesRock_Other { get; set; }
    public Boolean LadiesRock_NotAvailable { get; set; }
    public Boolean LoadInSession1 { get; set; }
    public Boolean LoadInSession2 { get; set; }
    public Boolean LoadOutSession2 { get; set; }
    public Boolean LoadInLadiesRock { get; set; }
    public Boolean LoadOutOther { get; set; }

    public Boolean GuitarClub_Monday { get; set; }
    public Boolean GuitarClub_Tuesday { get; set; }
    public Boolean GuitarClub_Wednesday { get; set; }
    public Boolean GuitarClub_Thursday { get; set; }
    public Boolean GuitarClub_Friday { get; set; }
    
    public Boolean LoadOutJune24_2pm { get; set; }
    public Boolean LoadOutJune24_430pm { get; set; }
    public Boolean LoadOutJune27_9am { get; set; }
    public Boolean LoadOutJune27_11am { get; set; }
    public Boolean LoadOutJune28_11am { get; set; }
    public Boolean LoadOutJune28_1pm { get; set; }
    public Boolean LoadOutJuly11_11am { get; set; }
    public Boolean LoadOutJuly11_130pm { get; set; }
    public Boolean LoadInJuly25_10am { get; set; }
    public Boolean LoadInJuly25_1230pm { get; set; }
    public Boolean LoadInJuly26_11am { get; set; }
    public Boolean LoadInJuly26_1pm { get; set; }
    public Boolean LoadOutAug1_10am { get; set; }
    public Boolean LoadOutAug1_12pm { get; set; }
    public Boolean LoadOutAug1_2pm { get; set; }
    public Boolean LoadInAug12_330pm { get; set; }
    public Boolean LoadInAug12_530pm { get; set; }
    public Boolean LoadInAug15_930am { get; set; }
    public Boolean LoadInAug15_1130am { get; set; }
    public Boolean LoadInAug15_130pm { get; set; }
    public Boolean LoadInAug16_11am { get; set; }
    public Boolean LoadInAug16_1pm { get; set; }

    public Boolean LoadInOutOther { get; set; }
    public Boolean LoadInOutNone { get; set; }

    public Boolean JAMusicClub_Tuesday330_5 { get; set; }
    public Boolean JAMusicClub_Tuesday430_6 { get; set; }
    public Boolean JAMusicClub_Tuesday330_6 { get; set; }
    public Boolean JAMusicClub_Other { get; set; }
    public Boolean JAMusicClub_NotAvailable { get; set; }
    public Boolean InstrumentTeacherBass { get; set; }
    public Boolean InstrumentTeacherDrums { get; set; }
    public Boolean InstrumentTeacherGuitar { get; set; }
    public Boolean InstrumentTeacherKeyboards { get; set; }
    public Boolean InstrumentTeacherDJ { get; set; }

    //Ethnicity Info
    public Boolean AmericanNative { get; set; }
    public Boolean Asian { get; set; }
    public Boolean Black_AfricanAmerican { get; set; }
    public Boolean Hispanic_Latinx { get; set; }
    public Boolean Multiracial { get; set; }
    public Boolean NativeHawaiian_PacificIslander { get; set; }
    public Boolean White { get; set; }
    public Boolean Other { get; set; }
    public Boolean PreferNotToDisclose { get; set; }

    public String SessionOneStart { get { return GrcUtils.SessionOneStart; } }
    public String SessionOneEnd { get { return GrcUtils.SessionOneEnd; } }
    public String SessionTwoStart { get { return GrcUtils.SessionTwoStart; } }
    public String SessionTwoEnd { get { return GrcUtils.SessionTwoEnd; } }
    public String LadiesRockStart { get { return GrcUtils.LadiesRockStart; } }
    public String LadiesRockEnd { get { return GrcUtils.LadiesRockEnd; } }
    public String Session1LoadIn1 { get { return GrcUtils.Session1LoadIn1; } }
    public String Session1LoadIn2 { get { return GrcUtils.Session1LoadIn2; } }
    public String Session1LoadOut { get { return GrcUtils.Session1LoadOut; } }
    public String Session2LoadIn1 { get { return GrcUtils.Session2LoadIn1; } }
    public String Session2LoadIn2 { get { return GrcUtils.Session2LoadIn2; } }
    public String Session2LoadOut { get { return GrcUtils.Session2LoadOut; } }
    public String LadiesRockLoadIn1 { get { return GrcUtils.LadiesRockLoadIn1; } }
    public String LadiesRockLoadIn2 { get { return GrcUtils.LadiesRockLoadIn2; } }
    public String JamDayOfTheWeek { get { return GrcUtils.JamDayOfTheWeek;} }
    public String JamStartTime { get { return GrcUtils.JamStartTime;} }
    public String JamEndTime { get { return GrcUtils.JamEndTime;} }
    public String JamStartDate { get { return GrcUtils.JamStartDate;} }
    public String JamEndDate { get { return GrcUtils.JamEndDate;} }
    public String JamVolunteerStartTime1 { get { return GrcUtils.JamVolunteerStartTime1;} }
    public String JamVolunteerStartTime2 { get { return GrcUtils.JamVolunteerStartTime2;} }
    public String JamVolunteerStartTime3 { get { return GrcUtils.JamVolunteerStartTime3;} }
    public String JamVolunteerEndTime1 { get { return GrcUtils.JamVolunteerEndTime1;} }
    public String JamVolunteerEndTime2 { get { return GrcUtils.JamVolunteerEndTime2;} }
    public String JamVolunteerEndTime3 { get { return GrcUtils.JamVolunteerEndTime3;} }

    Volunteer_Application__c newApp { get; set; }
    public Boolean validationOn { get { return false; }}

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
        List<String> ethnicityInfo = new List<String>();
        if (AmericanNative) { ethnicityInfo.add('American Indian or Alaska Native;'); }
        if (Asian) { ethnicityInfo.add('Asian;'); }
        if (Black_AfricanAmerican) { ethnicityInfo.add('Black/African American;'); }
        if (Hispanic_Latinx) { ethnicityInfo.add('Hispanic/Latinx;'); }
        if (Multiracial) { ethnicityInfo.add('Multiracial;'); }
        if (NativeHawaiian_PacificIslander) { ethnicityInfo.add('Native Hawaiian or Pacific Islander;'); }
        if (White) { ethnicityInfo.add('White/Caucasian;'); }
        if (Other) { ethnicityInfo.add('Other;'); }
        if (PreferNotToDisclose) { ethnicityInfo.add('Prefer not to disclose;'); }
        newApp.grcapp__Racial_or_Ethnic_Info__c = String.join(ethnicityInfo, '; ');
        // Page 2
        //Session 1 Availability
        system.debug('Session1_OpenAvailability: ' + Session1_OpenAvailability);
        newApp.Session_One_Availability__c = '';
        if (Session1_OpenAvailability) {newApp.Session_One_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        system.debug('Session1_8to9: ' + Session1_8to9);
        if (Session1_8to9) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 8AM - 9AM. (Before-Care) ';}
        if (Session1_9to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session1_9to1) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session1_1to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session1_5to6) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 5PM - 6PM (After-Care). ';}
        if (Session1_Weekend) {newApp.Session_One_Availability__c += 'I am available on the weekend. ';}
        if (Session1_Other) {newApp.Session_One_Availability__c += 'I have availability that is different than the hours listed here;  I will contact you to discuss my options. ';}
        if (Session1_NotAvailable) {newApp.Session_One_Availability__c += 'I\'m not available to volunteer. ';}
        // Session 2 Availability
        newApp.Session_Two_Availability__c = '';
        if (Session2_OpenAvailability) {newApp.Session_Two_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        if (Session2_8to9) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 8AM - 9AM. (Before-Care) ';}
        if (Session2_9to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session2_9to1) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session2_1to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session2_5to6) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 5PM - 6PM (After-Care). ';}
        if (Session2_Weekend) {newApp.Session_Two_Availability__c += 'I am available on the weekend. ';}
        if (Session2_Other) {newApp.Session_Two_Availability__c += 'I have availability that is different than the hours listed here;  I will contact you to discuss my options. ';}
        if (Session2_NotAvailable) {newApp.Session_Two_Availability__c += 'I\'m not available to volunteer. ';}
        // Ladies Rock Availability
        newApp.Ladies_Rock_Availability__c = '';
        if (LetsRock_Friday) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Fridays from 7 PM - 9 PM. '; }
        if (LetsRock_Saturday9am) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Saturdays and Sundays from 9 AM - 12 PM. '; }
        if (LetsRock_Saturday1pm) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Saturdays and Sundays from 1 PM - 6 PM. '; }
        if (LetsRock_Monday9am) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Mondays from 9 AM - 12 PM. '; }
        if (LetsRock_Monday1pm) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Mondays from 1 PM - 6 PM. '; }
        if (LetsRock_Monday6pm) { newApp.Ladies_Rock_Availability__c += 'I am generally available on Mondays from 6 PM - 8 PM. '; }
        if (LadiesRock_OpenAvailability) {newApp.Ladies_Rock_Availability__c += 'I have open availability; I can help any time throughout the session. ';}
        if (LadiesRock_Other) {newApp.Ladies_Rock_Availability__c += 'I have availability that is different than the hours listed here; I will contact you to discuss my options. ';}
        if (LadiesRock_NotAvailable) {newApp.Ladies_Rock_Availability__c += 'I\'m not available to volunteer. ';}
        // Guitar Club Availability
        if (GuitarClub_Monday) { newApp.Guitar_Club_Availability__c += 'Monday afternoons from 3:15 - 5:00. '; }
        if (GuitarClub_Tuesday) { newApp.Guitar_Club_Availability__c += 'Tuesday afternoons from 3:15 - 5:00. '; }
        if (GuitarClub_Wednesday) { newApp.Guitar_Club_Availability__c += 'Wednesday afternoons from 3:15 - 5:00. '; }
        if (GuitarClub_Thursday) { newApp.Guitar_Club_Availability__c += 'Thursday afternoons from 3:15 - 5:00. '; }
        if (GuitarClub_Friday) { newApp.Guitar_Club_Availability__c += 'Friday afternoons from 3:15 - 5:00. '; }
        // Load in/Load out
        List<String> loadInOut = new List<String>();
        if (LoadOutJune24_2pm) { loadInOut.add('Load-Out Wednesday, June 24th 2 PM - 4:30 PM'); }
        if (LoadOutJune24_430pm) { loadInOut.add('Load-Out Wednesday, June 24th 4:30 PM - 7 PM'); }
        if (LoadOutJune27_9am) { loadInOut.add('Load-Out Saturday, June 27th 9 AM - 11 AM'); }
        if (LoadOutJune27_11am) { loadInOut.add('Load-Out Saturday, June 27th 11 AM - 1 PM'); }
        if (LoadOutJune28_11am) { loadInOut.add('Load-Out Sunday, June 28th 11 AM - 1PM'); }
        if (LoadOutJune28_1pm) { loadInOut.add('Load-Out Sunday, June 28th 1 PM - 3 PM'); }
        if (LoadOutJuly11_11am) { loadInOut.add('Load-Out Saturday, July 11th 11 AM - 1:30 PM'); }
        if (LoadOutJuly11_130pm) { loadInOut.add('Load-Out Saturday, July 11th 1:30 PM - 4PM'); }
        if (LoadInJuly25_10am) { loadInOut.add('Load-In Saturday, July 25th 10 AM - 12:30 PM'); }
        if (LoadInJuly25_1230pm) { loadInOut.add('Load-In Saturday, July 25th 12:30 PM - 3:00 PM'); }
        if (LoadInJuly26_11am) { loadInOut.add('Load-In Sunday, July 26th 11 AM - 1 PM'); }
        if (LoadInJuly26_1pm) { loadInOut.add('Load-In Sunday, July 26th 1 PM - 3 PM'); }
        if (LoadOutAug1_10am) { loadInOut.add('Load-Out Saturday, August 1st 10 AM - 12 PM '); }
        if (LoadOutAug1_12pm) { loadInOut.add('Load-Out Saturday, August 1st 12 PM - 2 PM'); }
        if (LoadOutAug1_2pm) { loadInOut.add('Load-Out Saturday, August 1st 2 PM - 4 PM'); }
        if (LoadInAug12_330pm) { loadInOut.add('Load-In Wednesday, August 24th 3:30 PM - 5:30 PM'); }
        if (LoadInAug12_530pm) { loadInOut.add('Load-In Wednesday, August 24th 5:30 PM - 7:30 PM'); }
        if (LoadInAug15_930am) { loadInOut.add('Load-In Saturday, August 15th 9:30 AM - 11:30 AM'); }
        if (LoadInAug15_1130am) { loadInOut.add('Load-In Saturday, August 15th 11:30 PM - 1:30 PM'); }
        if (LoadInAug15_130pm) { loadInOut.add('Load-In Saturday, August 15th 1:30 PM - 3:30 PM '); }
        if (LoadInAug16_11am) { loadInOut.add('Load-In Sunday, August 16th 11 AM - 1 PM'); }
        if (LoadInAug16_1pm) { loadInOut.add('Load-In Sunday, August 16th 1 PM - 3 PM'); }
        if (LoadInOutOther) { loadInOut.add('I have availability that is different than the hours listed here;  I will contact you to discuss my options.'); }
        if (LoadInOutNone) { loadInOut.add('I am unable to assist with Load-In or Load-Out.'); }
        newApp.Load_In_Load_Out_Availability__c = String.join(loadInOut, '; ');

        //Josephinium Music Club
        newApp.Josephinum_Music_Club_Availability__c = '';
        // if (JAMusicClub_Tuesday330_5) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 3:30 PM - 5 PM; ';}
        // if (JAMusicClub_Tuesday430_6) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 4:30 PM - 6 PM; ';}
        // if (JAMusicClub_Tuesday330_6) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 3:30 PM - 6 PM; ';}
        // if (JAMusicClub_Other) {newApp.Josephinum_Music_Club_Availability__c += 'I have availability that is different than the hours listed here;  please contact me to discuss my options.; ';}
        // if (JAMusicClub_NotAvailable) {newApp.Josephinum_Music_Club_Availability__c += 'I\'m not available to volunteer.; ';}

        // Page 3


        // Positions
        newApp.positions__c = '';
        if(BandCoach) { newApp.positions__c += 'BAND COACH **musical experience required** (Monday - Friday, 2:30pm-4:30pm; showcase and recording); ';}
        if(InstrumentTeacher) { newApp.positions__c += 'INSTRUMENT TEACHER **musical experience required** (Monday - Friday, 10:30am-12:30pm); ';}
        if(CounsellorA) { newApp.positions__c += 'COUNSELOR - Shift A (11 am - 2 pm) ';}
        if(CounsellorB) { newApp.positions__c += 'COUNSELOR - Shift B (2:15 pm - 5:00 pm) ';}
        if(WorkshopLeader) { newApp.positions__c += 'WORKSHOP LEADER (1 hour, one day of camp); ';}
        if(JuniorCounsellor) { newApp.positions__c += 'JUNIOR COUNSELOR *FULL TIME* (Monday - Friday, 9am-5pm; showcase); ';}
        if(FrontDeskPartTime) {newApp.positions__c += 'FRONT DESK *PART TIME*';}
        if(CoolDownCrewA) { newApp.positions__c += 'COOL DOWN CREW - Shift A (11 am - 2 pm)';}
        if(CoolDownCrewA) { newApp.positions__c += 'COOL DOWN CREW - Shift B (2:15 pm - 5:00 pm)';}
        if(RoadieA) { newApp.positions__c += 'ROADIE - Shift A (11 am - 2 pm)';}
        if(RoadieB) { newApp.positions__c += 'ROADIE - Shift B (2:15 pm - 5:00 pm)';}
        // Instrument Teacher
        newApp.Instrument_Teacher_Explained__c = '';
        system.debug('InstrumentTeacherBass = ' + InstrumentTeacherBass);
        if(InstrumentTeacherBass) { newApp.Instrument_Teacher_Explained__c += 'Bass; ';}
        if(InstrumentTeacherDrums) { newApp.Instrument_Teacher_Explained__c += 'Drums; ';}
        if(InstrumentTeacherGuitar) { newApp.Instrument_Teacher_Explained__c += 'Guitar; ';}
        if(InstrumentTeacherKeyboards) { newApp.Instrument_Teacher_Explained__c += 'Keyboards; ';}
        if(InstrumentTeacherDJ) { newApp.Instrument_Teacher_Explained__c += 'Turntables/DJ; ';}
        system.debug('newApp.Instrument_Teacher_Explained__c: ' + newApp.Instrument_Teacher_Explained__c);
        // Page 4
        // Page 5
        // Page 6
        // Page 7
        upsert newApp;
        this.pageNumber++;
        sendConfirmationEmail(newApp.id);
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

    public static void sendConfirmationEmail (String newAppId) {
        Volunteer_Application__c newApp = [SELECT Email_Address__c, Last_Name__c FROM Volunteer_Application__c where id = :newAppId][0];
        // Create temporary contact to be used in the email send.
        if (test.isRunningTest()) {
            newApp.Email_Address__c = 'a@sample.com';
            newApp.Last_Name__c = 'sample';
        }
        contact tempContact = new Contact(
                email = newApp.Email_Address__c,
                lastName = newApp.Last_Name__c
        );
        insert tempContact;
        ID contactID = tempContact.ID;


        String grcVoluneerTemplateId = [select id from EmailTemplate where developername='grcVolunteerEmailTemplate'][0].id;
        Messaging.reserveSingleEmailCapacity(2);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();

        // Make tempContact the target object to use its email address.
        mail.setTargetObjectId(contactID);

        // Specify the text content of the email.
        mail.setTemplateId(grcVoluneerTemplateId);

        // Specify the address used when the recipients reply to the email.
        mail.setReplyTo('volunteer@girlsrockchicago.org');

        // Specify the name used as the display name.
        mail.setSenderDisplayName('Girls Rock! Chicago');

        // Set to True if you want to BCC yourself on the email.
        mail.setBccSender(true);

        system.debug('mail = ' + mail);
        // Send the email you have created.

        if (!Test.isRunningTest()) {
            try {
                Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
            }
            catch (emailexception e) {
                system.debug('email exception - ' + e);
            }
        }
        // Delete Temporary contact
        delete tempContact;
    }
}