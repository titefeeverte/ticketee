# == Schema Information
#
# Table name: tickets
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  description :text(65535)
#  ∖           :string(255)
#  project_id  :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#  author_id   :integer
#

class Ticket < ActiveRecord::Base
  belongs_to :project
  validates :title, presence: true
  validates :description, presence: true,
  						  length: { minimum: 10 }
  						  belongs_to :project
  						  belongs_to :author, class_name: "User"

end
