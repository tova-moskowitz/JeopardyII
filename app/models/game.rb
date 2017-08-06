class Game < ApplicationRecord
  self.belongs_to :player


  def self.category_count
    category_count = Category.distinct.count('id')
    category_count
  end

  def self.get_category_ids
    cat_ids = (0..self.category_count).to_a.shuffle.take(4)
    cat_ids
  end

  def self.get_clues
    twenty_clues = []
    all_ids = self.get_category_ids

    all_ids.each do |single_id|
      airdate = Clue.where(category_id: single_id)[0][:airdate]
      five_clues = Clue.where(category_id: single_id, airdate: airdate)
      twenty_clues << twenty_clues += five_clues
    end
    twenty_clues
  end

  def self.get_question_object
    my_clues = self.get_clues
    array_of_arrays = []

    my_clues.each do |clue|
      cat_name = Category.where(id: clue.category_id)[0]['title']
      cat_name =
          [
              category_id: clue.category_id,
              airdate: clue.airdate,
              category_name: cat_name,
              question: clue.question,
              value: clue.value,
              answer: clue.answer
          ]
      array_of_arrays << array_of_arrays += cat_name
    end
    array_of_arrays
  end

end