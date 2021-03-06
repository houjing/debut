tower_stage5 = room {
	nam = 'Пятый этаж';
	dsc = [[
		Небольшой коридор, в нём четыре комнаты.
	]];
	way = {
		'tower_stage5_room1';
		'tower_stage5_room2';
		'tower_stage5_room3';
		'tower_stage5_room4';
	};
}

tower_stage5_room1 = vroom('Дальняя левая комната', 'tower_stage5_vicar_room');

tower_stage5_room2 = vroom('Ближняя левая комната', 'tower_stage5_adviser_room');

tower_stage5_room3 = room {
	nam = 'Дальняя правая комната';
	enter = function()
		return 'В комнате соврешенно пусто.', false
	end;
}

tower_stage5_room4 = room {
	nam = 'Ближняя правая комната';
	enter = function()
		return 'Закрыто', false
	end;
}

