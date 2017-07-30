class Game < ApplicationRecord
  self.belongs_to :player


  def self.category_count
    category_count = Category.distinct.count('title')
  end

  def self.get_category_ids
    cat_id = (0..self.category_count).to_a.shuffle.take(2)
  end

  def self.get_clues
    self.get_category_ids.each do |category_id|
      clue_obj = Clue.find(category_id)
    end
  end

  def self.get_questions
    self.get_clues.each do |clue|
      question = clue
       question
    end
  end

  def self.get_values
  end
  def self.get_answers
  end
end
