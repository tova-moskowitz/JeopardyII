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
    #todo needs refactoring. Only use category_ids which meet criteria of having 5 clues with the same airdate
    cat_ids = self.get_category_ids
    my_clues = []

    cat_ids.each do |cat_id|
      airdate = Clue.where(category_id: cat_id)[0]['airdate']

      all_the_clues = Clue.where(category_id: cat_id, airdate: airdate).order(:value).limit(5).to_a.length == 5 ? Clue.where(category_id: cat_id, airdate: airdate).order(:value).limit(5).to_a : Clue.where(category_id: (0..self.category_count).to_a.shuffle.take(1), airdate: airdate).order(:value).limit(5).to_a

      five_clues = all_the_clues.length < 5 ? Clue.where(category_id: cat_id, airdate: airdate).order(:value).limit(5).to_a : all_the_clues

          my_clues << my_clues += five_clues
      binding.pry
    end

    my_clues
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