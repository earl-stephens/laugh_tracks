class ChangeSpecialsColumnName < ActiveRecord::Migration[5.1]
  def change
    rename_column :specials, :name, :title
  end
end
