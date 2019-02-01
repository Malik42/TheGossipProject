class CreateGossips < ActiveRecord::Migration[5.2]
  def change
    create_table :gossips do |t|
      t.string :title # on cree une table title
      t.text :content
      t.belongs_to :user, index: true, optional: true #on fait le lien entre l'user et le gossip, pour avoir un user associer a chaque gossip

      t.timestamps
    end
  end
end
