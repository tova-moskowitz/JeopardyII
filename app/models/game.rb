class Game < ApplicationRecord
  self.belongs_to :player


  def self.category_count
    category_count = Category.distinct.count('id')
    category_count
  end

  def self.get_category_ids
    cat_ids = (0..self.category_count).to_a.shuffle.take(3)
    cat_ids
  end

  def self.get_categories
    all_ids = self.get_category_ids
    all_categories = []

    all_ids.each do |single_id|
      category_name = Category.where(id: single_id)[0].title
      airdate = Clue.where(category_id: single_id)[0].airdate
      clues = [category_name => [Clue.where(category_id: single_id, airdate: airdate)]]
      all_categories += clues
    end
    all_categories
  end

  # check if any fields are empty or any categories are missing clues. If either are true, get new ids and categories
  def self.check_for_empties
    categories = self.get_categories
    missing_array = []

    categories.each do |category|
      category_name = category.keys[0]
      category[category_name][0].each do |cat|
        value_missing = cat.value.blank?
        question_missing = cat.question.blank?
        answer_missing = cat.answer.blank?
        missing_array << value_missing << question_missing << answer_missing
      end
    end
    if missing_array.include?(true) || missing_array.length % 5 != 0
      self.check_for_empties
    else
       categories
    end
  end

end
