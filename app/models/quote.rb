class Quote < ApplicationRecord
  after_create :count

  def count
    arr = quote.split("")
    arr.each do |c|
      characters[c] ||= 0
      characters[c] += 1
    end
    save
  end

end
