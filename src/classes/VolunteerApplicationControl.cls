global class VolunteerApplicationControl {
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
    public Boolean FrontDeskPartTime { get; set;}
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
    public Boolean LadiesRock_FridayMorning { get; set; }
    public Boolean LadiesRock_WeekendMorning{ get; set; }
    public Boolean LadiesRock_WeekendEvening { get; set; }
    public Boolean LadiesRock_MondayEvening { get; set; }
    public Boolean LadiesRock_Other { get; set; }
    public Boolean LadiesRock_NotAvailable { get; set; }
    public Boolean LoadInSession1 { get; set; }
    public Boolean LoadInSession2 { get; set; }
    public Boolean LoadOutSession2 { get; set; }
    public Boolean LoadInLadiesRock { get; set; }
    public Boolean LoadOutOther { get; set; }
    
    public Boolean LoadInJulySaturday9am { get; set; }
    public Boolean LoadInJulySaturday11am { get; set; }
    public Boolean LoadInJulySaturday1pm { get; set; }
    public Boolean LoadInJulySaturday3pm { get; set; }

    public Boolean LoadInJulySunday9am { get; set; }
    public Boolean LoadInJulySunday11am { get; set; }
    public Boolean LoadInJulySunday1pm { get; set; }
    public Boolean LoadInJulySunday3pm { get; set; }

    public Boolean LoadInAugustSaturday9am { get; set; }
    public Boolean LoadInAugustSaturday11am { get; set; }
    public Boolean LoadInAugustSaturday1pm { get; set; }
    public Boolean LoadInAugustSaturday3pm { get; set; }

    public Boolean LoadInAugustSunday11am { get; set; }
    public Boolean LoadInAugustSunday1pm { get; set; }
    
    public Boolean LoadOutAugustSaturday9am { get; set; }
    public Boolean LoadOutAugustSaturday11am { get; set; }
    public Boolean LoadOutAugustSaturday1pm { get; set; }

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
        // NONE
        // Page 2
        //Session 1 Availability
        newApp.Session_One_Availability__c = '';
        if (Session1_OpenAvailability) {newApp.Session_One_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        if (Session1_9to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session1_9to1) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session1_1to5) {newApp.Session_One_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session1_Weekend) {newApp.Session_One_Availability__c += 'I am available on the weekend. ';}
        if (Session1_Other) {newApp.Session_One_Availability__c += 'I have availability that is different than the hours listed here;  I will contact you to discuss my options. ';}
        if (Session1_NotAvailable) {newApp.Session_One_Availability__c += 'I\'m not available to volunteer. ';}
        // Session 2 Availability
        newApp.Session_Two_Availability__c = '';
        if (Session2_OpenAvailability) {newApp.Session_Two_Availability__c += 'I have open availability; I can help any time throughout the week. ';}
        if (Session2_9to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 5PM. ';}
        if (Session2_9to1) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 9AM - 1PM. ';}
        if (Session2_1to5) {newApp.Session_Two_Availability__c += 'I am available Monday - Friday, 1PM - 5PM. ';}
        if (Session2_Weekend) {newApp.Session_Two_Availability__c += 'I am available on the weekend. ';}
        if (Session2_Other) {newApp.Session_Two_Availability__c += 'I have availability that is different than the hours listed here;  I will contact you to discuss my options. ';}
        if (Session2_NotAvailable) {newApp.Session_Two_Availability__c += 'I\'m not available to volunteer. ';}
        // Ladies Rock Availability
        newApp.Ladies_Rock_Availability__c = '';
        if (LadiesRock_OpenAvailability) {newApp.Ladies_Rock_Availability__c += 'I have open availability; I can help any time throughout the session. ';}
        if (LadiesRock_FridayMorning) {newApp.Ladies_Rock_Availability__c += 'I am available Friday 7 PM - 9 PM ';}
        if (LadiesRock_WeekendMorning) {newApp.Ladies_Rock_Availability__c += 'I am available Saturday, Sunday & Monday 9 AM - 12 PM ';}
        if (LadiesRock_WeekendEvening) {newApp.Ladies_Rock_Availability__c += 'I am available Friday - Sunday, Insert Evening Hours ';}
        if (LadiesRock_MondayEvening) {newApp.Ladies_Rock_Availability__c += 'I am available Monday 6 PM - 8 PM ';}
        if (LadiesRock_Other) {newApp.Ladies_Rock_Availability__c += 'I have availability that is different than the hours listed here; I will contact you to discuss my options. ';}
        if (LadiesRock_NotAvailable) {newApp.Ladies_Rock_Availability__c += 'I\'m not available to volunteer. ';}
        // Load in/Load out
        newApp.Load_In_Load_Out_Availability__c = '';
        if (LoadInJulySaturday9am) {newApp.Load_In_Load_Out_Availability__c += 'July 20, 9 AM - 11 AM at Storage Unit; ';}
        if (LoadInJulySaturday11am) {newApp.Load_In_Load_Out_Availability__c += 'July 20, 11 AM - 1 PM at Suder; ';}
        if (LoadInJulySaturday1pm) {newApp.Load_In_Load_Out_Availability__c += 'July 20, 1 PM - 3 PM at Suder; ';}
        if (LoadInJulySaturday3pm) {newApp.Load_In_Load_Out_Availability__c += 'July 20, 3 PM - 5 PM at Suder; ';}

        if (LoadInJulySunday9am) {newApp.Load_In_Load_Out_Availability__c += 'July 21, 9 AM - 11 AM at Suder; ';}
        if (LoadInJulySunday11am) {newApp.Load_In_Load_Out_Availability__c += 'July 21, 11 AM - 1 PM at Suder; ';}
        if (LoadInJulySunday1pm) {newApp.Load_In_Load_Out_Availability__c += 'July 21, 1 PM - 3 PM at Suder; ';}
        if (LoadInJulySunday3pm) {newApp.Load_In_Load_Out_Availability__c += 'July 21, 3 PM - 5 PM at Suder; ';}

        if (LoadInAugustSaturday9am) {newApp.Load_In_Load_Out_Availability__c += 'August 3rd, 9 AM - 11 AM at Suder; ';}
        if (LoadInAugustSaturday11am) {newApp.Load_In_Load_Out_Availability__c += 'August 3rd, 11 AM - 1 PM at Suder; ';}
        if (LoadInAugustSaturday1pm) {newApp.Load_In_Load_Out_Availability__c += 'August 3rd, 1 PM - 3 PM at Suder; ';}
        if (LoadInAugustSaturday3pm) {newApp.Load_In_Load_Out_Availability__c += 'August 3rd, 3 PM - 5 PM at Suder; ';}

        if (LoadInAugustSunday11am) {newApp.Load_In_Load_Out_Availability__c += 'August 4th, 11 AM - 1 PM at Suder; ';}
        if (LoadInAugustSunday1pm) {newApp.Load_In_Load_Out_Availability__c += 'August 4th, 1 PM - 3 PM at Suder; ';}

        if (LoadOutAugustSaturday9am) {newApp.Load_In_Load_Out_Availability__c += 'August 12 (Out), 9 AM - 11 AM at Suder; ';}
        if (LoadOutAugustSaturday11am) {newApp.Load_In_Load_Out_Availability__c += 'August 12 (Out), 11 AM - 1 PM at Storage Unit; ';}
        if (LoadOutAugustSaturday1pm) {newApp.Load_In_Load_Out_Availability__c += 'August 12 (Out), 1 PM - 3 PM at Storage Unit; ';}

        if (LoadInOutOther) {newApp.Load_In_Load_Out_Availability__c += 'I have availability that is different than the hours listed here;  I will contact you to discuss my options.; ';}
        if (LoadInOutNone) {newApp.Load_In_Load_Out_Availability__c += 'I am unable to assist with Load-In or Load-Out.; ';}

        //Josephinium Music Club
        newApp.Josephinum_Music_Club_Availability__c = '';
        if (JAMusicClub_Tuesday330_5) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 3:30 PM - 5 PM; ';}
        if (JAMusicClub_Tuesday430_6) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 4:30 PM - 6 PM; ';}
        if (JAMusicClub_Tuesday330_6) {newApp.Josephinum_Music_Club_Availability__c += 'Tuesdays from 3:30 PM - 6 PM; ';}
        if (JAMusicClub_Other) {newApp.Josephinum_Music_Club_Availability__c += 'I have availability that is different than the hours listed here;  please contact me to discuss my options.; ';}
        if (JAMusicClub_NotAvailable) {newApp.Josephinum_Music_Club_Availability__c += 'I\'m not available to volunteer.; ';}

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
        if(FrontDeskPartTime) {newApp.positions__c += 'FRONT DESK *PART TIME*';}
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
    public boolean getSaveDisabled() { return this.pageNumber != 6; }
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