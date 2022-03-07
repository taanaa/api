class CreateApi1s < ActiveRecord::Migration[6.0]
  def change
    create_table :api1s do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end
