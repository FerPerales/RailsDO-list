class Task < ActiveRecord::Base
  attr_accessible :description, :dueDate

  validates :description, :presence => {message: " of the task is requiered"}

  validate :due_date_cannot_be_in_the_past

  def due_date_cannot_be_in_the_past
    if !dueDate.blank? and dueDate < Date.today
      errors.add(:dueDate, "can't be in the past")
    end
  end
 

end
