class Streak < ApplicationRecord
  enum game_mode: {
    character_quiz: "CharacterQuiz",
    anime_quiz: "AnimeQuiz",
    image_quiz: "ImageQuiz",
    blurred_image_quiz: "BlurredImageQuiz"
  }, _prefix: true
end
