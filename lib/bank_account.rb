class BankAccount
  attr_reader :name 
  attr_accessor :balance, :status 
  
  def initialize(name)
    @name = name 
    @balance = 1000 
    @status = "open"
  end 
  
  def deposit(deposit_amount)
    @balance += deposit_amount
  end 
  
  def display_balance
     "Your balance is $#{self.balance}."
  end 
  
  def self.valid?(new_account)
    new_account = BankAccount.new
    if new_account.status = "open" && new_account.balance > 0 
      true 
    else
      false 
    end 
  end 

end
