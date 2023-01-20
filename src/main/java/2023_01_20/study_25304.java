import java.util.Scanner;

public class study_25304 {
    public static void main(String[] args) {

        Scanner sc = new Scanner(System.in);

        int a =  sc.nextInt();
        int b =  sc.nextInt();

        for(int i = 0; i < b; i++){
            int c = sc.nextInt();
            int d = sc.nextInt();

            a = a - (c * d);
        }

        if(a == 0) System.out.println("Yes");
        else System.out.println("No");


    }
}