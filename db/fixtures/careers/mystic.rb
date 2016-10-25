swf02 = Source.find_by(product_code: "SWF02")

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Plausible Deniability"), cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Know Somebody"),         cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"),                  cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Kill with Kindness"),    cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Toughened"),             cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Know Somebody"),         cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Knowledge is Power"),    cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Nobody's Fool"),         cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Grit"),                  cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Smooth Talker"),         cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Smooth Talker"),         cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Plausible Deniability"), cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Nobody's Fool"),         cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Natural Charmer"),       cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Contingency Plan"),      cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Sense Emotions"),        cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Dedication"),            cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Steely Nerves"),         cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Force Rating"),          cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Sense Advantage"),       cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
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
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"),               cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Resist Disarm"),      cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"),               cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Parry"),              cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Parry"),              cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Makashi Technique"),  cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Duelist's Training"), cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Feint"),              cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Parry"),              cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Feint"),              cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Parry"),              cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Parry"),              cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Intense Presence"),   cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Parry (Improved)"),   cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Grit"),               cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Defensive Training"), cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Dedication"),         cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Sum Djem"),           cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Makashi Finish"),     cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Makashi Flourish"),   cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
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
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

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

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Forager"),              cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Uncanny Reactions"),    cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Grit"),                 cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Expert Tracker"),       cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Rapid Reaction"),       cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Keen Eyed"),            cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Uncanny Reactions"),    cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Toughened"),            cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Sense Danger"),         cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"),                 cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Forewarning"),          cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Preemptive Avoidance"), cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"),         cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Sense Advantage"),      cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "The Force is my Ally"), cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Dodge"),                cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Rapid Reaction"),       cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Toughened"),            cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Natural Mystic"),       cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Force Rating"),         cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_one.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
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
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: three_five.first.id })

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 83
end
