//every song starts zooming on beat
function create() {
    PlayState.autoCamZooming = false;
}

function onDadHit(note) {
    PlayState.autoCamZooming = true;
}

