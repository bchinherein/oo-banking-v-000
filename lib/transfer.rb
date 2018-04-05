class Transfer
  attr_accessor :sender, :receiver, :amount, :status
  def initialize(sender, receiver, amount)
    @sender = sender
    @receiver = receiver
    @amount = amount
    @status = "pending"
  end

  def valid?
    if sender.BankAccount.valid?(sender) && receiver.BankAccount.valid?(receiver)
      true
    else
      false
    end
  end #def valid?

end #class Transfer
