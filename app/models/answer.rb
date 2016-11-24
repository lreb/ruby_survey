class Answer < ApplicationRecord
  belongs_to :question, required: false
end
