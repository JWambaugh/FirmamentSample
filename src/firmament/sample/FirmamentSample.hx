package firmament.sample;


import flash.display.Sprite;
import flash.display.Bitmap;
import firmament.core.FGame;
import flash.Lib;
import openfl.Assets;
import firmament.sample.FirmamentSampleSceneComponent;
class FirmamentSample extends Sprite{

	var splashScreen:Bitmap;
	public	function new(){

		super();
		
		setupEngine();

	}



	private function setupEngine(){
		
		var game:FGame = FGame.getInstance();
        game.loadScene("config/scene/mainScene.json");
        var camera = game.getCamera('main');
        camera.setZoom(75);


		
		
	
	}
}