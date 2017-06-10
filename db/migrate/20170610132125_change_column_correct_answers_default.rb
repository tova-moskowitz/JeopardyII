class ChangeColumnCorrectAnswersDefault < ActiveRecord::Migration[5.0]
  def change
    change_column_default :games, :correct_answers , 0
  end
end
