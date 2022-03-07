class CreateLectuers < ActiveRecord::Migration[6.0]
  def change
    create_table :lectuers do |t|
      t.string :title
      t.date :date

      t.timestamps
    end
  end
end
