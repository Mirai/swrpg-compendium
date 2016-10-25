swf02 = Source.find_by(product_code: "SWF02")

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Conditioned"),      cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Parry"),            cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Jump Up"),          cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Quick Draw"),       cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Dodge"),            cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Reflect"),          cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Ataru Technique"),  cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Quick Strike"),     cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Quick Strike"),     cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Reflect"),          cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"),            cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry (Improved)"), cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Dodge"),            cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Hawk Bat Swoop"),   cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Saber Swarm"),      cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Conditioned"),      cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Parry"),            cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Dedication"),       cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Saber Throw"),      cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Balance"),          cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
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
  sa.page_number = 87
end

spec = Tree.seed(:name) do |t|
  t.name = "Hunter"
  t.career = career.first
  t.career_skills = ["Coordination", "Ranged (Heavy)", "Stealth", "Vigilance"]
end

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Rapid Recovery"),    cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Hunter"),            cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Expert Tracker"),    cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Toughened"),         cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Toughened"),         cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Expert Tracker"),    cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Hunter"),            cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Uncanny Senses"),    cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Side Step"),         cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Keen Eyed"),         cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Natural Hunter"),    cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Uncanny Reactions"), cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Rapid Recovery"),    cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Soft Spot"),         cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Sixth Sense"),       cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Rapid Recovery"),    cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Side Step"),         cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Dedication"),        cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Intuitive Shot"),    cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Force Rating"),      cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
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
  sa.page_number = 88
end

spec = Tree.seed(:name) do |t|
  t.name = "Pathfinder"
  t.career = career.first
  t.career_skills = ["Medicine", "Ranged (Light)", "Resilience", "Survival"]
end

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"),                cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Keen Eyed"),           cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Forager"),             cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Swift"),               cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Keen Eyed"),           cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Outdoorsman"),         cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Toughened"),           cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Outdoorsman"),         cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Animal Empathy"),      cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Animal Bond"),         cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Grit"),                cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Sleight of Mind"),     cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Mental Bond"),         cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Force Rating"),        cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Quick Movement"),      cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Toughened"),           cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Share Pain"),          cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Enduring"),            cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Natural Outdoorsman"), cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Dedication"),          cost: 25 })

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
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 89
end
