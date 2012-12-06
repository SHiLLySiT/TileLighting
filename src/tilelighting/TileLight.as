package tilelighting 
{
	/**
	 * ...
	 * @author alex larioza
	 */
	public class TileLight 
	{
		private var _column:int;
		/**
		 * Light column.
		 */
		public function get column():int { return _column; }
		public function set column(value:int):void { _column = value; }
		
		private var _row:int;
		/**
		 * Light row.
		 */
		public function get row():int { return _row; }
		public function set row(value:int):void { _row = value; }
		
		private var _radius:int;
		/**
		 * Radius of the light
		 */
		public function get radius():int { return _radius; }
		public function set radius(value:int):void { _radius = value; }
		
		private var _brightness:int;
		/**
		 * Brightness of the light. Valid values are 0 to the number of tiles (minus one) in your source image.
		 */
		public function get brightness():int { return _brightness; }
		public function set brightness(value:int):void { _brightness = value; }
		
		private var _falloff:int;
		/**
		 * Affects the distance at which the light begins to fade to darkness; higher values = greater intensity.
		 */
		public function get falloff():int { return _falloff; }
		public function set falloff(value:int):void { _falloff = value; }
		
		private var _enabled:Boolean;
		/**
		 * If the light should be on.
		 */
		public function get enabled():Boolean { return _enabled; }
		public function set enabled(value:Boolean):void { _enabled = value; }
		
		/**
		 * Creates a new tile light.
		 * @param	column
		 * @param	row	
		 * @param	radius	Radius of the light.
		 * @param	brightness	Brightness of the light.
		 * @param	falloff
		 * @param	enabled	If the light should be on.
		 */
		public function TileLight(column:int, row:int, radius:int, brightness:int, falloff:int = 0, enabled:Boolean = true) 
		{
			_column = column;
			_row = row;
			_radius = radius;
			_brightness = brightness;
			_falloff = falloff;
			_enabled = enabled;
		}
		
	}

}