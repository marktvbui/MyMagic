# == Schema Information
#
# Table name: users
#
#  id         :integer          not null, primary key
#  first_name :string
#  email      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  admin      :boolean          default("false")
#  last_name  :string
#

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
