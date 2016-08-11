



#### FINAL FANTASY PLAYABLE CHARACTERS ####


## MaxHP = ( (Vitality * 10) + 30 )
## MaxMP = (Magic * 10)


FF7_characters = {
	
	
Cloud: {
	name: "Cloud Strife",
	HP_MaxHP:[160,160],
	MP_MaxMP:[100,100],
	stats:{	Strength:15,
			Vitality:13,
			Dexterity:11,
			Magic:10,
			Spirit:11,
			Luck:11},
	equipped_weapon: "Ultima Weapon",
	materia: []
	
}, # End Cloud

Barret: {
	name:"Barret Wallace",
	HP_MaxHP:[170,170],
	MP_MaxMP:[70,70],
	stats:{	Strength:13,
			Vitality:14,
			Dexterity:8, 
			Magic:7,
			Spirit:11,
			Luck:8},
	equipped_weapon:"Missing Score",
	materia: []
	
	}, # End Barret

Tifa: {
	name:"Tifa Lockhart",
	HP_MaxHP:[150,150],
	MP_MaxMP:[90,90],
	stats:{	Strength:14,
			Vitality:12,
			Dexterity:14, 
			Magic:9,
			Spirit:13,
			Luck:11},
	equipped_weapon:"Premium Heart",
	materia: []
	
	}, # End Tifa

Aeris: {
	name:"Aeris Gainsborough",
	HP_MaxHP:[110,110],
	MP_MaxMP:[90,90],
	stats:{	Strength:6,
			Vitality:8,
			Dexterity:9, 
			Magic:14,
			Spirit:13,
			Luck:9},
	equipped_weapon:"Princess Guard",
	materia: []
	
	}, # End Aeris

Red_XIII: {
	name:"Red XIII",
	HP_MaxHP:[150,150],
	MP_MaxMP:[110,110],
	stats:{	Strength:11,
			Vitality:12,
			Dexterity:13, 
			Magic:11,
			Spirit:11,
			Luck:9},
	equipped_weapon:"Limited Moon",
	materia: []
	
	}, # End Red XIII


Cait_Sith: {
	name:"Cait Sith",
	HP_MaxHP:[110,110],
	MP_MaxMP:[90,90],
	stats:{	Strength:7,
			Vitality:13,
			Dexterity:8, 
			Magic:11,
			Spirit:12,
			Luck:10},
	equipped_weapon:"HP Shout",
	materia: []
	
	
	},  # End Cait Sith	


Cid: {
	name:"Cid Highwind",
	HP_MaxHP:[110,110],
	MP_MaxMP:[70,70],
	stats:{	Strength:12,
			Vitality:11,
			Dexterity:11, 
			Magic:7,
			Spirit:10,
			Luck:9},
	equipped_weapon:"Venus Gospel",
	materia: []
	
	
	},  # End Cid


Yuffie:{
	name:"Yuffie Kisaragi",
	HP_MaxHP:[110,110],
	MP_MaxMP:[120,120],
	stats:{	Strength:7,
			Vitality:8,
			Dexterity:12, 
			Magic:12,
			Spirit:9,
			Luck:13},
	equipped_weapon:"Conformer",
	materia: []
	
	},  # End Yuffie


Vincent:{
	name:"Vincent Valentine",
	HP_MaxHP:[130,130],
	MP_MaxMP:[130,130],
	stats:{	Strength:9,
			Vitality:10,
			Dexterity:13, 
			Magic:13,
			Spirit:9,
			Luck:11},
	equipped_weapon:"Death Penalty",
	materia: []
	
	} # End Vincent

	
	

	
} # End Playable Characters



### Nested Structure Calls ####

p FF7_characters[:Tifa][:equipped_weapon]


## Aeris Equips the Flare materia ##
FF7_characters[:Aeris][:materia].push("Flare")
p FF7_characters[:Aeris][:materia]



## Ouch! - Cloud takes 27 damage! ##
p (FF7_characters[:Cloud][:HP_MaxHP][0] - 27 )



p "#{FF7_characters[:Red_XIII][:name]} is the quickest Character with #{FF7_characters[:Red_XIII][:stats][:Dexterity]} Dexterity Points"



## Level Up ##

p FF7_characters[:Yuffie][:HP_MaxHP]
p FF7_characters[:Yuffie][:MP_MaxMP]
## Yuffie Leveled up! Hit points and Magic points increased!
p FF7_characters[:Yuffie][:HP_MaxHP].replace(FF7_characters[:Yuffie][:HP_MaxHP].map{ |x|  x + 45 })
p FF7_characters[:Yuffie][:MP_MaxMP].replace(FF7_characters[:Yuffie][:MP_MaxMP].map{ |x|  x + 25 })
