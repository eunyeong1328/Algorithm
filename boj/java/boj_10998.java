package boj.java;

import java.util.Scanner;

public class boj_10998 {
    public static void main(String[] args){

        Scanner in = new Scanner(System.in);
        int A = in.nextInt();
        int B = in.nextInt();

        if(0<A && B<10) {
            System.out.println(A*B);
        }

        in.close();
    }
}
