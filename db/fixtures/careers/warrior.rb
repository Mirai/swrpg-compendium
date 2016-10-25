swf02 = Source.find_by(product_code: "SWF02")

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Intimidating"),          cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Plausible Deniability"), cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"),                  cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"),             cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Fearsome"),              cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Intimidating"),          cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Prey on the Weak"),      cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Sense Advantage"),       cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Fearsome"),              cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Terrify"),               cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Crippling Blow"),        cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Toughened"),             cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Grit"),                  cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Terrify (Improved)"),    cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Prey on the Weak"),      cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Heroic Fortitude"),      cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Force Rating"),          cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Fearsome"),              cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Dedication"),            cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Against All Odds"),      cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"),               cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Second Wind"),         cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Toughened"),           cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Parry"),               cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Second Wind"),         cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Conditioned"),         cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Multiple Opponents"),  cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Durable"),             cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Quick Draw"),          cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"),                cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"),               cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Defensive Training"),  cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Natural Blademaster"), cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Sarlacc Sweep"),       cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Parry (Improved)"),    cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Sum Djem"),            cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Center of Being"),     cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Durable"),             cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Dedication"),          cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Parry"),               cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
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
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"),              cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Skilled Jockey"),    cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Rapid Reaction"),    cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Solid Repairs"),     cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Intuitive Evasion"), cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Confidence"),        cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Solid Repairs"),     cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Galaxy Mapper"),     cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Full Throttle"),     cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Rapid Reaction"),    cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Exhaust Port"),      cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Grit"),              cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Intuitive Strike"),  cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Touch of Fate"),     cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"),              cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Skilled Jockey"),    cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Force Rating"),      cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Tricky Target"),     cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Dedication"),        cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Intuitive Evasion"), cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
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
  sa.page_number = 101
end
