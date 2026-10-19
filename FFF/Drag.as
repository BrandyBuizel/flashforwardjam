class Drag extends MovieClip {		
	function onEnterFrame(){
		if(_root.camera.isHidden){
			if(!this.hitTest(_root.girl_hitbox)){
				this._visible = false;
			}
		}else if(!_root.camera.isHidden){
			this._visible = true;
		}
	}
}