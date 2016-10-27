class CreateItemizes < ActiveRecord::Migration[5.0]
  def change
    create_table :itemizes do |t|
      t.references :item, foreign_key: true
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end
