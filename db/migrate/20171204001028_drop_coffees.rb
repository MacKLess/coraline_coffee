class DropCoffees < ActiveRecord::Migration[5.1]
  def up
    create_table :products do |t|
      t.column :blend_name, :string
      t.column :origin, :string
      t.column :cost, :integer
      t.column :variety, :string
      t.column :notes, :string

      t.timestamps
    end
  end

  def down
    drop_table :coffees
  end
end
