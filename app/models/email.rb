class Email < ActiveRecord::Base
	validates_format_of :email, :with => /@/
	validates_uniqueness_of :email
	validates :email, presence: true
end
