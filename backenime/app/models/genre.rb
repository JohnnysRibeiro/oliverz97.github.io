class Genre < ApplicationRecord
  enum genre_type: {
    genre: 'Genre',
    subgenre_1: 'Subgenre1',
    subgenre_2: 'Subgenre2'
  }, _prefix: true
end
