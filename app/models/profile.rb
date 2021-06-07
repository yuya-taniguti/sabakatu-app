class Profile < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :area
  has_one_attached :image
  belongs_to :usre

  def was_attached?
    self.image.attached?
  end
end
