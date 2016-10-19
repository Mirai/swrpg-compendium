Career.seed(:name) do |c|
  c.name = "Consular"
  c.career_skills = ["Cool", "Discipline", "Knowledge (Education)", "Knowledge (Lore)", "Leadership", "Negotiation"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 66
end

Career.seed(:name) do |c|
  c.name = "Guardian"
  c.career_skills = ["Brawl", "Cool", "Discipline", "Melee", "Resilience", "Vigilance"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 72
end

Career.seed(:name) do |c|
  c.name = "Mystic"
  c.career_skills = ["Charm", "Coercion", "Knowledge (Lore)", "Knowledge (Outer Rim)", "Perception", "Vigilance"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 78
end

Career.seed(:name) do |c|
  c.name = "Seeker"
  c.career_skills = ["Knowledge (Xenology)", "Piloting (Planetary)", "Piloting (Space)", "Ranged (Heavy)", "Survival", "Vigilance"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 84
end

Career.seed(:name) do |c|
  c.name = "Sentinel"
  c.career_skills = ["Computers", "Deception", "Knowledge (Core Worlds)", "Perception", "Skulduggery", "Stealth"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 90
end

Career.seed(:name) do |c|
  c.name = "Warrior"
  c.career_skills = ["Athletics", "Brawl", "Cool", "Melee", "Perception", "Survival"]
  c.force_rating = 1
  c.source = Source.find_by(product_code: "SWF02")
  c.page_number = 96
end
