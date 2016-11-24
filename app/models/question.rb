class Question < ApplicationRecord
  belongs_to :survey, required: false #http://stackoverflow.com/questions/39359168/rails-nested-form-error-child-must-exist
  has_many :answers, :dependent => :destroy
  accepts_nested_attributes_for :answers, :reject_if => lambda { |a| a[:content].blank? }, :allow_destroy => true
end
