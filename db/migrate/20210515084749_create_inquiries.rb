class CreateInquiries < ActiveRecord::Migration[6.1]
  def change
    create_table :inquiries do |t|
      t.text :email ,null: false
      t.timestamps
    end
  end
end
