class AddTimestamps < ActiveRecord::Migration[5.2]
  def change
    add_timestamps :users
    add_timestamps :polls
    add_timestamps :questions
    add_timestamps :answer_choices
    add_timestamps :responses
  end
end
