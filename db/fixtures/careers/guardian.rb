swf02 = Source.find_by(product_code: "SWF02")

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Command"),                    cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Confidence"),                 cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Second Wind"),                cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Commanding Presence"),        cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Commanding Presence"),        cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Toughened"),                  cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Second Wind"),                cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Confidence"),                 cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Toughened"),                  cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Enhanced Leader"),            cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Command"),                    cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Field Commander"),            cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Steely Nerves"),              cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Second Wind"),                cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Toughened"),                  cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Field Commander (Improved)"), cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Unity Assault"),              cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Dedication"),                 cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Force Rating"),               cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Natural Leader"),             cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Toughened"),               cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Body Guard"),              cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"),                    cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"),               cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Parry"),                   cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Physician"),               cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Stimpack Specialization"), cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Force Protection"),        cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Reflect"),                 cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Stimpack Specialization"), cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Heightened Awareness"),    cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Center of Being"),         cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Circle of Shelter"),       cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Protection"),        cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"),                    cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Body Guard"),              cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Center of Being"),         cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Force Rating"),            cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Dedication"),              cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Body Guard (Improved)"),   cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"),              cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Parry"),              cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Toughened"),          cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Defensive Stance"),   cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Soresu Technique"),   cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Reflect"),            cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Grit"),               cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Grit"),               cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Confidence"),         cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Parry (Improved)"),   cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Defensive Circle"),   cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry"),              cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Parry"),              cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Reflect"),            cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Reflect"),            cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Defensive Stance"),   cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Parry (Supreme)"),    cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Dedication"),         cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Reflect (Improved)"), cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Strategic Form"),     cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 77
end
