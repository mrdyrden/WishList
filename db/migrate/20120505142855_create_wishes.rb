class CreateWishes < ActiveRecord::Migration
  def change
    create_table :wishes do |t|
      t.string :name

      t.timestamps
    end
  end
end
