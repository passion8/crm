class AddProfileRelatedInfoInUsers < ActiveRecord::Migration
  def change
    add_column :users , :first_name , :string
    add_column :users , :last_name , :string
    add_column :users , :title , :string
    add_column :users , :company , :string
    add_column :users , :phone , :string
    add_column :users , :address , :text
    add_column :users , :city , :string
    add_column :users , :state , :string
    add_column :users , :zip , :string
    add_column :users , :linkedin_url , :string
    add_column :users , :facebook_url , :string
    add_column :users , :twitter_url , :string
  end
end