class ChangeImageTypeToProducts < ActiveRecord::Migration[7.0]
  def change
    add_column :products, :image_url, :text, array: true, default: []
  end
end
