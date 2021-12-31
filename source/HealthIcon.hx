package;

import flixel.FlxSprite;

class HealthIcon extends FlxSprite
{
	/**
	 * Used for FreeplayState! If you use it elsewhere, prob gonna annoying
	 */
	public var sprTracker:FlxSprite;

	public function new(char:String = 'bf', isPlayer:Bool = false)
	{
		super();
		
		loadGraphic(Paths.image('iconGrid'), true, 150, 150);

		antialiasing = true;
		animation.add('bf', [0, 1], 0, false, isPlayer);
		animation.add('character1', [2, 3], 0, false, isPlayer);
		animation.add('character2', [4, 5], 0, false, isPlayer);
		animation.add('character3', [6, 7], 0, false, isPlayer);
		animation.add('icon1', [10, 10], 0, false, isPlayer);
		animation.add('icon2', [11, 11], 0, false, isPlayer);
		animation.add('icon3', [12, 12], 0, false, isPlayer);
		animation.add('gf', [8], 0, false, isPlayer);
		animation.play(char);

		switch(char)
		{
			case 'bf-pixel' | 'senpai' | 'senpai-angry' | 'spirit' | 'gf-pixel':
				antialiasing = false;
		}

		scrollFactor.set();
	}

	override function update(elapsed:Float)
	{
		super.update(elapsed);

		if (sprTracker != null)
			setPosition(sprTracker.x + sprTracker.width + 10, sprTracker.y - 30);
	}
}
