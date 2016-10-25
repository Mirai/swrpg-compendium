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

one_one =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Surgeon"),                   cost: 5 })
two_one =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Healing Trance"),            cost: 5 })
three_one =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Rapid Recovery"),            cost: 5 })
four_one =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Physician"),                 cost: 5 })
one_two =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Physician"),                 cost: 10 })
two_two =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Physician"),                 cost: 10 })
three_two =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Grit"),                      cost: 10 })
four_two =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Healing Trance"),            cost: 10 })
one_three =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Healing Trance"),            cost: 15 })
two_three =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Grit"),                      cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Knowledgeable Healing"),     cost: 15 })
four_three =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Rapid Recovery"),            cost: 15 })
one_four =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Surgeon"),                   cost: 20 })
two_four =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Healing Trance (Improved)"), cost: 20 })
three_four =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Calming Aura"),              cost: 20 })
four_four =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Toughened"),                 cost: 20 })
one_five =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Dedication"),                cost: 25 })
two_five =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Natural Doctor"),            cost: 25 })
three_five =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Force Rating"),              cost: 25 })
four_five =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Calming Aura (Improved)"),   cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: one_one.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_three.first.id })
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
  sa.page_number = 69
end

spec = Tree.seed(:name) do |t|
  t.name = "Niman Discipline"
  t.career = career.first
  t.career_skills = ["Discipline", "Leadership", "Lightsaber", "Negotiation"]
end

one_one =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Parry"),                      cost: 5 })
two_one =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Nobody's Fool"),              cost: 5 })
three_one =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Reflect"),                    cost: 5 })
four_one =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Grit"),                       cost: 5 })
one_two =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Defensive Training"),         cost: 10 })
two_two =     Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Niman Technique"),            cost: 10 })
three_two =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Toughened"),                  cost: 10 })
four_two =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Parry"),                      cost: 10 })
one_three =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Parry"),                      cost: 15 })
two_three =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Sense Emotions"),             cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Reflect"),                    cost: 15 })
four_three =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "Defensive Training"),         cost: 15 })
one_four =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Sum Djem"),                   cost: 20 })
two_four =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Reflect"),                    cost: 20 })
three_four =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Draw Closer"),                cost: 20 })
four_four =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Center of Being"),            cost: 20 })
one_five =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Dedication"),                 cost: 25 })
two_five =    Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "Force Assault"),              cost: 25 })
three_five =  Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Force Rating"),               cost: 25 })
four_five =   Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Center of Being (Improved)"), cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
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
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
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
  sa.page_number = 70
end

spec = Tree.seed(:name) do |t|
  t.name = "Sage"
  t.career = career.first
  t.career_skills = ["Astrogation", "Charm", "Cool", "Knowledge (Lore)"]
end

one_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 1, ability: Ability.find_by(name: "Grit"),                     cost: 5 })
two_one     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 1, ability: Ability.find_by(name: "Kill with Kindness"),       cost: 5 })
three_one   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 1, ability: Ability.find_by(name: "Researcher"),               cost: 5 })
four_one    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 1, ability: Ability.find_by(name: "Grit"),                     cost: 5 })
one_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 2, ability: Ability.find_by(name: "Smooth Talker"),            cost: 10 })
two_two     = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 2, ability: Ability.find_by(name: "Researcher"),               cost: 10 })
three_two   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 2, ability: Ability.find_by(name: "Confidence"),               cost: 10 })
four_two    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 2, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 10 })
one_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 3, ability: Ability.find_by(name: "Valuable Facts"),           cost: 15 })
two_three   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 3, ability: Ability.find_by(name: "Smooth Talker"),            cost: 15 })
three_three = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 3, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 15 })
four_three  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 3, ability: Ability.find_by(name: "One with the Universe"),    cost: 15 })
one_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 4, ability: Ability.find_by(name: "Force Rating"),             cost: 20 })
two_four    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 4, ability: Ability.find_by(name: "Grit"),                     cost: 20 })
three_four  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 4, ability: Ability.find_by(name: "Preemptive Avoidance"),     cost: 20 })
four_four   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 4, ability: Ability.find_by(name: "Knowledge Specialization"), cost: 20 })
one_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 1, y: 5, ability: Ability.find_by(name: "Balance"),                  cost: 25 })
two_five    = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 2, y: 5, ability: Ability.find_by(name: "The Force is my Ally"),     cost: 25 })
three_five  = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 3, y: 5, ability: Ability.find_by(name: "Natural Negotiator"),       cost: 25 })
four_five   = Node.seed(:tree_id, :x, :y, { tree_id: spec.first.id, x: 4, y: 5, ability: Ability.find_by(name: "Force Rating"),             cost: 25 })

NodeConnection.seed(:node_id, :connection_id, { node_id: two_one.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_one.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: one_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_two.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_one.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: four_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_two.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_two.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_three.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: one_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_three.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_two.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: four_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_three.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_three.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_four.first.id, connection_id: one_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_four.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_three.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: four_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_four.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_four.first.id, connection_id: four_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: one_five.first.id, connection_id: one_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: two_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: two_five.first.id, connection_id: three_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: three_four.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: three_five.first.id, connection_id: two_five.first.id })
NodeConnection.seed(:node_id, :connection_id, { node_id: four_five.first.id, connection_id: four_four.first.id })

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = spec.first.id
  sa.sourceable_type = 'Tree'
  sa.source_id = swf02.id
  sa.page_number = 71
end
