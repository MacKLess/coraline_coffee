class CreateCoffees < ActiveRecord::Migration[5.1]
  def change
    create_table :coffees do |t|
      t.column :blend_name, :string
      t.column :origin, :string
      t.column :cost, :integer
      t.column :variety, :string
      t.column :notes, :string

      t.timestamps
    end
  end
end
