class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content #on cree une table dans laquel on stock le message
      t.references :recipient, index: true # je fait en sorte que chque message soit liee a son destinataire
      t.references :sender, index: true # je fait en sorte que els messages soit liee a l'expediteur

      t.timestamps
    end
  end
end
