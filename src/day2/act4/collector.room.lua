_collector_drunk = false

collector = room {
	nam = 'Коллектор';
	dsc = [[
		Ты стоишь по колено в говне и вспоминаешь, как прекрасен закат.
	]];
	obj = {
		'collector_man';
	};
	way = {
		'sewer';
	};
}

collector_man = obj {
	nam = 'Старик';
	dsc = [[
		{Горбатый старик} сидит на какой-то трубе.
	]];
	act = function()
		if _collector_drunk then
			return [[
				-- Благослови тебя благословитель, сынок.
			]]
		end

		if have 'lord_sign' then
			_collector_drunk = true
			event 'ready to rock the boat'
			return [[
				-- Нихуя чё ты принёс. Где достал?
				^
				-- Где достал, там уже нету.
				^
				-- Народ нынче не тот.
				^
				-- И не говори, а ещё они заговор планируют, вот бумаги.
				^
				-- А расскажи городскому совету, пусть тоже порадуются.
			]]
		end

		if have 'rocky_island' then
			_collector_drunk = true
			event 'ready to rock the boat'
			inv():del 'rocky_island'
			return [[
				-- Ой, хорошо пошла. А чё ты тут делаешь?
				^
				-- Ну, у меня тут документы-хуементы, ищу себе
				апартаменты.
				^
				-- А расскажи городскому совету, пусть тоже порадуются.
			]]
		end

		event 'old man needs his drink'
		return [[
			-- Эй, старик! А давай вспоминать старые времена.
			^
			Старик жестами объясняет, что ему нужно промочить горло.
		]]
	end;
}
