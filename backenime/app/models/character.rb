
class Character < ApplicationRecord
  belongs_to :anime

  enum sex: {
    male: "Male",
    female: "Female",
    non_binary: "Non-Binary"
  }, _prefix: true

  enum origin: {
    human: "Human",
    shinigami: "Shinigami",
    ghost: "Ghost",
    demon: "Demon",
    elf: "Elf",
    dragon: "Dragon",
    oni: "Oni",
    human_hybrid: "Human Hybrid",
    giant: "Giant",
    fairy: "Fairy",
    tall_men: "Tall-men",
    half_elf: "Half-elf",
    half_foot: "Half-foot",
    dwarf: "Dwarf",
    beast_men: "Beast-men",
    god: "God",
    pallum: "Pallum",
    xenos: "Xenos",
    amazoness: "Amazoness",
    vampire: "Vampire",
    cyborg: "Cyborg",
    hybrid: "Hybrid",
    snow_woman: "Snow Woman",
    dullahan: "Dullahan",
    succubus: "Succubus",
    witch: "Witch",
    tengu: "Tengu",
    demi_god: "Demi God"
  }, _prefix: true

  enum age_group: {
    age_0_11: "0-11",
    age_12_18: "12-18",
    age_19_30: "19-30",
    age_31_50: "31-50",
    age_51_70: "51-70",
    age_71_99: "71-99",
    age_100_plus: "100+"
  }, _prefix: true

  enum difficulty: {
    a: "A",
    b: "B",
    c: "C",
    d: "D",
    e: "E",
    v: "V"
  }, _prefix: true
end
