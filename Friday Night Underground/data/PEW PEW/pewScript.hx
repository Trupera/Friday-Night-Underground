var blackScreen1:FlxSprite;

function create() {
    blackScreen1 = new FlxSprite(0,0).makeGraphic(Std.int(FlxG.width * 5), Std.int(FlxG.height * 5), 0xFF000000);
		blackScreen1.screenCenter();
}

function beatHit(curBeat) {
    if (curBeat >= 76)
    {
        PlayState.add(blackScreen1);
    }
    if (curBeat == 100) {
        blackScreen1.destroy();
    }
    if(curBeat >= 104 && curBeat < 164) {
        FlxG.camera.zoom += 0.020;
        PlayState.camHUD.zoom += 0.03;
    }

    if(curBeat >= 168 && curBeat < 204) {
        FlxG.camera.zoom += 0.020;
        PlayState.camHUD.zoom += 0.03;
    }
    if(curBeat >= 252 && curBeat < 308) {
        FlxG.camera.zoom += 0.020;
        PlayState.camHUD.zoom += 0.03;
    }
    if(curBeat >= 312 && curBeat < 372) {
        FlxG.camera.zoom += 0.020;
        PlayState.camHUD.zoom += 0.03;
    }
}











