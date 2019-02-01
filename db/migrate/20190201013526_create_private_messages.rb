class CreatePrivateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :private_messages do |t|
      t.text :content
      t.reference :recipient, index: true
      t.reference :sender, index: true

      t.timestamps
    end
  end
end
