class AddAttachmentImageToPics < ActiveRecord::Migration[6.1]
  def self.up
    # change_table :pics do |t|
    #   t.attachment :image
    # end

    add_column :pics, :image_file_name, :string
    add_column :pics, :image_file_size, :integer
    add_column :pics, :image_content_type, :string
    add_column :pics, :image_updated_at, :datetime

  end

  def self.down
    # remove_attachment :pics, :image
    
    remove_column :pics, :image_file_name, :string
    remove_column :pics, :image_file_size, :integer
    remove_column :pics, :image_content_type, :string
    remove_column :pics, :image_updated_at, :datetime
  end
end
