class AddBaseForCards < ActiveRecord::Migration[8.0]
  def change
    create_table :binders, id: false do |t|
      t.string :uuid, limit: 36, primary_key: true, default: 0
      t.string :user_id, null: false
      t.timestamps
    end
  end
end
