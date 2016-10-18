advozse = Adversary.seed(:name) do |a|
  a.name = "Advozse Mercenaries"
  a.adversary_type = Adversary.adversary_types[:rival]
  a.brawn = 2
  a.agility = 3
  a.intellect = 2
  a.cunning = 2
  a.willpower = 1
  a.presence = 1
  a.soak = 4
  a.wound_threshold = 8

  a.skills = [
    {skill: "Cool", rank: 0},
    {skill: "Discipline", rank: 0},
    {skill: "Ranged (Light)", rank: 1},
    {skill: "Vigilance", rank: 1}
  ]

  a.equipment = [
    {name: "Blaster Pistol", skill: "Ranged (Light)", damage: 6, range: "Medium", crit_rating: 3},
    {name: "Vibroknife", skill: "Melee", damage: 3, range: "Engaged", crit_rating: 2, weapon_quallities: "Pierce 2"},
    {name: "Blast Vest", soak: "+2"},
    {name: "Comlink"}
  ]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = advozse.first.id
  sa.sourceable_type = 'Adversary'
  sa.source_id = Source.find_by(product_code: "SWF01").id
  sa.page_number = 21
end

gatekeeper = Adversary.seed(:name) do |a|
  a.name = "The Gatekeeper, Echo of a Long-Dead Jedi Master"
  a.adversary_type = Adversary.adversary_types[:rival]
  a.intellect = 3
  a.cunning = 2
  a.willpower = 3
  a.presence = 2

  a.skills = [
    {skill: "Cool", rank: 1},
    {skill: "Discipline", rank: 1},
    {skill: "Knowledge", rank: 2}
  ]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = gatekeeper.first.id
  sa.sourceable_type = 'Adversary'
  sa.source_id = Source.find_by(product_code: "SWF01").id
  sa.page_number = 13
end

hunters = Adversary.seed(:name) do |a|
  a.name = "Hunters"
  a.adversary_type = Adversary.adversary_types[:rival]
  a.brawn = 2
  a.agility = 3
  a.intellect = 2
  a.cunning = 2
  a.willpower = 1
  a.presence = 1
  a.soak = 3
  a.wound_threshold = 6

  a.skills = [{skill: "Ranged (Heavy)", rank: 1}]
  a.equipment = [
    {name: "Slugthrower Rifle", skill: "Ranged (Heavy)", damage: 7, range: "Medium"},
    {name: "Heavy Fur Clothes", soak: "+1"}
  ]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = hunters.first.id
  sa.sourceable_type = 'Adversary'
  sa.source_id = Source.find_by(product_code: "SWF01").id
  sa.page_number = 14
end

malefax = Adversary.seed(:name) do |a|
  a.name = "Malefax"
  a.adversary_type = Adversary.adversary_types[:nemesis]
  a.brawn = 3
  a.agility = 3
  a.intellect = 2
  a.cunning = 3
  a.willpower = 2
  a.presence = 1
  a.soak = 3
  a.wound_threshold = 14
  a.strain_threshold = 14

  a.skills = [
    {skill: "Brawl", rank: 1},
    {skill: "Coercion", rank: 3},
    {skill: "Cool", rank: 0},
    {skill: "Coordination", rank: 1},
    {skill: "Deception", rank: 2},
    {skill: "Discipline", rank: 2},
    {skill: "Melee", rank: 2},
    {skill: "Perception", rank: 1},
    {skill: "Skulduggery", rank: 2},
    {skill: "Stealth", rank: 3},
    {skill: "Ranged (Light)", rank: 1},
    {skill: "Vigilance", rank: 2}
  ]
  a.equipment = [
    {name: "Blaster Pistol", skill: "Ranged (Light)", damage: 6, range: "Medium", crit_rating: 3},
    {name: "Ancient Sith Sword", skill: "Melee", damage: 5, range: "Engaged", crit_rating: 2, weapon_qualities: "Pierce 2"},
    {name: "Dark Robes", soak: "+1"},
    {name: "Stimpack", quantity: 2, description: "Use a maneuver to heal 4 wounds on an organic being."}
  ]
  a.talents = [{name: "Force Rating 2"}]
  a.abilities = [
    {name: "Dark Side Force User"},
    {name: "Force Power: Sense", description: "Spend [force] to sense all living things within short range; Spend [force] to sense the emotional state of one living target engaged with Malefax; Spend [force] to boost the range at which he senses living things to long range."},
    {name: "Force Power: Move", description: "Spend [force] to move one object of about the size of a backpack or smaller within short range; Spend [force] to increase the size of the object affected to person-sized; Spend [force] to increase the range to medium range."}
  ]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = malefax.first.id
  sa.sourceable_type = 'Adversary'
  sa.source_id = Source.find_by(product_code: "SWF01").id
  sa.page_number = 26
end

spintiri_icewolves = Adversary.seed(:name) do |a|
  a.name = "Spintiri Icewolves"
  a.adversary_type = Adversary.adversary_types[:minion]
  a.brawn = 3
  a.agility = 3
  a.intellect = 1
  a.cunning = 2
  a.willpower = 1
  a.presence = 1
  a.soak = 4
  a.wound_threshold = 5

  a.skills = ["Athletics", "Brawl", "Vigilance"]
  a.equipment = [{name: "Teeth and Claws", skill: "Brawl", damage: 5, range: "Engaged", crit_rating: 3, weapon_qualities: "Pierce 1"}]
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spintiri_icewolves.first.id
  sa.sourceable_type = 'Adversary'
  sa.source_id = Source.find_by(product_code: "SWF01").id
  sa.page_number = 23
end
