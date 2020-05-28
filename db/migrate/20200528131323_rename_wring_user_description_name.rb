class RenameWringUserDescriptionName < ActiveRecord::Migration[6.0]
  def change
    rename_column :users, :descriprion, :description
  end
end
