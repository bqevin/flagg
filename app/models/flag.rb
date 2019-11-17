class Flag < ApplicationRecord
  belongs_to :user
  belongs_to :organization
  validates_presence_of :title, uniqueness: true
  validates_presence_of :description

  include PgSearch
  pg_search_scope :search, against: [:title]

  def self.text_search(query)
    if query.present?
      search(query)
    end
  end
end
