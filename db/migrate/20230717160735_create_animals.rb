class CreateAnimals < ActiveRecord::Migration[7.0]
  def change
    create_table :animals do |t|
      t.string :aname
      t.string :string

      t.timestamps
    end
  end
end
