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
    all_clues = []
    all_ids = self.get_category_ids

    all_ids.each do |single_id|
      category_name = Category.where(id: single_id)[0][:title]
      airdate = Clue.where(category_id: single_id)[0][:airdate]
      clues = [category_name => [Clue.where(category_id: single_id, airdate: airdate)]]
      all_clues += clues
    end
    all_clues
  end


end
