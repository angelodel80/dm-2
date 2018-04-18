class Project < ApplicationRecord
  belongs_to :owner, class_name: 'User', optional: true
  has_many :documents, as: :parent
  has_many :document_folders, as: :parent

  def contents_children
    self.documents + self.document_folders
  end
end