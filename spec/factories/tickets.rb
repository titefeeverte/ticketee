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

FactoryGirl.define do
  factory :ticket do
    title "Example ticket"
    description "An example ticket, nothing more"
  end
end
