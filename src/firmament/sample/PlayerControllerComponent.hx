
package firmament.sample;

import firmament.component.base.FEntityComponent;
import firmament.core.FCamera;
import firmament.core.FConfig;
import firmament.core.FEntity;
import firmament.core.FEvent;
import firmament.core.FGame;
import firmament.core.FProperty;
import firmament.core.FVector;
import firmament.event.FBox2DCollisionEvent;
import firmament.event.FMouseEvent;
import firmament.scene.FScene;
import firmament.util.FLog;

/*
    Class: PlayerControllerComponent
    Handles player object interactions
*/
class PlayerControllerComponent extends FEntityComponent {
    
    public function new(gameInstance:FGame){
        super(gameInstance);
    }

    public function onBeginContact(e:FBox2DCollisionEvent) {
        var ent:FEntity = e.getOtherEntity(_entity);
    }

    public function onEndContact(e:FBox2DCollisionEvent) {
        var ent:FEntity = e.getOtherEntity(_entity);
    }

    override public function init(config:FConfig){
        var eventListen:String = config.getNotNull('listen',String);
        if( eventListen != null ) {
            _entity.on(eventListen,this,moveEntity);
        }

        _entity.on(FGame.COLLISION_BEGIN_CONTACT_EVENT,this,onBeginContact);
        _entity.on(FGame.COLLISION_END_CONTACT_EVENT,this,onEndContact);
    }

    override public function getType(){
        return "playeraction";
    }

}
