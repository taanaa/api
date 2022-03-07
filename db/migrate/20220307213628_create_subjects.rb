class CreateSubjects < ActiveRecord::Migration[6.0]
  def change
    create_table :subjects do |t|
      t.string :title
      t.string :weekday
      t.integer :period

      t.timestamps
    end
  end
end
