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

require 'rails_helper'

RSpec.describe Ticket, :type => :model do

# 1er voir si le ticket se sauve
  pending "add some examples to (or delete) #{__FILE__}"
end
