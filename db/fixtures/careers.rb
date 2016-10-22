swf02 = Source.find_by(product_code: "SWF02")

career = Career.seed(:name) do |c|
  c.name = "Consular"
  c.career_skills = ["Cool", "Discipline", "Knowledge (Education)", "Knowledge (Lore)", "Leadership", "Negotiation"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 66
end

spec = Tree.seed(:name) do |t|
  t.name = "Healer"
  t.career = career.first
  t.career_skills = ["Discipline", "Knowledge (Education)", "Knowledge (Xenology)", "Medicine"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Surgeon"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Healing Trance"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Rapid Recovery"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Physician"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Physician"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Physician"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Healing Trance"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Healing Trance"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Knowledgeable Healing"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Rapid Recovery"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Surgeon"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Healing Trance (Improved)"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Calming Aura"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Toughened"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Natural Doctor"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Calming Aura (Improved)"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 69
end

spec = Tree.seed(:name) do |t|
  t.name = "Niman Discipline"
  t.career = career.first
  t.career_skills = ["Discipline", "Leadership", "Lightsaber", "Negotiation"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Nobody's Fool"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Reflect"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Defensive Training"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Niman Technique"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Parry"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Sense Emotions"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Reflect"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Defensive Training"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Sum Djem"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Reflect"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Draw Closer"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Center of Being"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Assault"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Center of Being (Improved)"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 70
end

spec = Tree.seed(:name) do |t|
  t.name = "Sage"
  t.career = career.first
  t.career_skills = ["Astrogation", "Charm", "Cool", "Knowledge (Lore)"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Kill with Kindness"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Researcher"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Smooth Talker"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Researcher"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Confidence"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Valuable Facts"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Smooth Talker"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "One with the Universe"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Grit"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Preemptive Avoidance"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Balance"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "The Force is my Ally"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Natural Negotiator"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 71
end

career = Career.seed(:name) do |c|
  c.name = "Guardian"
  c.career_skills = ["Brawl", "Cool", "Discipline", "Melee", "Resilience", "Vigilance"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 72
end

spec = Tree.seed(:name) do |t|
  t.name = "Peacekeeper"
  t.career = career.first
  t.career_skills = ["Discipline", "Leadership", "Perception", "Piloting (Planetary)"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Command"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Confidence"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Second Wind"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Commanding Presence"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Commanding Presence"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Second Wind"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Confidence"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Toughened"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Enhanced Leader"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Command"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Field Commander"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Steely Nerves"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Second Wind"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Toughened"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Field Commander (Improved)"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Unity Assault"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Natural Leader"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 75
end

spec = Tree.seed(:name) do |t|
  t.name = "Protector"
  t.career = career.first
  t.career_skills = ["Athletics", "Medicine", "Ranged (Light)", "Resilience"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Body Guard"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Parry"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Physician"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Stimpack Specialization"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Force Protection"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Reflect"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Stimpack Specialization"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Heightened Awareness"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Center of Being"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Circle of Shelter"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Protection"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Body Guard"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Center of Being"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Body Guard (Improved)"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 76
end

spec = Tree.seed(:name) do |t|
  t.name = "Soresu Defender"
  t.career = career.first
  t.career_skills = ["Discipline", "Knowledge (Lore)", "Lightsaber", "Vigilance"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Defensive Stance"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Soresu Technique"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Reflect"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Confidence"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Parry (Improved)"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Defensive Circle"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Parry"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Reflect"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Reflect"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Defensive Stance"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Parry (Supreme)"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Reflect (Improved)"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Strategic Form"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 77
end

career = Career.seed(:name) do |c|
  c.name = "Mystic"
  c.career_skills = ["Charm", "Coercion", "Knowledge (Lore)", "Knowledge (Outer Rim)", "Perception", "Vigilance"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 78
end

spec = Tree.seed(:name) do |t|
  t.name = "Advisor"
  t.career = career.first
  t.career_skills = ["Charm", "Deception", "Negotiation", "Streetwise"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Plausible Deniability"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Know Somebody"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Kill with Kindness"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Know Somebody"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Knowledge is Power"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Nobody's Fool"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Smooth Talker"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Smooth Talker"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Plausible Deniability"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Nobody's Fool"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Natural Charmer"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Contingency Plan"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Sense Emotions"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Steely Nerves"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Sense Advantage"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 81
end

spec = Tree.seed(:name) do |t|
  t.name = "Makashi Duelist"
  t.career = career.first
  t.career_skills = ["Charm", "Cool", "Coordination", "Lightsaber"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Resist Disarm"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Parry"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Makashi Technique"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Duelist's Training"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Feint"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Feint"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Intense Presence"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Parry (Improved)"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Defensive Training"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Sum Djem"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Makashi Finish"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Makashi Flourish"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 82
end

spec = Tree.seed(:name) do |t|
  t.name = "Seer"
  t.career = career.first
  t.career_skills = ["Discipline", "Knowledge (Lore)", "Survival", "Vigilance"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Forager"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Uncanny Reactions"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Expert Tracker"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Rapid Reaction"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Keen Eyed"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Uncanny Reactions"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Sense Danger"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Forewarning"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Preemptive Avoidance"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Sense Advantage"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "The Force is my Ally"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Dodge"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Rapid Reaction"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Toughened"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Natural Mystic"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 83
end

career = Career.seed(:name) do |c|
  c.name = "Seeker"
  c.career_skills = ["Knowledge (Xenology)", "Piloting (Planetary)", "Piloting (Space)", "Ranged (Heavy)", "Survival", "Vigilance"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 84
end

spec = Tree.seed(:name) do |t|
  t.name = "Ataru Striker"
  t.career = career.first
  t.career_skills = ["Athletics", "Coordination", "Lightsaber", "Perception"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Conditioned"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Jump Up"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Quick Draw"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Dodge"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Reflect"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Ataru Technique"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Quick Strike"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Quick Strike"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Reflect"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry (Improved)"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dodge"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Hawk Bat Swoop"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Saber Swarm"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Conditioned"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Parry"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Saber Throw"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Balance"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 87
end

spec = Tree.seed(:name) do |t|
  t.name = "Hunter"
  t.career = career.first
  t.career_skills = ["Coordination", "Ranged (Heavy)", "Stealth", "Vigilance"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Rapid Recovery"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Hunter"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Expert Tracker"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Expert Tracker"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Hunter"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Uncanny Senses"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Side Step"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Keen Eyed"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Natural Hunter"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Uncanny Reactions"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Rapid Recovery"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Soft Spot"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Sixth Sense"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Rapid Recovery"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Side Step"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Intuitive Shot"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 88
end

spec = Tree.seed(:name) do |t|
  t.name = "Pathfinder"
  t.career = career.first
  t.career_skills = ["Medicine", "Ranged (Light)", "Resilience", "Survival"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Keen Eyed"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Forager"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Swift"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Keen Eyed"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Outdoorsman"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Outdoorsman"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Animal Empathy"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Animal Bond"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Sleight of Mind"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Mental Bond"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Quick Movement"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Toughened"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Share Pain"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Enduring"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Natural Outdoorsman"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 89
end

career = Career.seed(:name) do |c|
  c.name = "Sentinel"
  c.career_skills = ["Computers", "Deception", "Knowledge (Core Worlds)", "Perception", "Skulduggery", "Stealth"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 90
end

spec = Tree.seed(:name) do |t|
  t.name = "Artisan"
  t.career = career.first
  t.career_skills = ["Astrogation", "Computers", "Knowledge (Education)", "Mechanics"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Solid Repairs"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Fine Tuning"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Mental Tools"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Technical Aptitude"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Solid Repairs"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Fine Tuning"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Inventor"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Imbue Item"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Natural Tinkerer"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Defensive Slicing"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Solid Repairs"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Defensive Slicing"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Mental Fortress"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Master Artisan"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Intuitive Improvements"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Comprehend Technology"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = career.first
  sa.page_number = 69
end

spec = Tree.seed(:name) do |t|
  t.name = "Shadow"
  t.career = Career.find_by(name: "Sentinel")
  t.career_skills = ["Knowledge (Underworld)", "Skulduggery", "Stealth", "Streetwise"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Sleight of Mind"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Street Smarts"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Codebreaker"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Indistinguishable"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Well Rounded"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Mental Fortress"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Grit"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Indistinguishable"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Shroud"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Dodge"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Sleight of Mind"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Slippery Minded"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Codebreaker"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Now You See Me"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Dodge"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Anatomy Lessons"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Master of Shadows"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 94
end

spec = Tree.seed(:name) do |t|
  t.name = "Shien Expert"
  t.career = career.first
  t.career_skills = ["Athletics", "Lightsaber", "Resilience", "Skulduggery"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Side Step"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Conditioned"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Street Smarts"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Reflect"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Toughened"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Parry"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Shien Technique"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Reflect"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Counterstrike"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Reflect (Improved)"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Djem So Deflection"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Defensive Stance"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Saber Throw"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Reflect"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Falling Avalanche"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Disruptive Strike"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Reflect (Supreme)"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 95
end

career = Career.seed(:name) do |c|
  c.name = "Warrior"
  c.career_skills = ["Athletics", "Brawl", "Cool", "Melee", "Perception", "Survival"]
  c.force_rating = 1
  c.source = swf02
  c.page_number = 96
end

spec = Tree.seed(:name) do |t|
  t.name = "Aggressor"
  t.career = career.first
  t.career_skills = ["Coercion", "Knowledge (Underworld)", "Ranged (Light)", "Streetwise"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Intimidating"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Plausible Deniability"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Fearsome"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Intimidating"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Prey on the Weak"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Sense Advantage"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Fearsome"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Terrify"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Crippling Blow"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Toughened"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Grit"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Terrify (Improved)"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Prey on the Weak"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Heroic Fortitude"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Fearsome"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Against All Odds"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 99
end

spec = Tree.seed(:name) do |t|
  t.name = "Shii-Cho Knight"
  t.career = career.first
  t.career_skills = ["Athletics", "Coordination", "Lightsaber", "Melee"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Second Wind"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Toughened"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Parry"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Second Wind"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Conditioned"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Multiple Opponents"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Durable"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Quick Draw"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Defensive Training"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Natural Blademaster"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Sarlacc Sweep"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Parry (Improved)"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Sum Djem"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Center of Being"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Durable"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Parry"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 100
end

spec = Tree.seed(:name) do |t|
  t.name = "Starfighter Ace"
  t.career = career.first
  t.career_skills = ["Astrogation", "Gunnery", "Mechanics", "Piloting (Space)"]
end

Node.seed(:tree_id, :x, :y,
          { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"), cost: 5 },
          { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Skilled Jockey"), cost: 5 },
          { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Rapid Reaction"), cost: 5 },
          { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Solid Repairs"), cost: 5 },
          { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Intuitive Evasion"), cost: 10 },
          { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Confidence"), cost: 10 },
          { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Solid Repairs"), cost: 10 },
          { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Galaxy Mapper"), cost: 10 },
          { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Full Throttle"), cost: 15 },
          { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Rapid Reaction"), cost: 15 },
          { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Exhaust Port"), cost: 15 },
          { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Grit"), cost: 15 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Intuitive Strike"), cost: 20 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Touch of Fate"), cost: 20 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"), cost: 20 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Skilled Jockey"), cost: 20 },
          { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"), cost: 25 },
          { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Tricky Target"), cost: 25 },
          { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Dedication"), cost: 25 },
          { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Intuitive Evasion"), cost: 25 }
         )

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 101
end
