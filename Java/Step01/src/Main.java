import java.util.Calendar;
import java.util.Date;

public class Main {
    public static void main(String[] args) {
        long beforetime = System.currentTimeMillis();
        System.out.println("Hello world!");
        Calendar cal = Calendar.getInstance();
        Date d = new Date(cal.getTimeInMillis());
        cal.setTime(d);
        System.out.println(d);
        System.out.println("이 해의 년도 :" + cal.YEAR);
        System.out.println("월 : "+ cal.MONTH);
        System.out.println("이 해의 몇번째 년도? : "+cal.getWeekYear());
        int sum = 0;
        for (int i = 0; i < 1000000; i++) {
            for (int j = 0; j < 50000; j++) {
                sum += i*j;
            }
        }
        System.out.println(sum);
        long aftertime = System.currentTimeMillis();
        long secDiffTime = (aftertime - beforetime)/1000;
        System.out.println("시간차이(m) : "+secDiffTime + "sec");




    }
}