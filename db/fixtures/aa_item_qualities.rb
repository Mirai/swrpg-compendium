swf02 = Source.find_by(product_code: "SWF02")

quality = ItemQuality.seed(:name) do |q|
  q.name = "Accurate"
  q.active = false
  q.description = "Accurate weapons are easier to aim or wield, whether through design or technology. For each level of this trait, the attacker adds [boost] to his attack dice pools while using this weapon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 161
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Auto-fire"
  q.active = true
  q.description = "A weapon with Auto-fire can be set to shoot in rapid succession and potentially spray an area with bolts, flechettes, slugs, or other types of projectives. The advantage in using Auto-fire is that it has the chance to hit multiple targtes or to hit a single target multiple times.\n\nAs attacking with a weapon on Auto-fire is generally less accurate, the attacker must increase the difficulty of the attack check by [difficulty]. The user may choose to not use the Auto-fire quality on a weapon; in this case, he cannot trigger the quality but also does not suffer the aforementioned penalty.\n\nIf the attack hits, the attacker can trigger Auto-fire by spending [advantage][advantage]. Auto-fire can be triggered multiple times. Each time the attacker triggers Auto-fire, it deals an additional hit to the target. Each of these counts as an additional hit from that weapon, and each hit deals base damage plus the number of uncanceled [success] on the check.\n\nThese additional hits can be allocated to the original target, or to other targets within range of the weapon. If the attacker wishes to hit multiple targets, he must decide to do so before making the check. Furthermore, if he wishes to hit multiple targets, his initial target must always be the target with the highest difficulty and highest defense (if this is two separate targets, the GM chooses which target is the initial target). The initial hit must always be against the initial target. Subsequent hits generated can be allocated to any of the other designated targets.\n\nAuto-fire weapons can also activate one Critical Injury for each hit generated on the attack, per the normal cost; the Critical Injury must be applied to the target of the specified hit."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 161
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Blast"
  q.active = true
  q.description = "The weapon has a large spread, an explosive blast, or similar area of effect, like the detonation of a grenade or a warhead fired from a missile launcher. If the attack is successful and Blast activates, each character (friend or foe) engaged with the original target suffers damage equal to the weapon's Blast rating (plus an additional wound per [success] as usual).\n\nIn a relatively small and enclosed area, the Game Master might decide that everyone in the room suffers damage.\n\nIf the Blast quality doesn't activate, the ordnace still detonates, but bad luck or poor aim on the part of the firer (or quick reactions on the part of the victims) means the explosion may not catch anyone else in its radius. However, the user may also trigger Blast if the attack misses by spedning [advantage][advantage][advantage]. In this case, the original target and every target engaged with the original target suffers damage equal to the Blast rating of the weapon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 162
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Breach"
  q.active = false
  q.description = "Weapons with Breach burn through the toughest armor; they are often heavy weapons or starship weapons.\n\nBreach weapons ignore one point of armor for every rating of Breach (meaning they also ignore 10 points of soak for every rating of Breach)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 162
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Burn"
  q.active = true
  q.description = "Weapons with Burn inflict damage over time. If the attack is successful, the target continues to suffer the weapon's base damage each round for a number of rounds equal to the weapon's Burn rating. Damage is applied at the start of each of the target's turns.\n\nA victim might be able to stop the damage by rolling around on the ground and making an Agility check as an action. This is an Average ([difficulty][difficulty]) Coordination check on hard surfaces such as the hall of a spaceship, or an Easy ([difficulty]) Coordination check on the grass or soft ground. Jumping into a body of water stops the damage immediately. Both situations assume the flame is from actual combustion rather than chemical reaction. With the latter, there is usually little the victim can do."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 162
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Concussive"
  q.active = true
  q.description = "The weapon's attack can leave the target shellshocked from mighty blows or punishing shockwaves, unable to perform any but the most basic actions. The target is staggered for a number of rounds equal to the weapon's Concussive rating. A staggered target cannot perform actions."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 162
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Cortosis"
  q.active = false
  q.description = "Cortosis is an ore principally found in the Outher Rim. Extremely rare and valuable, it was used primarily during the Clone Wars against the Jedi Knights. THere are two varieties of cortosis ore. The rarest versions can actually short out a lightsaber's blade, causing it to fail temporarily. The far more common cortosis ore is still a miraculous substance, because when molded into armor, it forms an interlocking molecular bond that is extremely resistant to energy weapons.\n\nWeapons with the Cortosis quality are immune to the Sunder quality. Armor with the Cortosis quality makes the wearer's soak imune to the Pierce and Breach qualities."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 162
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Cumbersome"
  q.active = false
  q.description = "A Cumbersome weapon is large, unwieldy, awkward, or heavy. To wield a Cumbersome weapon properly, the character needs a Brawn characteristic equal to or greater than the weapon's Cumbersome rating. For each point of Brawn by which the character is deficient, he must increase the difficulty of all checks made while using the weapon by one."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Defensive"
  q.active = false
  q.description = "Defensive weapons are particualrly good at fending off incoming melee attacks. A character wielding a weapon with the Defensive quality increases his melee defense by the weapon's Defensive rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Deflection"
  q.active = false
  q.description = "An item with the Deflection quality increases the wearer's ranged defense by an amount equal to its Deflection rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Disorient"
  q.active = true
  q.description = "A weapon with Disorient can daze an opponent. When Disorient is triggered, the target is disoriented for a number of rounds equal to the weapon's Disorient rating. (A disoriented target adds [setback] to all skill checks he performs.)"
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Ensnare"
  q.active = true
  q.description = "A weapon with Ensnare binds a foe and restricts his movements. When Ensnare is triggered, the target is immobolized for a number of rounds equal to the weapon's Ensnare rating. An Ensnared target may attempt a Hard ([difficulty][difficulty][difficulty]) Athletics check as his action on his turn to break free from the effect. (An immobilized target cannot perform maneuvers.)"
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Guided"
  q.active = true
  q.description = "Certain projectiles, such as guided missiles, may benefit from course alterations after being fired. If a character misses while firing a Guided weapon and if Guided is activated, he may make an attack check at the end of the round. The difficulty of the check is calculated by comparing the weapon's silhouette of 0 to the silhouette of the target; the check's [ability] is equal to the weapon's Guided rating. If the check is successful, the weapon strikes the target, and damage is dealt normally.\n\nGuided requires [advantage][advantage][advantage] to activate, unless otherwise specified in the weapon's description. Remember, the Guided effect can activate on its subsequent attacks, representing the projectile continuing to track the target.\n\n\"Spoofing\" is a countermeasure designed to work against a particular type of projectile, such as flares designed to draw off infrared missiles. Spoofing directly increases the defense of the target against attacks with the Guided quality."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Knockdown"
  q.active = true
  q.description = "When Knockdown triggers, the target is knocked prone.\n\nUnless specified otherwise, Knockdown requires [advantage][advantage] to trigger, plus one additional [advantage] per silhouette of the target beyond one."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Inaccurate"
  q.active = false
  q.description = "Inaccurate weapons are weapons of a shoddy or inferior construction, which means they are less likely to be accurate or precise. Alternatively, the weapon's nature may inhibit accuracy. Inaccurate weapons add [setback] to the attacker's dice pool equal to their Inaccurate rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Inferior"
  q.active = false
  q.description = "An inferior item is a lackluster example of its kind, representing shoddy and poor craftsmanship. An Inferior weapon generates automatic [threat] on all checks related to its use, and its base damage is decreased by one. Inferior armor has its encumbrance increased by one and its defense decreased by one. If it does not have defense, decrease its soak value by one, to a minimum of zero."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Ion"
  q.active = false
  q.description = "Ion weapons are designed to affect electrical systems instead of dealing raw damage. They are fitted to ships to knock out opponents' shields, sensors, and engines. They are shorter range than laser weapons and deal larger amounts of damage, but their damage is dealt to the target (usually a vehicle) as system strain. The damage is still reduced by armor and soak. Driods are affected by ion weapons, taking damage to their strain threshold."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Limited Ammmo"
  q.active = false
  q.description = "Some weapons fire particularly large or complex projectiles that cost significant numbers of credits or are themselves complete weapons that, once launched, are expended. A weapon with the Limited Ammo quality may be used to make a number of attacks equal to its Limited Ammo rating before it must be reloaded with a maneuver. In addition, each shot expends one of a limited number of rounds of ammo, which, once used, must be purchasd or otherwise obtained before firing the weapon again. This also applies to grenades and other \"one-use\" weapons that have the Limited Ammo 1 quality (here, the user is not \"reloading\" the grenade, but drawing another to use--mechaniclly, they are equavalent)."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 163
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Linked"
  q.active = true
  q.description = "Some weapons, like the laser cannons fitted to the X-wing, are designed to fire together at the same target. This increases the possibility of a hit as well as the damage dealt. When firing a linked weapon, one a successful attack, the weapon deals one hit. The wielder may spend [advantage][advantage] to gain an additional hit, and may do so a number of times equal to the weapon's Linked rating. Additional hits from the Linked weapon may only be applied against the original target. Each hit deals the weapon's base damage plus the total uncancelled [success] scored on the check."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Pierce"
  q.active = false
  q.description = "An attack made with this weapon ignores one point of soak for each rank of Pierce. If the weapon has more ranks of Pierce than the target's total soak, it completely ignores the target's soak. For example, Pierce 3 against a soak of 2 ignores 2 points of soak, but the extra point of Pierce has no further effect."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Prepare"
  q.active = false
  q.description = "Weapons with this quality require time to set up before being used. The user must perform a number of preparation maneuvers equal to the weapon's Prepare rating before making attacks with that weapon."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Slow-Firing"
  q.active = false
  q.description = "Slow-Firing weapons tend to be large, heavy, emplacement-mounted weapons such as planetary defense ion cannons and the turbolasers found on capital ships. While they deal incredible damage, they need time to recharge or cool down between shots. A weapon's Slow-Firing rating dictates how soon the weapon can be fired again after attacking. For example, a heavy turbolaser with Slow-Firing 2 must waint two rounds after being fired before it can be fired again."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Stun"
  q.active = true
  q.description = "A weapon with Stun can deal strain to the target. When the Stun quality is activated, it inflicts strain equal to the weapon's Stun rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Stun Damage"
  q.active = false
  q.description = "Some weapons deal Stun damage instead of regular damage. In this case, the weapon deals damage as strain instead of wounds. This damage is still reduced by a target's soak.\n\nA variant of this is a Stun setting. As an incidental, the wielder can choose to switch the setting of his weapon to \"Stun.\" In this case, it does Stun damage as described previously. When weapons with a Stun setting are used to deal Stun damage, their range changes to short and cannot be increased."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Sunder"
  q.active = true
  q.description = "When activated, the attacker chooses one item openly wielded by the target (such as a weapon, shield, or item on a belt). THat item is damage one step: to minor if undamaged, from minor to moderate, or from moderate to major. If a weapon already suffering major damage is the target of a successful Sunder, it is destroyed.\n\nSunder requires [advantage] to activate. If activated multiple times in the same attack, each activation can be applied against the same weapon, potentially taking a weapon from undamaged to destroyed in a single attack."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Superior"
  q.active = false
  q.description = "A Superior item is a sterling example of its kind, representing masterful craftmanship. A Superior weapon generates automatic [advantage] on all checks related to its use, and its base damage is increased by one. Superior armor has its encumbrance reduced by one and its soak value increased by one."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Tractor"
  q.active = false
  q.description = "Instead of firing searing beams of laser fire or crackling ion discharges, this weapon fires relatively harmless electromagnetic beams that ensnare ships and hold them fast in space. Tractor beams, like all weapons, are fired at their target using the appropriate skill check (generally Gunnery) with all suitable modifiers. Once the weapon hits its targer, the target may not move unless its pilot makes a successful Piloting check with a difficulty equal to the tractor beam's rating."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Unwieldy"
  q.active = false
  q.description = "An Unwieldy weapon is a weapon that can be particularly awkward to use for those without impressive dexterity and hand-eye coordination. To wield an Unwieldy weapon properly, the character needs an Agility characteristic equal to or greater than the weapon's Unwieldy rating. For each point of Agility by which the character is deficient, he must increase the difficulty of all checks made while using the weapon by one."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end

quality = ItemQuality.seed(:name) do |q|
  q.name = "Vicious"
  q.active = false
  q.description = "When this weapon scores a Critical Injury or Hit, the character adds ten times the Vicious rating to the Critical roll. With Vicious 3, for example, the victim adds +30 to his Critical Injury or Hit result."
end

SourceAssociation.seed(:sourceable_id, :sourceable_type, :source_id) do |sa|
  sa.sourceable_id = quality.first.id
  sa.sourceable_type = 'WeaponQuality'
  sa.source_id = swf02.id
  sa.page_number = 164
end
