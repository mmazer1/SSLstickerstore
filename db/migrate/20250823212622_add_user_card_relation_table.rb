class AddUserCardRelationTable < ActiveRecord::Migration[8.0]
  def change
    create_table :user_card_relations, id: false do |t|
      t.string :uuid, limit: 36, primary_key: true,  default: 0
      t.string :binder_id, null: false
      t.string :card_id, null: false
      t.string :pack_id, null: false

      t.timestamps
    end

  end
end
