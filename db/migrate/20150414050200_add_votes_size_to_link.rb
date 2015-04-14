class AddVotesSizeToLink < ActiveRecord::Migration
  def change
    add_column :links, :votes_size, :integer, default: 0
  end
end
