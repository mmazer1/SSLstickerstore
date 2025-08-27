class AddStickerBase < ActiveRecord::Migration[8.0]
  def change
    create_table :stickers, id: false do |t|
      t.string :uuid, limit: 36, primary_key: true
      t.string :name, null: false
      t.string :image_url, null: false
      t.string :rarity, null: false
      t.timestamps
    end
  end
end
