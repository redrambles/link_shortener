class Link < ApplicationRecord
  validates :url, presence: true

  scope :recent_first, -> { order(created_at: :desc) }

  # Overwriting default find method to decode back to integer
  def self.find(id)
    super Base62.decode(id)
  end


  # Overwriting default to_param method
  # it returns a base62 encoded string instead of an id
  def to_param
    Base62.encode(id)
  end

end
