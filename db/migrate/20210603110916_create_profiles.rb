class CreateProfiles < ActiveRecord::Migration[6.0]
  def change
    create_table :profiles do |t|
      t.integer    :area_id, null: false 
      t.string     :field
      t.string     :history
      t.string     :gun
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
