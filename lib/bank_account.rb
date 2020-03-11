class BankAccount
  attr_reader :name 
  attr_accessor :balance, :status 
  
  def initialize(name, balance = 1000, status = "open")
    @name = name 
    @balance = balance 
    @status = status 
  end 
  
  def deposit(deposit_amount)
    @balance += deposit_amount
  end 
  
  def display_balance
     "Your balance is $#{self.balance}."
  end 
  
  def self.valid?
    self.status == "open" && self.balance > 0 ? true : false
      true 
    else
      false 
    end 
  end 

end
