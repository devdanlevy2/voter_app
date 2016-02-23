class Vote < ActiveRecord::Base
  has_many: voters
  has_many: candidates
end
