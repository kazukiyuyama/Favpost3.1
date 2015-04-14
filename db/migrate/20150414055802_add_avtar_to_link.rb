class AddAvtarToLink < ActiveRecord::Migration
  def change
    add_attachment :links, :avatar
  end
end
