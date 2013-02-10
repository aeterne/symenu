class AddAttachmentLogoToUploads < ActiveRecord::Migration
  def self.up
    change_table :uploads do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :uploads, :logo
  end
end
