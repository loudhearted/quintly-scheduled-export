class EmailValidator < ActiveModel::EachValidator
  def validate_each(record, attribute, value)
    unless value =~ /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
      record.errors[attribute] << (options[:message] || "is not an email")
    end
  end
end

class Subscription < ActiveRecord::Base
  validates :email, presence: true, email: true
  validates :cron, presence: true
  
  scope :quintly, where (vendor: 'Quintly')
end
