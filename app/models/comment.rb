# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  title      :string
#  text       :text
#  profile_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
# Indexes
#
#  index_comments_on_profile_id  (profile_id)
#

class Comment < ApplicationRecord
	belongs_to :profile


end
