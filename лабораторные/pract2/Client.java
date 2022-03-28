package February.AuditWork;

import jdk.nashorn.internal.objects.annotations.ScriptClass;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Component;

@Component
@Scope("prototype")
public class Client {
    public int id;
    @Value("10000")
    private int accountValue ;

    Client(int id){
        this.id=id;
    }

    public int getAccountValue() {
        return accountValue;
    }

    public void setAccountValue(int accountValue) {
        this.accountValue = accountValue;
    }
}
