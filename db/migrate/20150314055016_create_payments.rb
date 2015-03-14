class CreatePayments < ActiveRecord::Migration
  def change
    create_table :payments do |t|
      t.string :title
      t.belongs_to :user
      t.date :period
      t.timestamps null: false
    end
  end
end
