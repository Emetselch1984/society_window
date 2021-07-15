class AddInquiry < ActiveRecord::Migration[6.1]
  def change
    add_column :inquiries, :name, :string
    add_column :inquiries, :relation, :string
    add_column :inquiries, :context, :text
  end
end
