class Game < ApplicationRecord
  self.belongs_to :player


  def self.category_count
    category_count = Category.distinct.count('id')
    category_count
  end

  def self.get_category_ids
    cat_id = (0..self.category_count).to_a.shuffle.take(2)
    cat_id
  end

  def self.get_category_names
  end

  def self.get_clues
    category_ids = self.get_category_ids
      my_clues = Clue.where(:category_id => category_ids).to_a
      my_clues
  end

  def self.get_question_object
    my_clues = self.get_clues
    array_of_hashes = []

    my_clues.each do |clue|
      cat_name = Category.where(id: clue.category_id)[0]['title']
      airdate = Clue.where(id: clue.id)[0]['airdate']


      my_questions =
          { category_id: clue.category_id,
            airdate: airdate,
            category_name: cat_name,
            question: clue.question,
            value: clue.value,
            answer: clue.answer
          }
      array_of_hashes << my_questions
    end
    array_of_hashes
  end
end