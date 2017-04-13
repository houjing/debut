_access_granted = false;

barracks_armory = room {
	nam = 'Арсенал';
	dsc = [[
		Ты входишь в арсенал. Это небольшое помещение, пахнущее сталью, потому
		что сталь здесь везде. Ты понимаешь, что свой стальной характер
		солдаты приобретают именно здесь.
	]];
	obj = {
		'weapon_rack';
		'armor_rack';
		'armory_guard';
	};
	way = {
		'barracks_hall';
	};
}

weapon_rack = obj {
	nam = 'Стойка с оружием';
	dsc = [[
		Слева от тебя стоит {стойка с оружием} -- мечами, копьями, луками
		и алебардами. Ты замечаешь, что оружие большей частью не новое,
		но остро наточенное.
	]];
	act = [[
		Думаю, лучше её не трогать -- солдат явно будет возражать.
	]];
}

armor_rack = obj {
	nam = 'Стойка с доспехами';
	dsc = [[
		Слева от тебя {стойка с доспехами} -- они тоже сильно помятые,
		но их много.
	]];
	act = [[
		Думаю, лучше её не трогать -- солдат явно будет возражать.
	]];
}
