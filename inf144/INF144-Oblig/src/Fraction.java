import java.math.BigInteger;

/**
 * Created by sifu on 22/03/18.
 */
public class Fraction {
    private int numerator;
    private int denominator;

    Fraction(int numerator, int denominator) {
        if (denominator == 0) {
            throw new IllegalArgumentException("Tried to make fraction with 0 as denominator");
        }
        this.numerator = numerator;
        this.denominator = denominator;
    }

    public static Fraction add(Fraction f1, Fraction f2) {
        int d = f1.getDenominator() * f2.getDenominator();
        int nTemp1 = f1.getNumerator()*f2.getDenominator();
        int nTemp2 = f2.getNumerator()*f1.getDenominator();
        int n = nTemp1 + nTemp2;
        return new Fraction(n, d);
    }

    public static Fraction reduceFraction(Fraction f){
        int n = f.getNumerator();
        int d = f.getDenominator();
        while (d != 0) {
            int r = n % d;
            n = d;
            d = r;
        }
        return new Fraction(f.getNumerator()/n, n);
    }

    public int getNumerator() {
        return numerator;
    }

    public int getDenominator() {
        return denominator;
    }

    @Override
    public String toString() {
        return numerator + "/" + denominator;
    }
}
