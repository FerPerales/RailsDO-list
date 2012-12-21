class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :description
      t.date :dueDate

      t.timestamps
    end
  end
end
