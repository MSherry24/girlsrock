public class CamperApplicationControl {
    // Control Variables
    public String session {get; set;}
    public String attendSecondSession {get; set;}
    public String camperSiblings {get; set;}
    public String camperSiblingsAttending {get; set;}
    public String firstChoiceInstrumentAtHome {get; set;}
    public String secondChoiceInstrumentAtHome {get; set;}
    public String thirdChoiceInstrumentAtHome {get; set;}
    public String rightOrLeftHanded {get; set;}
    public String studentAtSuder {get; set;}
    public String studentAtJosephinum {get; set;}
    public String medicalConditionsOrAllergies {get; set;}
    public String behavioralOrEmotional {get; set;}
    public String dietaryRestrictions {get; set;}
    public String waiveFee {get; set;}
    public String singleIncomeFamily {get; set;}
    public String needLunch {get; set;}
    public String applyingForFinancialAid {get; set;}
    public Integer pageNumber { get; set;}
    Camper_Application__c newApp { get; set; }

    public boolean attended2006 { get; set; }
    public boolean attended2007 { get; set; }
    public boolean attended2008 { get; set; }
    public boolean attended2009 { get; set; }
    public boolean attendedJune2010 { get; set; }
    public boolean attendedAugust2010 { get; set; }
    public boolean attendedJune2011 { get; set; }
    public boolean attendedAugust2011 { get; set; }
    public boolean attendedJune2012 { get; set; }
    public boolean attendedAugust2012 { get; set; }
    public boolean attendedJune2013 { get; set; }
    public boolean attendedAugust2013 { get; set; }
    public boolean attendedJune2014 { get; set; }
    public boolean attendedAugust2014 { get; set; }
    public boolean attendedJune2015 { get; set; }
    public boolean attendedAugust2015 { get; set; }
    public boolean attendedInAnotherCity { get; set; }
    public boolean appliedNeverAttended { get; set; }
    public boolean neverAttendedOrApplied { get; set; }
    public boolean Other { get; set; }
    public boolean campAppBass { get; set; }
    public boolean campAppDjTurntable { get; set; }
    public boolean campAppDrums { get; set; }
    public boolean campAppGuitar { get; set; }
    public boolean campAppKeyboard { get; set; }
    public boolean nativeAmerican { get; set; }
    public boolean asian { get; set; }
    public boolean black { get; set; }
    public boolean pacificIsland { get; set; }
    public boolean hispanic { get; set; }
    public boolean white { get; set; }
    public boolean otherRace { get; set; }
    public String SessionOneStart { get{ return GrcUtils.SessionOneStartVerbose; } }
    public String SessionOneEnd { get{ return GrcUtils.SessionOneEndVerbose; } }
    public String SessionTwoStart { get{ return GrcUtils.SessionTwoStartVerbose; } }
    public String SessionTwoEnd { get{ return GrcUtils.SessionTwoEndVerbose; } }
    public String LadiesRockStart { get{ return GrcUtils.LadiesRockStart; } }
    public String LadiesRockEnd { get{ return GrcUtils.LadiesRockEnd; } }
    public String Session1LoadIn1 { get {return GrcUtils.Session1LoadIn1;} }
    public String Session1LoadIn2 { get {return GrcUtils.Session1LoadIn2;} }
    public String Session1LoadOut { get {return GrcUtils.Session1LoadOut;} }
    public String Session2LoadIn1 { get {return GrcUtils.Session2LoadIn1;} }
    public String Session2LoadIn2 { get {return GrcUtils.Session2LoadIn2;} }
    public String Session2LoadOut { get {return GrcUtils.Session2LoadOut;} }
    public Boolean BringingBass {get; set;}
    public Boolean BringingElectricGuitar {get; set;}
    public Boolean BringingKeyboard {get; set;}
    public Boolean NotBringingInstrument {get; set;}
    public Boolean BringingOther {get; set;}
    
    // Logic Controls
    public CamperApplicationControl() {
        this.newApp = new Camper_Application__c();
        this.session='SESSION1';
        this.attendSecondSession = 'Yes';
        this.studentAtSuder = 'No';
        this.studentAtJosephinum = 'No';
        this.camperSiblingsAttending = 'No';
        this.camperSiblings = '';
        this.firstChoiceInstrumentAtHome = 'No';
        this.secondChoiceInstrumentAtHome = 'No';
        this.thirdChoiceInstrumentAtHome = 'No';
        this.rightOrLeftHanded = 'Right Handed';
        this.medicalConditionsOrAllergies = 'No';
        this.behavioralOrEmotional = 'No';
        this.dietaryRestrictions = 'No';
        this.waiveFee = 'No';
        this.singleIncomeFamily = 'No';
        this.needLunch = 'No';
        this.applyingForFinancialAid = 'No';
        this.pageNumber = 1;
    }
    public Camper_Application__c getNewApp() {
        return this.newApp;
    }

    public void save() {
        newApp.Camper_Full_Name__c = newApp.Camper_First_Name__c + ' ' + newApp.Camper_Last_Name__c;
        newApp.Application_Date__c = Date.today();
        // Page 1
        newApp.Session_Choice__c = this.session == 'SESSION1' ? 'Session 1' : 'Session 2';
        // Page 2
        attendedBefore(); 
        newApp.Name = newApp.Camper_First_Name__c + ' ' + newApp.Camper_Last_Name__c;
        previousInstrumentExperience(); 
        newApp.Attend_2nd_Choice_Session__c = attendSecondSession == 'Yes' ? true : false;
        newApp.Student_at_Suder__c = studentAtSuder == 'Yes' ? true : false;
        newApp.Student_at_Josephinum__c = studentAtJosephinum == 'Yes' ? true : false;
        newApp.Siblings_or_Relatives_Attending__c = camperSiblingsAttending == 'Yes' ? true : false;
        newApp.Siblings_or_Relatives__c = this.camperSiblings != null ? this.camperSiblings : '';
        // Page 3 - All inputfields
        // Page 4 - All inputfields
        // Page 5
        newApp.X1st_Choice_Instrument_at_Home__c = this.firstChoiceInstrumentAtHome;
        newApp.X2nd_Choice_Instrument_at_Home__c = this.secondChoiceInstrumentAtHome;
        newApp.X3rd_Choice_Instrument_at_Home__c = this.thirdChoiceInstrumentAtHome;
        newApp.rightOrLeftHanded__c = this.rightOrLeftHanded;
        newApp.Bringing_Instrument_To_Camp_Text__c = '';
        newApp.Bringing_Instrument_To_Camp_Text__c += BringingBass ? 'Bass;' : '';
        newApp.Bringing_Instrument_To_Camp_Text__c += BringingElectricGuitar ? 'Electric Guitar;' : '';
        newApp.Bringing_Instrument_To_Camp_Text__c += BringingKeyboard ? 'Keyboard;' : '';
        newApp.Bringing_Instrument_To_Camp_Text__c += NotBringingInstrument ? 'I do not plan to bring an instrument to camp;' : '';
        newApp.Bringing_Instrument_To_Camp_Text__c += BringingOther ? 'Other;' : '';
                // Page 6
        newApp.Camper_Medical_Conditions_Allergies__c = medicalConditionsOrAllergies == 'Yes' ? true : false;
        newApp.Camper_Behavioral_Emotional_Needs__c = behavioralOrEmotional == 'Yes' ? true : false;
        newApp.Camper_Food_Allergies__c = dietaryRestrictions == 'Yes' ? true : false;
        // Page 7
        camperRace();
        // Page 8
        newApp.Applying_for_Financial_Aid__c = applyingForFinancialAid == 'Yes' ? true : false;
        // Page 9
        newApp.Waive_Application_Fee__c = waiveFee == 'Yes' ? true : false;
        newApp.Single_Income_Family__c = singleIncomeFamily == 'Yes' ? true : false;
        newApp.Need_Lunch_Provided__c = needLunch == 'Yes' ? true : false;
        // Page 10 - All inputfields
        upsert newApp;
        this.pageNumber++;
        sendConfirmationEmail(newApp.id);
    }
    
    //Page 2 methods
    public void attendedBefore() 
    {
        String attendedBefore = '';
        if (attended2006 ==  true) { attendedBefore += '2006;'; }
        if (attended2007 ==  true) { attendedBefore += '2007;'; }
        if (attended2008 ==  true) { attendedBefore += '2008;'; }
        if (attended2009 ==  true) { attendedBefore += '2009;'; }
        if (attendedJune2010 ==  true) { attendedBefore += 'June 2010;'; }
        if (attendedAugust2010 ==  true) { attendedBefore += 'August 2010;'; }
        if (attendedJune2011 ==  true) { attendedBefore += 'June 2011;'; }
        if (attendedAugust2011 ==  true) { attendedBefore += 'August 2011;'; }
        if (attendedJune2012 ==  true) { attendedBefore += 'June 2012;'; }
        if (attendedAugust2012 ==  true) { attendedBefore += 'August 2012;'; }
        if (attendedJune2013 ==  true) { attendedBefore += 'June 2013;'; }
        if (attendedAugust2013 ==  true) { attendedBefore += 'August 2013;'; }
        if (attendedJune2014 ==  true) { attendedBefore += 'June 2014;'; }
        if (attendedAugust2014 ==  true) { attendedBefore += 'August 2014;'; }
        if (attendedInAnotherCity ==  true) { attendedBefore += 'Attended camp in Another City;'; }
        if (appliedNeverAttended == true) { attendedBefore += 'Applied, but Never Attended'; }
        if (neverAttendedOrApplied == true) { attendedBefore += 'Never Attended or Applied'; }
        if (Other == true) { attendedBefore += 'Other'; }
        newApp.Attended_Camp_Before__c = attendedBefore;
    }
    
    public void previousInstrumentExperience()
    {
        String previousInstruments = '';
        if (campAppBass ==  true) { previousInstruments += 'Bass;'; }
        if (campAppDjTurntable ==  true) { previousInstruments += 'DJ/Turntable;'; }
        if (campAppDrums ==  true) { previousInstruments += 'Drums;'; }
        if (campAppGuitar ==  true) { previousInstruments += 'Guitar;'; }
        if (campAppKeyboard ==  true) { previousInstruments += 'Keyboard;'; }
        newApp.Previous_Instrument__c = previousInstruments;
    }
    
    // Page 7 methods
    public void camperRace()
    {
        String camperRace = '';
        if (nativeAmerican ==  true) { camperRace += 'American Indian or Alaska Native;'; }
        if (asian ==  true) { camperRace += 'Asian;'; }
        if (black ==  true) { camperRace += 'Black or African American;'; }
        if (pacificIsland ==  true) { camperRace += 'Native Hawaiian or Pacific Islander;'; }
        if (hispanic ==  true) { camperRace += 'Hispanic or Latina;'; }
        if (white ==  true) { camperRace += 'White or Caucasian;'; }
        if (otherRace ==  true) { camperRace += 'Other;'; }
        newApp.Camper_Race__c = camperRace;
    }
    
    // UI Controls                
    public List<SelectOption> getSessionOptions() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('SESSION1', SessionOneStart + ' - ' + SessionOneEnd));
        options.add(new SelectOption('SESSION2', SessionTwoStart + ' - ' + SessionTwoEnd));
        return options; 
    }
    public List<SelectOption> getYesNoOptions() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('Yes', 'Yes')); 
        options.add(new SelectOption('No', 'No')); 
        return options; 
    }
    public List<SelectOption> getRightOrLeftHandedOptions() {
        List<SelectOption> options = new List<SelectOption>(); 
        options.add(new SelectOption('Right Handed', 'Right Handed')); 
        options.add(new SelectOption('Left Handed', 'Left Handed')); 
        return options; 
    }
    
    public boolean getrenderPage1() { return this.pageNumber == 1; }
    public boolean getrenderPage2() { return this.pageNumber == 2; }
    public boolean getrenderPage3() { return this.pageNumber == 3; }
    public boolean getrenderPage4() { return this.pageNumber == 4; }
    public boolean getrenderPage5() { return this.pageNumber == 5; }
    public boolean getrenderPage6() { return this.pageNumber == 6; }
    public boolean getrenderPage7() { return this.pageNumber == 7; }
    public boolean getrenderPage8() { return this.pageNumber == 8; }
    public boolean getrenderPage9() { return this.pageNumber == 9; }
    public boolean getrenderPage10() { return this.pageNumber == 10; }
    public boolean getrenderPage11() { return this.pageNumber == 11; }
    public boolean getSaveDisabled() { return this.pageNumber != 10; }
    public void nextpage() { 
        if (this.pageNumber == 8 && this.applyingForFinancialAid == 'No') {
            //newApp.Applying_for_Financial_Aid__c == false) {
            this.pageNumber = 10;
        }
        else {
            this.pageNumber++;
        }
    }
    public void prevpage() { 
        if (this.pageNumber == 10 && this.applyingForFinancialAid == 'No') {
            this.pageNumber = 8;
        }
        else {
            this.pageNumber--;
        }
    }
    
    public static void sendConfirmationEmail (String newAppId) {
        Camper_Application__c newApp = [SELECT Parent_Guardian_Email__c, Parent_Guardian_Last_Name__c FROM Camper_Application__c where id = :newAppId][0];
        // Create temporary contact to be used in the email send.
        if (test.isRunningTest()) {
            newApp.Parent_Guardian_Email__c = 'a@sample.com';
            newApp.Parent_Guardian_Last_Name__c = 'sample';   
        }
        contact tempContact = new Contact(
            email = newApp.Parent_Guardian_Email__c, 
            lastName = newApp.Parent_Guardian_Last_Name__c
        );
        insert tempContact;
        ID contactID = tempContact.ID;
        
        
        String grcTemplateId = [select id from EmailTemplate where developername='grcEmailTemplate'][0].id;
        Messaging.reserveSingleEmailCapacity(2);
        Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
        
        // Make tempContact the target object to use its email address.
        mail.setTargetObjectId(contactID);
        
        // Specify the text content of the email.
		mail.setTemplateId(grcTemplateId);
        
        // Specify the address used when the recipients reply to the email. 
        mail.setReplyTo('apply@girlsrockchicago.org');
        
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