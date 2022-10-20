var stage:Stage = null;
var time:Float = 0;
var trippy;
function create() {
	stage = loadStage('aloha');
	
}
function update(elapsed) {
	stage.update(elapsed);
}

function beatHit(curBeat) {
	stage.onBeat();
} 