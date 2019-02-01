class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name # on cree une colone first name
      t.string :last_name
      t.text :description
      t.string :email
      t.integer :age
      t.belongs_to :city, index: true, optional: true # on cree une colone city_id pour liee une ville a l'user

      t.timestamps
    end
  end
end
