var stage:Stage = null;
var time:Float = 0;
var trippy = new CustomShader(Paths.shader('cheatingshader'));
function create() {
	spr = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/window (1)'));
	spr1 = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/window (1)'));
	cap = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/capy'));
	flor = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/flower'));
	frog = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/frog'));
	sunset = new FlxSprite(0,0).loadGraphic(Paths.image('stages/aloha/sunset'));
	spr.screenCenter();
	spr1.screenCenter();
	cap.screenCenter();
	flor.screenCenter();
	frog.screenCenter();
	sunset.screenCenter();
	PlayState.add(spr1);
	PlayState.add(spr);
	stage = loadStage('aloha');
}
function update(elapsed) {
	stage.update(elapsed);
	time += elapsed;
	trippy.data.iTime.value = [time];
}

function beatHit(curBeat) {
	stage.onBeat();
	if(curBeat >= 12) {
		spr.shader = trippy;
	}
	if(curBeat >= 276) {
		PlayState.add(flor);
		flor.shader = trippy;
	}

	if(curBeat >= 296) {
		flor.destroy();
		PlayState.add(frog);
		frog.shader = trippy;
	}

	if(curBeat >= 312) {
		frog.destroy();
		PlayState.add(sunset);
		sunset.shader = trippy;
	}

	if(curBeat >= 328) {
		sunset.destroy();
		PlayState.add(cap);
		cap.shader = trippy;
	}
} 

function stepHit(curStep) {
	if(curStep == 1345) {
		cap.destroy();
	}
	if(curStep >= 1494) {
		spr.destroy();
	}
}