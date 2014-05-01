class CreateGoals < ActiveRecord::Migration
  def change
    create_table :goals do |t|
      t.string :title
      t.text :notes
      t.date :due_date
      t.references :contact, index: true

      t.timestamps
    end
  end
end
