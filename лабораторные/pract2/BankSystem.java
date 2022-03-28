package February.AuditWork;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;

import java.util.Scanner;

@Component
public class BankSystem {
    Client clientOne;
    Client clientTwo;
    Scanner sc = new Scanner(System.in);
    @Autowired
    BankSystem(@Qualifier("clientOne") Client one,@Qualifier("clientTwo") Client two){
        clientOne=one;
        clientTwo=two;
    }

    public void makeATransfer(int sendersId,int recipientsId) throws InsufficientFundsException{
            if (
                    ((sendersId == clientOne.id) && (recipientsId == clientTwo.id))
            ) {
                Client sender = clientOne;
                Client recipient = clientTwo;
                System.out.println("Сколько денег нужно перевести ?");
                System.out.printf("На вашем счету:  %d$\n",sender.getAccountValue());
                int amount = sc.nextInt();
                if (validate(sender, amount)) {
                    sender.setAccountValue(sender.getAccountValue() - amount);
                    recipient.setAccountValue(recipient.getAccountValue() + amount);
                    System.out.printf("У вас осталось %d$\n",sender.getAccountValue());
                    //Счет получателя для наглядности
                    System.out.println(recipient.getAccountValue());
                } else {
                    throw new InsufficientFundsException("❌ Мы не можем провести транзакцию так как счет отправителя пуст ,либо недостаточно средств ❌");

                }
            } else if ((sendersId == clientTwo.id) && (recipientsId == clientOne.id)) {
                Client sender = clientTwo;
                Client recipient = clientOne;
                System.out.println("Сколько денег нужно перевести ?");
                System.out.printf("На вашем счету:  %d$\n",sender.getAccountValue());
                int amount = sc.nextInt();
                if (validate(sender, amount)) {
                    sender.setAccountValue(sender.getAccountValue() - amount);
                    recipient.setAccountValue(recipient.getAccountValue() + amount);
                    System.out.printf("У вас осталось %d$\n",sender.getAccountValue());
                    //Счет получателя для наглядности
                    System.out.println(recipient.getAccountValue());
                } else {
                    throw new InsufficientFundsException("❌ Мы не можем провести транзакцию так как счет отправителя пуст ,либо недостаточно средств ❌");
                }

            } else {
                System.out.println("Мы не можем провести транзакцию ");
            }

    }
    public Boolean validate(Client sender,int moneyToTransfer){
        return sender.getAccountValue() >= moneyToTransfer;
    }



}
