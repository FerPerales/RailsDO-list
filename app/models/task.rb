class Task < ActiveRecord::Base
  attr_accessible :description, :dueDate
end
