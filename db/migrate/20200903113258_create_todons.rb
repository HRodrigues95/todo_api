class CreateTodons < ActiveRecord::Migration[6.0]
  def change
    create_table :todons do |t|
      t.string :title
      t.text :description
      t.date :end

      t.timestamps
    end
  end
end
