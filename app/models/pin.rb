class Pin < ApplicationRecord
  acts_as_votable cacheable_strategy: :update_columns
  belongs_to :user

  has_attached_file :image, styles: { medium: "300x300>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/
end
