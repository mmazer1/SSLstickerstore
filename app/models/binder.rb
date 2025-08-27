class Binder < ActiveRecord::Base
  include UuidHelper

  has_paper_trail

  validates :uuid, presence: true, uniqueness: true, length: { is: 36 }

  delegate :user_id, to: :user, allow_nil: false
  belongs_to :user, primary_key: 'uuid', foreign_key: 'user_id', inverse_of: :binders
  has_many :user_card_relations, primary_key: 'uuid', foreign_key: 'binder_id', inverse_of: :binder, dependent: :destroy

end