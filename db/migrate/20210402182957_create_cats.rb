class CreateCats < ActiveRecord::Migration[5.2]
  def change
    create_table :cats do |t|
      t.date :birth_date, null: false
      t.string :color, null: false
      t.string :name, null: false
      t.string :sex, limit: 1, inclusion: {in: ['F', 'M']}, null: false
      t.text :description
      t.timestamps
    end

    add_index :cats, :name
  end
end
