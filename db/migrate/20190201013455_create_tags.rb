class CreateTags < ActiveRecord::Migration[5.2]
  def change
    create_table :tags do |t|
      t.string :title # on cree une colone title
      t.belongs_to :gossip, index: true, optional: true # on cree une colone Gossip_id pour liee chaque tag a des articles

      t.timestamps
    end
  end
end
