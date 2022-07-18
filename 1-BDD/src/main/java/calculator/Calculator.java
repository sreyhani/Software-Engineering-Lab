package calculator;

public class Calculator {
    public int add(int a, int b){
        return a + b;
    }

    public int subtract(int a, int b) {
        return a - b;
    }

    public int multiply(int a, int b){
        return a * b;
    }

    public int divide(int a, int b) {
        return a / b;
    }

    public int power(int base, int power) {
        int result = 1;
        for (int i = 0; i < power; i++) result = multiply(result, base);
        return result;
    }

    public int calcuate(int a, int b, char opt){
        switch (opt){
            case '+':
                return add(a,b);
            case '-':
                return subtract(a,b);
            case '/':
                return divide(a,b);
            case '*':
                return multiply(a,b);
            case '^':
                return power(a,b);
        }
        return -1;
    }
}
