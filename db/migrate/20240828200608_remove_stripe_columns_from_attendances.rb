class RemoveStripeColumnsFromAttendances < ActiveRecord::Migration[6.1]
  def change
    remove_column :attendances, :stripe_customer_id, :string
  end
end
