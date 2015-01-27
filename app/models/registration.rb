class Registration < ActiveRecord::Base
	validates :name, :email, :dob, :password, :gender, :lastname, presence: true
	validates :email, uniqueness: {message: "This email is already present in our database" }
	#alidates :email, confirmation: true
   # validates :email_confirmation, presence: true
end
