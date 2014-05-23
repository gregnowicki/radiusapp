class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :contact_id
      t.datetime :date_of_task
      t.string :type
      t.boolean :complete

      t.timestamps
    end
  end
end
