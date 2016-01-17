public with sharing class VolunteerApplicationControl {
        // Control Variables
        String session = null;
        String attendSecondSession = null;
        String camperSiblings = null;
        String camperSiblingsAttending = null;
        String firstChoiceInstrumentAtHome = null;
        String secondChoiceInstrumentAtHome = null;
        String thirdChoiceInstrumentAtHome = null;
        String rightOrLeftHanded = null;
        String studentAtSuder = null;
        String medicalConditionsOrAllergies = null;
        String behavioralOrEmotional = null;
        String dietaryRestrictions = null;
        String waiveFee = null;
        String singleIncomeFamily = null;
        String needLunch = null;
        String applyingForFinancialAid = null;
        Integer pageNumber { get; set; }
        Volunteer_Application__c newApp { get; set; }

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

        public static void sendConfirmationEmail (String newAppId) {
//            Camper_Application__c newApp = [SELECT Parent_Guardian_Email__c, Parent_Guardian_Last_Name__c FROM Camper_Application__c where id = :newAppId][0];
//            // Create temporary contact to be used in the email send.
//            if (test.isRunningTest()) {
//                newApp.Parent_Guardian_Email__c = 'a@sample.com';
//                newApp.Parent_Guardian_Last_Name__c = 'sample';
//            }
//            contact tempContact = new Contact(
//                    email = newApp.Parent_Guardian_Email__c,
//                    lastName = newApp.Parent_Guardian_Last_Name__c
//            );
//            insert tempContact;
//            ID contactID = tempContact.ID;
//
//
//            String grcTemplateId = [select id from EmailTemplate where developername='grcEmailTemplate'][0].id;
//            Messaging.reserveSingleEmailCapacity(2);
//            Messaging.SingleEmailMessage mail = new Messaging.SingleEmailMessage();
//
//            // Make tempContact the target object to use its email address.
//            mail.setTargetObjectId(contactID);
//
//            // Specify the text content of the email.
//            mail.setTemplateId(grcTemplateId);
//
//            // Specify the address used when the recipients reply to the email.
//            mail.setReplyTo('apply@girlsrockchicago.org');
//
//            // Specify the name used as the display name.
//            mail.setSenderDisplayName('Girls Rock! Chicago');
//
//            // Set to True if you want to BCC yourself on the email.
//            mail.setBccSender(true);
//
//            system.debug('mail = ' + mail);
//            // Send the email you have created.
//
//            if (!Test.isRunningTest()) {
//                try {
//                    Messaging.sendEmail(new Messaging.SingleEmailMessage[] { mail });
//                }
//                catch (emailexception e) {
//                    system.debug('email exception - ' + e);
//                }
//            }
//            // Delete Temporary contact
//            delete tempContact;
        }
}