@isTest
   public class Calculator_Tests {

@isTest
 public static void addition() {
    Calculator.addition(1, 0);
   }
@isTest
  public static void subtraction() {
    Calculator.subtraction(1, 0);
   }

@isTest
 public static void divide_throws_exception_for_division_by_zero() {
 Boolean caught = false;
 try {
    Calculator.divide(1, 0);
  } catch (Calculator.CalculatorException e) {
    System.assertEquals('you still can\'t divide by zero', e.getMessage(), 
  'caught the right exception');
    caught = true;
   }
   System.assert(caught, 'threw expected exception');
   }

  @isTest
 public static void divide_throws_exception_for_division_by_two() {
 Boolean caught = true;
 try {
    Calculator.divide(1, 2);
 } catch (Calculator.CalculatorException e) {
    System.assertEquals('you still can\'t divide by zero', e.getMessage(), 
  'caught the right exception');
    caught = true;
   }
   System.assert(caught, 'threw expected exception');
 }


@isTest
public static void multiply_by_one() {
  Boolean caught = false;
  try {
    Calculator.multiply(1, 0);
    } catch (Calculator.CalculatorException e) {
    System.assertEquals('It doesn\'t make sense to multiply by zero', 
    e.getMessage(), 'caught the right exception');
     caught = true;
    }
    System.assert(caught, 'threw expected exception');
  }

@isTest
 public static void multiply_by_two() {
  Boolean caught = true;
  try {
     Calculator.multiply(1, 2);
   } catch (Calculator.CalculatorException e) {
    System.assertEquals('It doesn\'t make sense to multiply by zero', 
  e.getMessage(), 'caught the right exception');
    caught = true;
   }
   System.assert(caught, 'threw expected exception');
}   
       @isTest
    public static void divide_throws_exception_for_negative_number() {
        Boolean caught = true;
        try {
            Calculator.divide(-1, 2);
        } catch (Calculator.CalculatorException e) {
            System.assertEquals('negative value(s) not allowed.',e.getMessage());
            caught = true;
        }
        System.assert(caught, 'threw expected exception');
    }
}