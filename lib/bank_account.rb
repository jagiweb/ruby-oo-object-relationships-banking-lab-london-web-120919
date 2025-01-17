class BankAccount
    attr_reader :name
    attr_accessor :balance, :status

    def initialize(name)
     
        @name = name
        @status = "open"
        @balance = 1000
    end
    def deposit(amount)
        @balance += amount
    end
    def display_balance
        return "Your balance is $#{@balance}."
    end
    def valid?
        if @balance > 0 && @status == "open"
           true
        else 
           false
        end  
    end
    def close_account
        @status = "closed"
    end
end
