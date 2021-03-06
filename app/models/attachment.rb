class Attachment < ApplicationRecord
  mount_uploader :file, AttachmentUploader

  validates_presence_of :file, :type

  def self.safe_attributes
    [:id, :file, :type, :description, :owner_id, :_destroy]
  end
end
