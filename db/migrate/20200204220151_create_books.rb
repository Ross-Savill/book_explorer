class CreateBooks < ActiveRecord::Migration[5.2]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.date :date
      t.text :uuid
      t.string :publisher_name

      t.timestamps
    end
  end
end
