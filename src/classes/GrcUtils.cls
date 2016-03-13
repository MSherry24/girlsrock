public class GrcUtils {

    public static String SessionOneStart { get{ return formatDate(Camp_Dates__c.getInstance().Session_One_Start__c); }}
    public static String SessionOneEnd { get{ return formatDate(Camp_Dates__c.getInstance().Session_One_End__c);}}
    public static String SessionTwoStart { get{ return formatDate(Camp_Dates__c.getInstance().Session_Two_Start__c);}}
    public static String SessionTwoEnd { get{ return formatDate(Camp_Dates__c.getInstance().Session_Two_End__c);}}
    public static String LadiesRockStart { get{ return formatDate(Camp_Dates__c.getInstance().Ladies_Rock_Start__c);}}
    public static String LadiesRockEnd { get{ return formatDate(Camp_Dates__c.getInstance().Ladies_Rock_End__c);}}
    public static String Session1LoadIn1 { get{ return formatDate(Camp_Dates__c.getInstance().Session_One_Load_In_1__c);}}
    public static String Session1LoadIn2 { get{ return formatDate(Camp_Dates__c.getInstance().Session_One_Load_In_2__c);}}
    public static String Session1LoadOut { get{ return formatDate(Camp_Dates__c.getInstance().Session_One_Load_Out__c);}}
    public static String Session2LoadIn1 { get{ return formatDate(Camp_Dates__c.getInstance().Session_Two_Load_In_1__c);}}
    public static String Session2LoadIn2 { get{ return formatDate(Camp_Dates__c.getInstance().Session_Two_Load_In_2__c);}}
    public static String Session2LoadOut { get{ return formatDate(Camp_Dates__c.getInstance().Session_Two_Load_Out__c);}}

    public static String SessionOneStartVerbose { get{ return formatDateVerbose(Camp_Dates__c.getInstance().Session_One_Start__c); }}
    public static String SessionOneEndVerbose { get{ return formatDateVerbose(Camp_Dates__c.getInstance().Session_One_End__c);}}
    public static String SessionTwoStartVerbose { get{ return formatDateVerbose(Camp_Dates__c.getInstance().Session_Two_Start__c); }}
    public static String SessionTwoEndVerbose { get{ return formatDateVerbose(Camp_Dates__c.getInstance().Session_Two_End__c);}}

    private static String formatDate(Date d) {
        return DateTime.newInstance(d, Time.NewInstance(12,0,0,0)).format('EEEE, MM/dd/YYYY','CST6CDT');
    }

    private static String formatDateVerbose(Date d) {
        return DateTime.newInstance(d, Time.NewInstance(12,0,0,0)).format('EEEE MMMMM dd, YYYY','CST6CDT');
    }
}