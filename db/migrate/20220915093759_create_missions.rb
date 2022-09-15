class CreateMissions < ActiveRecord::Migration[7.0]
  def change
    create_table :missions do |t|
      t.string :mission_type
      t.date :date
      t.integer :price, default: 0
      t.references :listing, null: false, foreign_key: true

      t.timestamps
    end
  end
end
