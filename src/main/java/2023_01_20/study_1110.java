import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner sc = new Scanner(System.in);

        int n = sc.nextInt();

        int j = 0;
        int c = n;

        while (true) {
            n = ((n % 10) * 10) + (((n / 10) +(n % 10)) % 10);
            j++;

            if( c ==n){
                break;
            }
        }

        System.out.println(j);
    }
}