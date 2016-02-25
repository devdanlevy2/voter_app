class AddTokenToVoter < ActiveRecord::Migration
  def change
    add_column :voters, :token, :string
    add_column :voters, :string, :string
  end
end
