public class Test {
    static int smithNum(int n) {
        int n1 = n;
        int smith = 0;
        int sumOfDigits = 0;
        int sumOfPrimeFactors = 0;
        int two = 0;
        int three = 0;
        int five = 0;
        int seven = 0;
        while (n > 0) {
            sumOfDigits += n % 10;
            n = n / 10;
        }
        while (n1 > 0) {
            if (n1 % 2 == 0) {
                n1 = n1 / 2;
                two++;
                System.out.println("value of two : "+two);
            } else {continue;}
            if (n1 / 3 >= 1) {
                n1 = n1 / 3;
                three++;
            } else {continue;} 
            if (n1 / 5 >= 1) {
                n1 = n1 / 5;
                five++;
            } else {continue;}
            if (n1 / 7 >= 1) {
                n1 = n1 / 7;
                seven++;
            } else {continue;}
            System.out.println("value of two here is : "+two);
            sumOfPrimeFactors = (2*two) + (3 * three) + (5 * five) + (7 * seven)+1;
            if (sumOfDigits == sumOfPrimeFactors) {
                return smith=sumOfDigits/sumOfPrimeFactors;
            }else{
                return smith;
            }
        }
        return smith;
    }

    public static void main(String[] args) {
        System.out.println("main method");
        int smith = Test.smithNum(378);
        System.out.println("smith number is : "+smith);
    }
}
