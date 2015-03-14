class AddAttachmentsToPayments < ActiveRecord::Migration
  def change
    add_attachment :payments, :screenshot
    add_attachment :payments, :check
  end
end
