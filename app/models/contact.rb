class Contact < ApplicationRecord
  has_many :notes 
  has_one :address
  validates :name, :email, presence: true
  validates :age, numericality: {greater_than_or_equal_to: 21}
  validates :email, uniqueness: true

  # class method.  
  # Have to start with self.
  #Called on the human
  def self.total_contacts
    #sef refers to the class contact
    self.all.size
    #Contact.all.size
  end

  # instance method
  #Called on the individual
  def about_me
    # self refers to the instance calling the method
    "Hello I am #{self.name}"
  end

  #gives away the length of the secret 
  def get_secret_info
    secret = something_secret
    recret.length
  end


private
# can't call outside of the class 
def something_secret
  'secret here 123456'
end


end
