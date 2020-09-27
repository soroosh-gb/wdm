class CreateBeats < ActiveRecord::Migration[6.0]
  def change
    create_table :beats do |t|
      t.belongs_to :user, null: false, foreign_key: true
      t.string :name
      t.integer :tempo
      t.string :steps

      t.timestamps
    end
  end
end
