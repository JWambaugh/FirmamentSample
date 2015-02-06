package firmament.sample;
import firmament.core.FGame;
import flash.display.BitmapData;
import firmament.tilesheet.FTilesheet;
import flash.geom.Rectangle;
import firmament.util.FLog;
class FirmamentSampleSceneComponent extends firmament.scene.FSceneComponent{

 
    public function new(gameInstance:FGame){
        super(gameInstance);
    }

    override public function init(config:firmament.core.FConfig):Void {
        FLog.debug(Std.string(config));
       
    }




}