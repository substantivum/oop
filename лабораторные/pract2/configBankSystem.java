package February.AuditWork;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.*;

@Configuration
@ComponentScan("February.AuditWork")
@EnableAspectJAutoProxy
public class configBankSystem {
    @Bean
    public Client clientOne(){
        return new Client(12367);
    }
    @Bean
    public Client clientTwo(){
        return new Client(76598);
    }
    @Bean
    public BankSystem bankSystem(){
        return new BankSystem(clientOne(),clientTwo());
    }
}

