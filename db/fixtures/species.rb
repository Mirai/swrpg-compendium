swf02 = Source.find_by(product_code: "SWF02")

cerean = Species.seed(:name) do |s|
  s.name = "Cerean"
  s.brawn = 2
  s.agility = 1
  s.intellect = 3
  s.cunning = 2
  s.willpower = 2
  s.presence = 2
  s.wound_threshold = 10
  s.strain_threshold = 13
  s.starting_experience = 90
  s.skill_bonus = "Cereans begin the game with one rank in Vigilance. They still may not train Vigilance aboev rank 2 during character creation."
  s.abilities = [{name: "Binary Processing", description: "Cereans treat all Knowledge skills as career skills."}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = cerean.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 54
end

human = Species.seed(:name) do |s|
  s.name = "Human"
  s.brawn = 2
  s.agility = 2
  s.intellect = 2
  s.cunning = 2
  s.willpower = 2
  s.presence = 2
  s.wound_threshold = 10
  s.strain_threshold = 10
  s.starting_experience = 110
  s.skill_bonus = "Humans start the game with one rank each in two different non-career skills of their choice. They still may not train these skills above rank 2 at character creation."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = human.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 55
end

kel_dor = Species.seed(:name) do |s|
  s.name = "Kel Dor"
  s.brawn = 1
  s.agility = 2
  s.intellect = 2
  s.cunning = 2
  s.willpower = 3
  s.presence = 2
  s.wound_threshold = 10
  s.strain_threshold = 10
  s.starting_experience = 100
  s.skill_bonus = "Kel Dors begin the game with one rank in Knowledge (Education). They still may not train Knowledge (Education) above rank 2 during character creation."
  s.abilities = [
    {name: "Dark Vision", description: "When making skill checks, Kel Dors remove up to [setback][setback] imposed due to darkness."},
    {name: "Atmospheric Requirement", description: "Kel Dors must wear a specialized mask to breathe and see outside of their native atmosphere. A Kel Dor character starts the game with an antitox breath mask and treats oxygen as a dangerous atmosphere with Rating 8. However, Kel Dors may survive in vacuum for up to five minutes before suffering its effect."}
  ]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = kel_dor.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 57
end

mirialan = Species.seed(:name) do |s|
  s.name = "Mirialan"
  s.brawn = 2
  s.agility = 3
  s.intellect = 2
  s.cunning = 1
  s.willpower = 2
  s.presence = 2
  s.wound_threshold = 11
  s.strain_threshold = 10
  s.starting_experience = 100
  s.skill_bonus = "Mirialans begin the game with one rank in Discipline and one rank in Cool. They still may not train Discipline or Cool above rank 2 during character creation."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = mirialan.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 58
end

nautolan = Species.seed(:name) do |s|
  s.name = "Nautolan"
  s.brawn = 3
  s.agility = 2
  s.intellect = 2
  s.cunning = 2
  s.willpower = 1
  s.presence = 2
  s.wound_threshold = 11
  s.strain_threshold = 9
  s.starting_experience = 100
  s.skill_bonus = "Nautolans begin the game with one rank in Athletics. They still may not train Athletics above rank 2 during character creation."
  s.abilities = [{name: "Amphibious", description: "Nautolans may breath underwater without penalty and never suffere movement penalties for traveling through water."}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = nautolan.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 59
end

togruta = Species.seed(:name) do |s|
  s.name = "Togruta"
  s.brawn = 1
  s.agility = 2
  s.intellect = 2
  s.cunning = 3
  s.willpower = 2
  s.presence = 2
  s.wound_threshold = 10
  s.strain_threshold = 10
  s.starting_experience = 100
  s.skill_bonus = "Togrutas begin the game with one rank in Perception. They still may not train Perception above rank 2 during character creation."
  s.abilities = [{name: "Pack Instincts", description: "When performing the assist maneuver, Togrutas grant [boost][boost] instead of [boost]."}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = togruta.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 60
end

twilek = Species.seed(:name) do |s|
  s.name = "Twi'lek"
  s.brawn = 1
  s.agility = 2
  s.intellect = 2
  s.cunning = 2
  s.willpower = 2
  s.presence = 3
  s.wound_threshold = 10
  s.strain_threshold = 11
  s.starting_experience = 100
  s.skill_bonus = "Twi'leks begin the game with one rank in either Charm or Deception. They still may not train Charm or Deception above rank 2 during character creation."
  s.abilities = [{name: "Desert Dwellers", description: "When making skill checks, Twi'leks may remove [setback] imposed due to arid or hot environmental conditions."}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = twilek.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 61
end

zabrak = Species.seed(:name) do |s|
  s.name = "Zabrak"
  s.brawn = 2
  s.agility = 2
  s.intellect = 2
  s.cunning = 2
  s.willpower = 3
  s.presence = 1
  s.wound_threshold = 10
  s.strain_threshold = 10
  s.starting_experience = 100
  s.skill_bonus = "Zabrak begin the game with one rank in Survival. They still may not train Survival above rank 2 during character creation."
  s.abilities = [{name: "Fearsome Countenance", description: "Zabrak add automatic [advantage] to all Coercion checks they make."}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = zabrak.first.id
  sa.sourceable_type = 'Species'
  sa.source_id = swf02.id
  sa.page_number = 62
end
