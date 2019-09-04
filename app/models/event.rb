class Event < ApplicationRecord
  belongs_to :user
  validate :event_start_date_cannot_be_in_the_past
  validates :event_name, presence: true
  validates :event_description, presence: true
  validates :event_start_date, presence: true
  validates :status, presence: true
  
  def event_start_date_cannot_be_in_the_past
    if self.status.eql?('publish') && self.event_start_date < Date.today
      errors.add(:event_start_date, "can't be in the past")
    end
  end   
end
