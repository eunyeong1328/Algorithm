package boj.java;

import java.util.Scanner;

public class boj_1008 {
//출력값의 절대오차 or 상대오차가 10^(-9)이하면 정답
//상대오차는 절대오차의 참값의 절대값으로 나눈  |(a-b)/a|
    public static void main(String[] arg){

        Scanner in = new Scanner(System.in);

        double A = in.nextInt();
        double B = in.nextInt();

        if(0<A & B<10) {
            System.out.println(A / B);
        }
    }
}
