class ShortenedUrl < ApplicationRecord
  validates :short_url, uniqueness: true, presence: true

  belongs_to :submitter,
             primary_key: :id,
             foreign_key: :user_id,
             class_name: :User

  has_many :visits,
           primary_key: :id,
           foreign_key: :shortened_url_id,
           class_name: :Visit

  has_many :visitors,
           through: :visits,
           source: :users

  def self.random_code
    loop do
      random_code = SecureRandom.urlsafe_base64
      return random_code unless exists?(short_url: random_code)
    end
  end

  def self.create_short_url(user, long_url)
    ShortenedUrl.create!(user_id: user.id,
                         long_url: long_url,
                         short_url: ShortenedUrl.random_code)
  end

  def num_clicks

  end

  def num_uniques

  end

  def num_recent_uniques

  end
end
