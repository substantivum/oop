package February.AuditWork;

import org.aspectj.lang.annotation.*;

import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;

@Component
@Aspect
public class BankSystemAspect {
    @Pointcut("execution(public void February.AuditWork.BankSystem.makeATransfer(..))")
    private void allVariantsOfMakeATransfer(){}


    @Before("allVariantsOfMakeATransfer()")
    public void beforeAccord(){
        System.out.println(">>Банк проверяет соответствие отправителя и получателя>>\n");
    }
    @Before("allVariantsOfMakeATransfer()")
    public void beforeSolvency(){
        System.out.println(">>Банк проверяет баланс вашего счета>>\n");
    }
    @AfterThrowing("allVariantsOfMakeATransfer()")
    public void rollback(){
        System.out.println(">>банк откатил операцию перевода средств>>\n");
    }
    @AfterReturning("allVariantsOfMakeATransfer()")
    public void success(){
        System.out.println(">>банк успешно выполнил перевод средств>>\n");
    }







}
