class CreateUserWishes < ActiveRecord::Migration
  def change
    create_table :user_wishes do |t|

      t.timestamps
    end
  end
end
