blacksmith = obj {
	nam = 'Кузнец';
	dsc = [[
		{Кузнец} тоже на ногах, подпирает дверь	своего заведения.
		Кажется, он пил	всю ночь, до похмелья ему ещё далеко.
		Тебе предстоит узнать повод.
	]];
	act = function()
		walk 'blacksmith_dlg'
	end;
}

blacksmith_dlg = dlg {
	nam = 'Кузнец';
	hideinv = true;
	entered = [[
		-- Утро доброе, -- хмуро приветствует тебя кузнец неожиданно трезвым голосом.

	]];
	phr = {
		{
			tag = 'new_bow';
			false;
			'Слушай, я насчёт твоего последнего лука...';
			[[
				Кузнец вскидывает руки в примирительном жесте.
				^
				-- Да-да, знаю. Но понимаешь, тут появилась одна проблема.
				Ночью ко мне вломился Уоррен, скотина. Всё кричал о каких-то долгах.
				Я пытался возразить, но ты же знаешь Уоррена. В итоге он ушёл вместе
				с кое-какими моими накоплениями, ну, на жизнь. Но главное -- забрал молот.
				А без него я как без рук. Что теперь кузницу закрывать?!
			]];
			function()
				event 'warren conflict'
			end;
		};
		{
			tag = 'all_done';
			false;
			'Всё готово, сэр.';
			[[
				-- Окей, вот твой лук.
			]];
			function()
				event 'got new bow'
			end
		};
		{
			always = true;
			'Я пойду.';
			'Кузнец погружён в свои мысли и ничего тебе не отвечает.';
			function()
				back()
			end;
		};
	};
}

on_event('gear taken', function()
	blacksmith_dlg:pon('new_bow')
end)

on_event('got the hammer', function()
	blacksmith_dlg:pon('all_done')
end)
