public class GrcUtils {

    public static String SessionOneStart {
        get{
            if (Important_Dates__c.getInstance().Session_One_Start__c == null) {return 'TBD';}
            return formatDate(Important_Dates__c.getInstance().Session_One_Start__c);
        }
    }
    public static String SessionOneEnd {
        get{
            if (Important_Dates__c.getInstance().Session_One_End__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_One_End__c);
        }
    }
    public static String SessionTwoStart {
        get{
            if (Important_Dates__c.getInstance().Session_Two_Start__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_Two_Start__c);
        }
    }
    public static String SessionTwoEnd {
        get{
            if (Important_Dates__c.getInstance().Session_Two_End__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_Two_End__c);
        }
    }
    public static String LadiesRockStart {
        get{
            if (Important_Dates__c.getInstance().Ladies_Rock_Start__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Ladies_Rock_Start__c);
        }
    }
    public static String LadiesRockEnd {
        get{
            if (Important_Dates__c.getInstance().Ladies_Rock_End__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Ladies_Rock_End__c);
        }
    }
    public static String Session1LoadIn1 {
        get{
            if (Important_Dates__c.getInstance().Session_One_Load_In_1__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_One_Load_In_1__c);
        }
    }
    public static String Session1LoadIn2 {
        get{
            if (Important_Dates__c.getInstance().Session_One_Load_In_2__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_One_Load_In_2__c);
        }
    }
    public static String Session1LoadOut {
        get{
            if (Important_Dates__c.getInstance().Session_One_Load_Out__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_One_Load_Out__c);
        }
    }
    public static String Session2LoadIn1 {
        get{
            if (Important_Dates__c.getInstance().Session_Two_Load_In_1__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_Two_Load_In_1__c);
        }
    }
    public static String Session2LoadIn2 {
        get{
            if (Important_Dates__c.getInstance().Session_Two_Load_In_2__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_Two_Load_In_2__c);
        }
    }
    public static String Session2LoadOut {
        get{
            if (Important_Dates__c.getInstance().Session_Two_Load_Out__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Session_Two_Load_Out__c);
        }
    }

    public static String LadiesRockLoadIn1 {
        get{
            if (Important_Dates__c.getInstance().Ladies_Rock_Load_In_1__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Ladies_Rock_Load_In_1__c);
        }
    }

    public static String LadiesRockLoadIn2 {
        get{
            if (Important_Dates__c.getInstance().Ladies_Rock_Load_In_2__c == null) { return 'TBD'; }
            return formatDate(Important_Dates__c.getInstance().Ladies_Rock_Load_In_2__c);
        }
    }

    public static String SessionOneStartVerbose {
        get {
            if (Important_Dates__c.getInstance().Session_One_Start__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Session_One_Start__c);
        }
    }
    public static String SessionOneEndVerbose {
        get {
            if (Important_Dates__c.getInstance().Session_One_End__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Session_One_End__c);
        }
    }
    public static String SessionTwoStartVerbose {
        get {
            if (Important_Dates__c.getInstance().Session_Two_Start__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Session_Two_Start__c);
        }
    }
    public static String SessionTwoEndVerbose {
        get {
            if (Important_Dates__c.getInstance().Session_Two_End__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Session_Two_End__c);
        }
    }

    public static String JamDayOfTheWeek {
        get {
            if (Important_Dates__c.getInstance().Jam_Day_Of_The_Week__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Day_Of_The_Week__c;
        }
    }

    public static String JamStartTime {
        get {
            if (Important_Dates__c.getInstance().Jam_Start_Time__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Start_Time__c;
        }
    }

    public static String JamEndTime {
        get {
            if (Important_Dates__c.getInstance().Jam_End_Time__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_End_Time__c;
        }
    }

    public static String JamStartDate {
        get {
            if (Important_Dates__c.getInstance().Jam_Start_Date__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Jam_Start_Date__c);
        }
    }

    public static String JamEndDate {
        get {
            if (Important_Dates__c.getInstance().Jam_End_Date__c == null) { return 'TBD'; }
            return formatDateVerbose(Important_Dates__c.getInstance().Jam_End_Date__c);
        }
    }

    public static String JamVolunteerStartTime1 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_1__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_1__c;
        }
    }

    public static String JamVolunteerStartTime2 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_2__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_2__c;
        }
    }

    public static String JamVolunteerStartTime3 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_3__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_Start_Time_3__c;
        }
    }

    public static String JamVolunteerEndTime1 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_End_Time_1__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_End_Time_1__c;
        }
    }

    public static String JamVolunteerEndTime2 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_End_Time_2__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_End_Time_2__c;
        }
    }

    public static String JamVolunteerEndTime3 {
        get {
            if (Important_Dates__c.getInstance().Jam_Volunteer_End_Time_3__c == null) { return 'TBD'; }
            return Important_Dates__c.getInstance().Jam_Volunteer_End_Time_3__c;
        }
    }

    private static String formatDate(Date d) {
        return DateTime.newInstance(d, Time.NewInstance(12,0,0,0)).format('EEEE, MM/dd/YYYY','CST6CDT');
    }

    private static String formatDateVerbose(Date d) {
        return DateTime.newInstance(d, Time.NewInstance(12,0,0,0)).format('EEEE MMMMM dd, YYYY','CST6CDT');
    }
}