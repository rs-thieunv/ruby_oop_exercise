class BankAccount
    def initialize(account_number,name,balance)
        @account_number = account_number
        @name = name
        @balance = balance
    end
    
    def deposit(send_money)
        @send_money = send_money
        @balance = @balance + @send_money
        p "Your current balance is: #{@balance}"
    end

    def withdrawal(withdraw_money)
        @withdraw_money = withdraw_money
        @balance = @balance-(@withdraw_money + @withdraw_money*5/100)
        p "Your current balance is: #{@balance}"
    end

    def display
        p "Account number: #{@account_number}"
        p "Account name: #{@name}"
        p "Account balance: #{@balance}"
    end
    
end

account = BankAccount.new(2178514584, "Albert" , 2700)
account.withdrawal(300)
account.deposit(200)
account.display


