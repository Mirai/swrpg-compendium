talent = Ability.seed(:name) do |a|
  a.name = "Adversary"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Upgrade the difficulty of any combat check targeting this character once per rank of Adversary."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 138
end

talent = Ability.seed(:name) do |a|
  a.name = "Against All Odds"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, if the character is incapacitated due to exceeding his wound threshold, he may perform the Against All Odds action (this action may be performed even though the characters are normally barred from performing actions when incapacitated). The character makes a Hard ([difficulty][difficulty][difficulty]) Resilience check, rolling a number of [force] equal to his Force rating as part of the check. If successful, the character heals wounds equal to [success]. The character may spend Force points [force_point] to add [success] to the result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 138
end

talent = Ability.seed(:name) do |a|
  a.name = "Anatomy Lessons"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "After a successful attack with a personal (non-starship/vehicle) weapon, the character may spend one Destiny Point to add damage equal to his INtellect to one hit of the attack."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 138
end

talent = Ability.seed(:name) do |a|
  a.name = "Animal Bond"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Through the Force, the character creates a bond with a single animal with which he is currently interacting. This cannot be done during structured encounters. This animal must have a silhouette equal to or smaller than half the character's Force rating when the bond is created, rounded down (this means a character with a Force rating 1 could only bond with a silhouette 0 animal). The bond persists as long as the character chooses it to, although at the GM's discretion, the bond may also be broken due to abusive treatment or other extenuating circumstances.\n\nAs long as the bond persists, the animal remains near the character, and the controlling player dictates the animal's overall behavior (although, since the animal is only bonded with the character, not dominated, it may still perform certain inconvenient actions such as scratching furniture, consuming rations, and marking territory). Once per round in structured encounters, the character may spend one maneuver to direct his animal in performing one action and one maneuver. The animal must be within hearing and visual range of the character (generally medium range) to do this. Otherwise, the animal does not contribute to the encounter. The specifics of its behavior are up to the player and GM."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 138
end

talent = Ability.seed(:name) do |a|
  a.name = "Animal Empathy"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making checks to handle, tame, or control animals, the character may add a number of [force] no greater than his Force rating to the check. The character may spend [force_point] to add [success] or [advantage] (character's choice) to the result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 139
end

talent = Ability.seed(:name) do |a|
  a.name = "Ataru Technique"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Lightsaber skill check, the character may use Agility instead of Brawn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 139
end

talent = Ability.seed(:name) do |a|
  a.name = "Balance"
  a.activation = "Active (Maneuver)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When the character recovers from strain at the end of each encounter, he may roll [force] no greater than his Force rating. He recovers additional strain equal to the [force_point] generated."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 139
end

talent = Ability.seed(:name) do |a|
  a.name = "Body Guard"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round on the character's turn, the character may perform a Body Guard maneuver to protect one ally with whom he is engaged. He then suffers a number of strain no greater than his ranks in Body Guard. Until the start of the character's next turn, upgrade the difficulty of all combat checks targeting the protected ally a number of times equal to the strain suffered by the character."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Body Guard (Imporoved)"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per session, when an ally protected by the character's Body Guard maneuver would suffer a hit from a combat check, the character may choose to suffer that hit instead of the ally."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Calming Aura"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When an opponent targets the character with a Force power, after the opponent generates [force_point], reduce the total [force_point] generated by one, to a minimum of 0."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Calming Aura (Improved)"
  a.activation = "Active (Maneuver)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may spend a maneuver and suffer 2 strain to extend the effects of Calming Aura to a number of allies within short range equal to his Willpower. This lasts until the beginning of his next turn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Center of Being"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per round, when wielding a lightsaber, the character can make a Center of Being maneuver. Until the beginning of his next turn, whenever an enemy makes a melee attack targeting the character, the critical rating of the enemy's weapon counts as one higher per rank of Center of Being."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Center of Being (Improved)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may voluntarily suffer 1 strain to perform Center of Being as an incidental instead of a maneuver."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Circle of Shelter"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When an ally engaged with the character suffers a hit from a combat check, the character may use a Parry or Reflect incidental to reduce the damage the hit deals (even though he is not the target of the combat check)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Codebreaker"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Codebreaker from his attempts to break codes or decrypt communications. In addition, the character decreases the difficulty of his Computers and Intellect checks made to break codes or decrypt communications by one (this does not increase with additional ranks of Codebreaker)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Command"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character gains [boost] per rank of Command when making Leadership checks (or other checks to inspire, lead, or rally an audience). Inspired targets also add [boost] per rank to any subsequent Discipline checks they make over the next twenty-four hours (this does not increase with additional ranks of Command)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Commanding Presence"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Commanding Presence from his Leadership and Cool checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 140
end

talent = Ability.seed(:name) do |a|
  a.name = "Comprehend Technology"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, the character may take the Comprehend Technology action, making an Average ([difficulty][difficulty]) Knowledge (Education) check to intuitively understand one weapon, armor set, or other piece of personal gear. Success means that for the remainder of the encounter, when the character makes any skill checks to use or repair the item, he may count his ranks in the applicable skill as equal to his current Force rating.\n\nFor example, a character may use Comprehend Technology to count his ranks in Mechanics as equal to his Force rating when repairing a broken lightsaber, or he can count his ranks in Ranged (Light) as equal to his Force rating when firing a blaster pistol."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Conditioned"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Conditioned from his Athletics and Coordination checks. He reduces the damage and strain suffered from falling by 1 per rank of Coordination."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Confidence"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may decrease the difficulty of any Discipline check to avoid the effects of fear by one per rank of Confidence. If he decreases the difficulty to zero, he does not have to make a Discipline check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Contingency Plan"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may spend one Destiny Point to recover strain equal to his Cunning rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Counterstrike"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Whenever an attack misses the character, the character may spend [threat][threat] or [despair] to upgrade the next Lightsaber (Cunning) combat check he makes against the attacker during his next turn once."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Crippling Blow"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may voluntarily increase the difficulty of a combat check by one to deal a crippling blow. If he succeeds and deals damage to the target's wound threshold, the target suffers 1 strain whenever he moves for the remainder of the encounter."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Dedication"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Each rank permanently increases a single characteristic of the player's choice by 1 point. This cannot bring a characteristic above 6."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Defensive Circle"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "While wielding a lightsaber, the character may take the Defensive Circle action, making a Hard ([difficulty][difficulty][difficulty]) Lightsaber (Intellect) check. If successful, the character plus one ally per [success] within short range gains ranged and melee defense X until the beginning of the character's next turn. X equals 1, plus 1 for every [advantage][advantage]."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Defensive Slicing"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When attempting to defend a computer system against intrusion (or when an opponent attempts to slice a computer owned or programmed by the character), the character adds [setback] per rank of Defensive Slicing to his opponent's checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Defensive Stance"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round on the character's turn, the character may perform a Defensive Stance maneuver to defend against incoming melee attacks. He then suffers a number of strain no greater than his ranks in Defensive Stance. Until the start of the character's next turn, upgrade the difficulty of all melee combat checks targeting the character a number of times equal to the strain suffered by the character in this way."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Defensive Training"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character wields a Lightsaber weapon, Melee weapon, or Brawl weapon, that weapon gains ranks in the Defensive item quality equal to the character's ranks in Defensive Training (this replaces any ranks in Defensive the weapon already has)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 141
end

talent = Ability.seed(:name) do |a|
  a.name = "Disruptive Strike"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take a Disruptive Strike action, making a Lightsaber (Cunning) combat check against one engaged target and adding [force] no greater than Force rating to the check. The character may spend [force_point] to add [failure] to the target's next combat check made during this encounter."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Djem So Deflection"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "After using the Reflect incidental, the character may spend on Destiy Point to perform a Move maneuver as an out of turn incidental to move closer to or engage an opponent. This incidental may be performed once per round."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Dodge"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When targeted by a combat check (ranged or melee) the character may choose to immediately perform a Dodge incidental to suffer a number of strain, then upgrade the difficulty of the combat check by that number. The number of strain suffered cannot exceed his ranks in Dodge."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Draw Closer"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take a Draw Closer action, making a Lightsaber (Willpower) melee combat check against one silhouette 1 (or smaller) target within medium range and adding a number of [force] no greater than Force rating to the check. The character may spend [force_point] before resolving the success or failure of the check to move the target one range band closer to the character (including from short to engaged). He may also spend [force_point] to add [success] to the combat check. If the character cannot move his target to engage him, the combat check automatically misses."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Duelist's Training"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character adds [boost] to his Melee and Lightsaber checks when engaged with only a single opponent. A single minion group counts as multiple opponents."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Durable"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may reduce a Critical Injury result he suffers by 10 per rank of Durable, to a minimum of 1."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Enduring"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character gains +1 soak value per rank of Enduring."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Enhanced Leader"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Leadership check, the character may add [force] no greater than Force rating to the check. The character may spend [force_point] to add [success] or [advantage] (character's choice) to the result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Exhaust Port"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Before attacking a starship or vehicle, the character may spend on Destiny Point to ignore the effects of the Massive rule for the attack."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Expert Tracker"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Expert Tracker from his checks to find or follow tracks. Survival checks made to track targets take 50% less time than normal (this does not decrease with additional ranks of Expert Tracker)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Falling Avalanche"
  a.activation = "Active (Incidental)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per round the character may suffer 2 strain to add additional damage equal to Brawn to one hit of a successful Lightsaber combat check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Fearsome"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When an adversary becomes engaged with the character, the character may force the adversary to make a fear check, with the difficulty equal to the character's ranks in Fearsome. At the GM's discretion, some adversaries may be immune to this talent based on the type of adversary or the ongoing circumstances."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Feint"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Upon missing an opponent with a Lightsaber, Brawl, or Melee combat check, the character may spend [triumph] or [advantage][advantage][advantage] to upgrade the difficulty of the opponent's next combat check targeting the character during this encounter by the character's ranks in Feint."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 142
end

talent = Ability.seed(:name) do |a|
  a.name = "Field Commander"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may take a Field Commander action. By successfully passing an Average ([difficulty][difficulty]) Leadership check, a number of allies equal to his Presence may immediately suffer 1 strain to perform one maneuver. This does not count against the number of maneuvers they may perform in their turn. If there are any questions as to the order in which allies act, the character using Field Commander is the final arbiter."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Field Commander (Improved)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "When taking a Field Commander action, the character may affect allies equal to twice his Presence. In addition, he may spend [triumph] generated on his Leadership checks to allow one ally to suffer 1 strain to perform an action, rather than a maneuver."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Fine Tuning"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Whenever the character repairs system strain on a starship or vehicle, he repairs 1 additional system strain per rank of Fine Tuning."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Forager"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes up to [setback][setback] from his skill checks to find food, water, or shelter. Survival checks to forage take half the time."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Force Assault"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Upon missing an opponent with a Lightsaber (Willpower) combat check, the character may spend [triumph] or [advantage][advantage][advantage] to perfrom a Move Force power action as a maneuever this turn (the character must still be able to perfrom maneuvers and still may not perform more than two maneuvers in a turn).\n\nThe character must have already purchased the Move Force power to use it as part of this ability."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Force Protection"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Force Protection maneuver, suffering 1 strain and committing a number of [force] no greater than Force rating or ranks of Force Protection. The character then increases his soak value by an equal amount. The character suffers 1 strain at the beginning of each of his turns in which he keeps these dice committed."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Force Rating"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "Each rank permanently increases the character's Force rating by 1."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Forewarning"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Forewarning action. All allies within medium range increase their melee and ranged defense by a number equal to the character's Force rating until they take their first turn during an encounter. If they have alraedy taken their first turn, Forewarning has no effect."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Full Throttle"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may push a ship or vehicle past its limits of speed. He may perform the Full Throttle action, attempting a Hard ([difficulty][difficulty][difficulty]) Piloting check. With success, the ship's top speed increases by 1 for a number of rounds equal to Cunning. The ship still cannot perform actions ormaneuvers it could not perform normally (e.g. actions that have a minimum speed requirement)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 143
end

talent = Ability.seed(:name) do |a|
  a.name = "Galaxy Mapper"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Galaxy Mapper from his Astrogation checks. In addition, Astrogation checks take 50% less time (this does not decrease with additional ranks of Galaxy Mapper)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 144
end

talent = Ability.seed(:name) do |a|
  a.name = "Grit"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Each rank of Grit increases a character's strain threshold by 1."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 144
end

talent = Ability.seed(:name) do |a|
  a.name = "Hawk Bat Swoop"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take a Hawk Bat Swoop action, performing a Lightsaber (Agility) melee combat check against one target within short range and adding [force] no greater than Force rating to the pool. The character may spend [force_point] before resolving the success or failure of the check to engage the target immediately as an incidental, and may spend [force_point] to add [advantage] to the check. If the character cannot move to engage the target, the attack automatically misses."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 144
end

talent = Ability.seed(:name) do |a|
  a.name = "Healing Trance"
  a.activation = "Active (Action)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may commit [force]. For every full encounter [force] remains committed, the character heals 1 wound he is suffering per rank of Healing Trance. This is in addition to wounds healed due to natural rest or other abilities. If in a situation without defined encounters, the GM can have Healing Trance take effect every 12 hours."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 144
end

talent = Ability.seed(:name) do |a|
  a.name = "Healing Trance (Improved)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Whenever the character heals wounds as result of Healing Trance, if the character is suffering from a Critical Injury, he makes a Resilience check with the difficulty equal to the Critical Injury's severity rating. On a successful check, the character recovers from the Critical Injury. If the character is suffering from multiple Critical Injuries, he chooses which one to attempt to recover from."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 144
end

talent = Ability.seed(:name) do |a|
  a.name = "Heightened Awareness"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Allies within short range of the character add [boost] to their Perception and Vigilance checks. Allies engaged with him add [boost][boost] instead."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Heroic Fortitude"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may spend one Destiny Point to ignore the effects of ongoing Critical Injuries on any Brawn or Agility related checks until the end of the encounter. He still suffers from the injury itself."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Hunter"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character adds [boost] per rank of Hunter to all skill checks when interacting with wild beasts and animals, including combat checks. The charaacter adds +10 per rank of Hunter to all of his Critical Injury rolls against animals."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Imbue Item"
  a.activation = "Active (Maneuver)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Imbue Item maneuver, suffering 1 strain and commiting [force]. He then grants one weapon or item within short range a temporary enhancement chosen from the follwing options: increase weapon's damage by 1, decrease the [advantage] cost for its Critical Hit or for any other single effect by 1, to a minimum of 1, or increase a piece of armor's ranged or melee defense by 1. Alternatively, the character can decrease an item's encumbrance by 2, to a minimum of 1. The character suffers 1 strain at the beginning of each of his turns in which he keeps this die commited."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Indistinguishable"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character's appearance is so common that people have a hard time identifying distinguishing traits. Opposing characters upgrade the difficulty of any check made to identify him once per rank of Indistinguishable."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intense Presence"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may spend one Destiny Point to recover strain equal to his Presence rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intimidating"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When attempting a Coercion check, the character may suffer a number of strain to downgrade the difficulty of the check a number of times equal to the strain suffered. This number cannot exceed his ranks in Intimidating. When the character is the target of a Coercion check, the character may suffer a number of strain to upgrade the difficulty of the check a number of times equal to the strain suffered. This number cannot exceed his ranks in Intimidating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intuitive Evasion"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "When piloting a vehicle of silhoutte 5 or smaller, the character may take the Intuitive Evasion maneuver, suffering 1 strain and committing a number of [force] no greater than his Force rating or his ranks of Intuitive Evasion. He then upgrades the difficulty of combat checks targeting his vehicle by an equal amount. The character suffers 1 strain at the beginning of each of his turns in which these dice remain committed."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intuitive Improvements"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a check to repair or craft a non-starship or vehicle item, the character may add [force] no greater than Force rating to the check. The character may spend [force_point][force_point] to permanently increase the number of hard points the item has by 1, to a maximum of 2 additional hard points. An item may only be improved in this way once."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intuitive Shot"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Ranged (Heavy) or Ranged (Light) combat check, the character may add [force] no greater than Force rating to the check. The character may spend [force_point] to add [success] or [advantage] (character's choice) to the result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Intuitive Strike"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a combat check with a vehicle weapon, the character may add [force] no greater than Force rating to the check. The character may spend [force_point][force_point] to add [success] or [advantage] (character's choice) to the result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 145
end

talent = Ability.seed(:name) do |a|
  a.name = "Inventor"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When constructing new items or modifying existing attachments, the character may choose to add [boost] or remove [setback] from the check per rank of Inventor."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Jump Up"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round on the character's turn, the character may stand up from prone or a seated position as an incidental."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Keen Eyed"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Keen Eyed from his Perception and Vigilance checks. Checks made to search a specific area take 50% less time than normal. This does not decrease with additional ranks of Keen Eyed."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Kill with Kindness"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Kill with Kindness from his Charm and Leadership checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Know Somebody"
  a.activation = "Active (Incidental)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, when attempting to purchase a legally available item, the character may reduce its rarity  by one step per rank of Know Somebody."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Knowledge is Power"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, when making a single check, the character may treat his Force rating as being equal to his ranks in Knowledge (Lore)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Knowledge Specialization"
  a.activation = "Active (Incidental)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character first acquires this talent, he may choose one Knowledge skill. When making checks with that skill, he may spend [triumph] to gain additional [success] equal to his ranks in Knowledge Specialization."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Knowledgeable Healing"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character performs a successful Medicine check to heal an ally, the character may spend one Destiny Point to allow the target to heal additional wounds equal to the character's ranks in Knowledge (Xenology)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Makashi Finish"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Makashi Finish action, making a Lightsaber (Presence) combat check against an engaged target, adding [force] no greater than Force rating to the check. The character may spend [force_point] to add +10 to any Critical Injury roll resulting from the check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Makashi Flourish"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per encounter, the character may take the Makashi Flourish action, making an Average ([difficulty][difficulty]) Lightsaber (Presence) check. If it is successful, one engaged opponent suffers strain equal to [success] (ignoring soak), and the character recovers an equal amount of strain. The character may also spend [advantage][advantage][advantage] or [triumph] generated on the check to stagger the opponent until the end of the target's next turn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Makashi Technique"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a check using the Lightsaber skill, the character may use Presence instead of Brawn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Master Artisan"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round, the character may voluntarily suffer 2 strain to decrease the difficulty of his next Mechanics check (or his next check to build or mod an item) by one, to a minimum of Easy ([difficulty])."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Master of Shadows"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round, the character may voluntarily suffer 2 strain to decrease the difficulty of the next Stealth or Skulduggery check by one, to a minimum of Easy ([difficulty])."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 146
end

talent = Ability.seed(:name) do |a|
  a.name = "Mental Bond"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Mental Bond action, committing [force]. As long as [force] remains committed, he may communicate mentally with an animal bonded to him via the Animal Bond talent. He can see and hear what it sees and hears, and in structured encounters, he may direct his animal (see Animal Bond talent) at up to extreme range."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Mental Fortress"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may spend one Destiny Point to ignore the effects of ongoing Critical Injuries on any Intellect or Cunning rleated checks until the end of the encounter. He still suffers from the injury itself."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Mental Tools"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character always counts as having the right tools for the job when performing Mechanics checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Multiple Opponents"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character adds [boost] to his Brawl, Melee, and Lightsaber combat checks when engaged with multiple opponents. This includes single groups of multiple minions."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Blademaster"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Lightsaber or Melee check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Charmer"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Charm or Deception check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 147
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Doctor"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Medicine check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Hunter"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Perception or Vigilance check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Leader"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Cool or Leadership check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Mystic"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Force power check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Negotiator"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Cool or Negotiation check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Outdoorsman"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Resilience or Survival check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Natural Tinkerer"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per game session, the character may reroll any one Mechanics check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Niman Technique"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Lightsaber skill check, the character may use Willpower instead of Brawn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Nobody's Fool"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The difficulty of any Charm, Coercion, and Deception checks attempted against the character is upgraded once for each rank of Nobody's Fool."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "Now You See Me"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, the character may take the Now You See Me action, making a Hard ([difficulty][difficulty][difficulty]) Deception check. If successful, a number of NPC's equal to his Cunning within medium range forget any interactions they had with the character during the last thirty minutes.\n\nAt the GMs discretion, multiple [threat] or [dispair] may give the NPCs in question unpleasant side effects, such as confusion, nightmares, or a persistent and maddening suspicion that they've forgotten something important."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 148
end

talent = Ability.seed(:name) do |a|
  a.name = "One with the Universe"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, the character may spend several minutes meditating, then take the One with the Universe action, making an Average ([difficulty][difficulty]) Astrogation check. If successful, during the next encounter he adds [force_point_light] to all Force power checks. However, if he succeeded with [threat], he adds [force_point_dark] to all Force power checks instead."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Outdoorsman"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Outdoorsman from his checks to move through terrain or to manage terrain or environmental effects. Decrease overland travel times by 50% (this does not decrease with additional ranks of Outdoorsman)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Parry"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character suffers a hit from a Brawl, Melee, or Lightsaber combat check, after damage is calcluated (but before soak is applied, so immediately after ste 3 of Perform a Combat Check), the character may take a Parry incidental. He suffers 3 strain and reduces the damage dealth by that hit but a number equal to 2 plus his ranks in Parry. This talent mayonly be used once per hit and when the character is wielding a Lightsaber or Melee weapon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Parry (Improved)"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character suffers a hit from a Brawl, Melee, or Lightsaber combat check and uses the Parry incidental to reduce the damage from that hit, after the attack is resolved, the character may spend [despair] or [threat][threat][threat] to automatically hit the attacker once with a wielded Brawl, Melee, or Lightsaber weapon. This hit deals the weapon's base damage plus any damage from the applicable talents or abilities. This talent may not be used if the original attack incapacitates the character."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Parry (Supreme)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "If the user did not make a combat check during his previous turn, he suffers 1 strain when taking the Parry incidental, instead of 3."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Physician"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When this character makes a Medicine check to help a character heal wounds, the target heals one additional strain per rank of Physician."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Plausible Deniability"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Plausible Deniability from his Coercion and Deception checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Preemptive Avoidance"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Immediately after an opponent moves to engage the character, the character may spend one Destiny Point to disengage from that opponent as an out-of-turn incidental."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Prey on the Weak"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character deals +1 damage to one hit on all successful combat checks against disoriented targets per rank of Prey on the Weak."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Quick Draw"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round on the character's turn, he may draw or holster an easily accessible weapon or item as an incidental, instead of a maneuver. This talent also reduces the amount of time to draw or stow a weapon that usually requires more than one maneuver to properly prepare or stow, by one maneuver."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 149
end

talent = Ability.seed(:name) do |a|
  a.name = "Quick Movement"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Before making a non-Force power check during structured gameplay, the character may suffer 2 strain to add [force] no greater than Force rating to the check. The character may spend [force_point][force_point] generated during the check to perform one free Move maneuver after the check is finished. This Move maneuver may be in addtion to any other maneuvers performed this turn and can allow the character to eprform three maneuvers in a turn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Quick Strike"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character adds [boost] per rank of Quck Strike to his combat checks made against any target that has not yet acted in the encounter."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Rapid Reaction"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may suffer a number of strain to add an equal number of [success] to any Vigilance or Cool checks to determine Initiative order. The number may not exceed his ranks in Rapid Reaction."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Rapid Recovery"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When the character recovers strain after an encounter has concluded, he recovers one additional strain per rank in Rapid Recovery."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Reflect"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "When the character suffers a hit from a Ranged (Light), Ranged (Heavy), or Gunnery combat check, and after damage is calculated (but before soak is applied, so immediately after step 3 of Perform a Combat Check), he may take the Reflect incidental. He suffers 3 strain and reduced the damage dealt by that hit by a number equal to 2 plus his ranks in Reflect. THis talent may only be used once per hit and when the character is wielding a Lightsaber weapon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Reflect (Improved)"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When the character suffers a hit from a Ranged (Light), Ranged (Heavy), or Gunnery combat check and uses the Reflect incidental to reduce the damage from that hit, after the attack is resolved, the character may spend [despair] or [threat][threat][threat] to automatically hit one target within medium range, dealing the same damage as the hit from the initial attack.\n\nThe ranged attack's hit must be one that is able to be reflected and redirected (generally only blaster weapons or other energy attacks fall into this category; anything else is subject to GM oversight). This talent may not be used if the original attack incapacitates the character."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Reflect (Supreme)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "If the character did not make a combat check during his previous turn, he suffers 1 strain when taking the Reflect incidental, instead of 3."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Researcher"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Researcher from his Knowledge checks. Researching takes 50% less time (this does not decrease with additional ranks of Researcher)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 150
end

talent = Ability.seed(:name) do |a|
  a.name = "Resist Disarm"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "If the character would be disarmed or his weapon would be damaged or destroyed, he may choose to suffer 2 strain to ignore the effect."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Saber Swarm"
  a.activation = "Active (Maneuver)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Saber Swarm maneuver, suffering 1 strain. His next Lightsaber (Agility) combat check this turn gains the Linked item quality, with ranks equal to Force rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Saber Throw"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Saber Throw action, making a Lightsaber combat check as a ranged attack at one target within medium range, adding [force] no greater than his Force rating to the check. The character must spend [force_point] and succeed on the check to hit his target; he may spend [force_point] to have his weapon return to his hand after resolving the attack."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Sarlacc Sweep"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take the Sarlacc Sweep action, making a Lightsaber combat check with +1 difficluty against one engaged target. The character may spend [advantage][advantage] generated by this combat check to hit one additional target he is engaged with. He may do this once per engaged target, paying [advantage][advantage] for each additional hit.\n\nWhen performing a Sarlacc Sweep action, the character must always target the opponent with the highest difficulty and highest defense (if two targets have the same difficulty and defense, the GM chooses which target is the initial target)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Second Wind"
  a.activation = "Active (Incidental)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per encounter, the character may use a Second Wind incidental to recover an amount of strain equal to his ranks in Second Wind."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Sense Advantage"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per game session, the character may add [setback][setback] to the skill check of one NPC within extreme range."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Sense Danger"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per game session, the character may remove [setback][setback] from any one skill check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Sense Emotions"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character adds [boost] to all Charm, Coercion, and Deception checks unless the target is immune to Force Powers."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Share Pain"
  a.activation = "Active (Incidental, Out of Turn)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When an animal bonded to the character by the Animal Empathy talent suffers wounds, the character may take the Share Pain incidental. He reduces the wounds the animal suffered by half (rounded up), then suffers a number of wounds equal to the number reduced."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Shien Technique"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Lightsaber skill check, the character may use Cunning instead of Brawn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Shroud"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, the character may spend one Destiny Point to make himself undetectable via the Force (through abilities such as the Sense power) and to make his own Force pwoers unnoticeable for the remainder of the encounter.\n\nWhat this entails exactly is up to the player and the GM, and the GM may rule that some actions (such as lifting an X-wing with one's mind) are too obvious to be ignored. However, abilities such as manipulating control panels. lifting small objects, or using Force powers to affect someone physically or mentally go unnoticed, or the effects are attributed to somethign else."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Side Step"
  a.activation = "Active (Maneuver)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per round on the character's turn, the character may perform a Side Step maneuver to try to avoid incoming ranged attacks. He then suffers a number of strain no greater than his ranks in Side Step. Until th estart of the character's next turn, upgrade the difficulty of all ranged combat checks targeting the character a number of times equal to the strain suffered by the character."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 151
end

talent = Ability.seed(:name) do |a|
  a.name = "Sixth Sense"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character gains +1 ranged defense."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Skilled Jockey"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Skilled Jockey from his Piloting (Planetary) and Piloting (Space) checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Sleight of Mind"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character adds [boost] per rank of Sleight of Mind to his Stealth checks unless the being attempting to detect the character is immune to Force powers."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Slippery Minded"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "On any turn in which the character is under the effects of a Force power, he may perform the Slippery Minded action (this action may be specifically performed even if the Force power would normally bar him from performing actions). He makes a Hard ([difficulty][difficulty][difficulty]) Deception check. If he succeeds, he is no longer under the effects of the Force power."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Smooth Talker"
  a.activation = "Active (Incidental)"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When a character first acquires this talent, he chooses one skill: Charm, Coercion, Negotiaton, or Deception. When making checks with that skill, he may spend [triumph] to gain additional [success] equal to his ranks in Smooth Talker."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Soft Spot"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "After making a successful attack with a non-starship/vehicle weapon, the character may spend one Destiny Point to add damage equal to his Cunning to one hit of the successful attack."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Solid Repairs"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Whenever the character repairs hull trauma on a starship or vehicle, he repairs 1 additional hull trauma per rank of Solid Repairs."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Soresu Technique"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When making a Lightsaber skill check, the character may use Intellect instead of Brawn."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Steely Nerves"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character may spend one Destiny Point to ignore the effects of ongoing Critical Injuries on any Presence or Willpower-related checks until the end of the encounter. He still suffers from the injury itself."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Stimpack Specialization"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "Whenever the character uses a stimpack, the target heals an additional wound per rank of Stimpack Specialization. The sixth stimpack and beyond each day still have no effect."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Strategic Form"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "While wielding a Lightsaber weapon, the character may take the Strategic Form action, making a Hard ([difficulty][difficulty][difficulty]) Lightsaber (Intellect) check and rolling [force] no greater than Force rating as part of the check. For each [success], one target within short range of the character may only make combat checks if thos combat checks target the character until the end of the following round. The character may spend [force_point] to cause Strategic Form to affect a target for one additional round. The effects of Strategic Form end if the character is incapacitated."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Street Smarts"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character removes [setback] per rank of Street Smarts from his Streetwise and Knowledge (Underworld) checks"
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Sum Djem"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "When the character makes a successful Lightsaber combat check, he may spend [triumph] or [advantage][advantage] to disarm his opponent [with GM's approval). The disarmed weapon lands anywhere within short range of the engagement (character's choice)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 152
end

talent = Ability.seed(:name) do |a|
  a.name = "Surgeon"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "When this character makes a Medicine check to help a character heal wounds, the target heals 1 additional wound per rank of Surgeon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Swift"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character does not suffer the penalties for moving through difficult terrain (he moves through it at normal speed, without spending additional maneuvers)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Technical Aptitude"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "For each rank, the character reduces the amount of time needed to complete computer-related tasks by 25%."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Terrify"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character may take a Terrify action, making a Hard ([difficulty][difficulty][difficulty]) Coercion check and rolling [force] no greater than Force rating as part of the check. If successful, one target per [success] within medium range of the character is disoriented until the end of the next round. The character may spend [advantage][advantage] to increase the duration of disorientation for all affected targets by one round, and may spend [force_point] to immobilize an affected target until the end of the next round. A character who has purchased this talent automatically gains 1 Conflict at the beginning of a game session."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Terrify (Improved)"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "The difficulty of the Terrify action decreases to Average ([difficulty][difficulty]). In addition, the character may spend [triumph] generated on the check to stagger an affected target until the end of the next round."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "The Force is my Ally"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per session, the character may suffer 2 strain to perform a Force power action as a maneuver."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Touch of Fate"
  a.activation = "Active (Incidental)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Once per game session, the character may add [boost][boost] to any one skill check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Toughened"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character increases his wound threshold by 2 per rank of Toughened."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Tricky Target"
  a.activation = "Passive"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Any vehicle the character pilots counts as having a silhouette one lower than normal when being attacked, to a minimum of 0."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Uncanny Reactions"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character adds [boost] per rank of Uncanny Reactions to his Vigilance checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Uncanny Senses"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = true
  a.tree_description = ""
  a.description = "The character adds [boost] per rank of Uncanny Senses to his Perception checks."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Unity Assault"
  a.activation = "Active (Maneuver)"
  a.ranked = false
  a.force_talent = true
  a.tree_description = ""
  a.description = "Whenever the character misses an opponent with a combat check and generates [triumph] or [advantage][advantage][advantage], the character may spend this to perform a Force power action that targets one or more allies as a maneuver (he must still be able to perform maneuvers, and may not perform more than two maneuvers in a turn)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Valuable Facts"
  a.activation = "Active (Action)"
  a.ranked = false
  a.force_talent = false
  a.tree_description = ""
  a.description = "Once per encounter, the character may tak a Valuable Facts action, making an Average ([difficulty][difficulty]) Knowledge check (the GM and player should determine which Knowledge skill is most applicable in the given situation). If successful, the character may add [triumph] to any one check made by an allied character during the encounter.\n\nThe subsequent check should relate in some way to the facts the character learned, or the player should come up with an explanation for why the information the character learned is instrumental in the success of the ally's check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end

talent = Ability.seed(:name) do |a|
  a.name = "Well Rounded"
  a.activation = "Passive"
  a.ranked = true
  a.force_talent = false
  a.tree_description = ""
  a.description = "The character chooses any two skills. They permanently become career skills."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = talent.first.id
  sa.sourceable_type = 'Ability'
  sa.source_id = Source.find_by(product_code: "SWF02").id
  sa.page_number = 153
end
