package 
{
	import demo.GameWorld;
	import net.flashpunk.Entity;
	import net.flashpunk.Engine;
	import net.flashpunk.FP;
	[SWF(width = "640", height = "480")]

	/**
	 * ...
	 * @author Alex Larioza
	 */
	public class Main extends Engine
	{

		public function Main()
		{
			super(640, 480);
			FP.screen.color = 0x696969;
			FP.console.enable();
		}

		override public function init():void
		{
			super.init();
			
			FP.world = new GameWorld();
		}

	}
}