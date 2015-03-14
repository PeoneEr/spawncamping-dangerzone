class Payment < ActiveRecord::Base
  has_attached_file :screenshot, :styles => { :medium => "300x300>", :thumb => "100x100>"  }, :default_url => "/images/:style/missing.png"
  validates_attachment_content_type :screenshot, :content_type => /\Aimage\/.*\Z/

  has_attached_file :check
  validates_attachment_content_type :check, content_type: ['application/pdf']

  validates :screenshot, presence: true
  validates :check, presence: true
  validates :title, presence: true
  validates :user_id, presence: true
  validates :period, presence: true
end

# == Schema Information
#
# Table name: payments
#
#  id                      :integer          not null, primary key
#  title                   :string
#  user_id                 :integer
#  period                  :date
#  created_at              :datetime         not null
#  updated_at              :datetime         not null
#  screenshot_file_name    :string
#  screenshot_content_type :string
#  screenshot_file_size    :integer
#  screenshot_updated_at   :datetime
#  check_file_name         :string
#  check_content_type      :string
#  check_file_size         :integer
#  check_updated_at        :datetime
#
