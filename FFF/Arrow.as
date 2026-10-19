class Arrow extends MovieClip {
	//Create Instance Vars
	var isPressed:Boolean = false;
	var touchWasDown:Boolean = false;
	var keyWasDown:Boolean = false;
	
	//Check for Miss
	function checkForArrow(){	
		//Problem Child, prevents cheating 1234 for high combos on hold
		if(_root.game.speaker._currentFrame > 54 && _root.game.speaker._currentFrame < 76){
			_root.game.speaker.gotoAndPlay(76);
		}
	
		//Animate Speaker BAD
		if(_root.game.speaker._currentFrame < 36 || _root.game.speaker._currentFrame > 105){
			_root.game.speaker.gotoAndPlay(76);
		}
	}
	
	function onEnterFrame(){
		if(!keyWasDown && !touchWasDown){
			isPressed = false;
			
			if(_currentFrame != 3){
				this.gotoAndStop(1);
			}
		}
		
		if(isPressed == true){
			this.gotoAndStop(2);
		}
	}
}