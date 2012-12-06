package demo 
{
	import flash.display.BitmapData;
	import net.flashpunk.Entity;
	import net.flashpunk.graphics.Image;
	
	/**
	 * ...
	 * @author alex larioza
	 */
	public class Block extends Entity 
	{
		
		public function Block(x:Number, y:Number) 
		{
			super(x, y);
			
			type = "block";
			
			graphic = new Image(new BitmapData(GameWorld.TILE_SIZE, GameWorld.TILE_SIZE, false, 0x550000));
			
			setHitbox(GameWorld.TILE_SIZE, GameWorld.TILE_SIZE);
		}
		
		override public function added():void 
		{
			super.added();
			
			GameWorld(world).lighting.setBlockLight(x / GameWorld.TILE_SIZE, y / GameWorld.TILE_SIZE, true);
		}
		
		override public function removed():void 
		{
			super.removed();
			
			GameWorld(world).lighting.setBlockLight(x / GameWorld.TILE_SIZE, y / GameWorld.TILE_SIZE, false);
		}
		
	}

}