class CreateUsers < ActiveRecord::Migration[5.0]
  # Old way you setup both
#    def up
#  create_table :users do |t|
#	t.string :name
#      end
#    end
#    def down
#      droop_table :users
#    end

  # New Way..... Change rolls back automatically
#  end
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :password
      t.string :phone

      t.timestamps
    end
  end
end
