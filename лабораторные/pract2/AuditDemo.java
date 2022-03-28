package February.AuditWork;

import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class AuditDemo {
    public static void main(String[] args) {
        try{
            AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext(configBankSystem.class);
            BankSystem  bankSystem = context.getBean(BankSystem.class);
            bankSystem.makeATransfer(12367,76598);
            context.close();
        }catch (InsufficientFundsException insufficientFundsException){
            System.out.println(insufficientFundsException);
        }


    }
}
