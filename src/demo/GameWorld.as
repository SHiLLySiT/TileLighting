package demo
{
	import net.flashpunk.Entity;
	import net.flashpunk.FP;
	import net.flashpunk.utils.Input;
	import net.flashpunk.utils.Key;
	import net.flashpunk.World;
	import tilelighting.TileLighting;

	/**
	 * ...
	 * @author Alex Larioza
	 */
	public class GameWorld extends World 
	{
		public static const TILE_SIZE:int = 16;
		
		private var _cursor:Cursor;
		public function get cursor():Cursor { return _cursor; }
		
		private var _lighting:TileLighting;
		public function get lighting():TileLighting { return _lighting; }
		
		public function GameWorld()
		{
			add(_cursor = new Cursor());
			_lighting = new TileLighting(Assets.SPR_LIGHTING, FP.screen.width, FP.screen.height, TILE_SIZE, TILE_SIZE);
			add(_lighting);
		}
		
		override public function begin():void
		{
			super.begin();
		}
		
		override public function update():void 
		{
			super.update();
			
			if (Input.pressed(Key.LEFT))
			{
				if (_cursor.light.brightness > 0)
				{
					_cursor.light.brightness--;
					trace("LIGHT:", _cursor.light.brightness);
				}
			}
			
			if (Input.pressed(Key.RIGHT))
			{
				if (_cursor.light.brightness < 4)
				{
					_cursor.light.brightness++;
					trace("LIGHT:", _cursor.light.brightness);
				}
			}
			
			if (Input.pressed(Key.UP))
			{
				if (_lighting.ambientLevel < 4)
				{
					_lighting.ambientLevel++;
					trace("GLOBAL:", _lighting.ambientLevel);
				}
			}
			
			if (Input.pressed(Key.DOWN))
			{
				if (_lighting.ambientLevel > 0)
				{
					_lighting.ambientLevel--;
					trace("GLOBAL:", _lighting.ambientLevel);
				}
			}
			
			if (Input.mouseDown)
			{
				if (!_cursor.collide("block", _cursor.flooredX, _cursor.flooredY))
				{
					add(new Block(_cursor.flooredX, _cursor.flooredY));
				}
			}
			
			if (Input.mouseDownRight)
			{
				var e:Entity = _cursor.collide("block", _cursor.flooredX, _cursor.flooredY);
				if (e)
				{
					remove(e);
				}
			}
		}
		
		override public function render():void 
		{
			super.render();
		}
	}
}