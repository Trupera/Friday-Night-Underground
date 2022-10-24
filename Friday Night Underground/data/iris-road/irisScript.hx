var hotVhs = new CustomShader(Paths.shader('hotlineVHS'));
var time:Float = 0;

//EngineSettings.middleScroll = true;


function create() {
    FlxG.camera.addShader(hotVhs);
    //PlayState.camHUD.addShader(hotVhs); -- how to add shaders to camHUD.  This one breaks tho lol.
}


function onGuiPopup() {
    demoTxt = new FlxText(0, 60, 999, 'AUG.  23  1989', 44);
    demoTxt.setFormat(Paths.font("vcr.ttf"), 50, FlxColor.WHITE);
    demoTxt.alignment = 'right';
    demoTxt.y = 500;
    demoTxt.x = 20;
    demoTxt.setGraphicSize(Std.int(demoTxt.width * 1.5));
    demoTxt.cameras = [PlayState.camHUD];
    PlayState.add(demoTxt);
}




function update(elapsed) {
    time += elapsed;
    hotVhs.data.iTime.value = [time];
}

function beatHit(curBeat) {
    if(curBeat >= 220 && curBeat < 221) {
        camHUD.visible = false;
        FlxG.camera.flash(FlxColor.WHITE, 3);
        //PlayState.remove(PlayState.bf);
        //PlayState.remove(PlayState.dad);
        //PlayState.remove(PlayState.gf);
        PlayState.playerStrums.members[0].x = 415;
        PlayState.playerStrums.members[1].x = 525;
        PlayState.playerStrums.members[2].x = 635;
        PlayState.playerStrums.members[3].x = 745;
        PlayState.cpuStrums.members[0].x = -200;
        PlayState.cpuStrums.members[1].x = -200;
        PlayState.cpuStrums.members[2].x = -200;
        PlayState.cpuStrums.members[3].x = -200;   
    }
    

    if(curBeat >= 288 && curBeat < 289) {
        camHUD.visible = false;
        FlxG.camera.flash(FlxColor.WHITE, 3);
        PlayState.playerStrums.members[0].x = 755;
        PlayState.playerStrums.members[1].x = 865;
        PlayState.playerStrums.members[2].x = 975;
        PlayState.playerStrums.members[3].x = 1085;
        PlayState.cpuStrums.members[0].x = 75;
        PlayState.cpuStrums.members[1].x = 185;
        PlayState.cpuStrums.members[2].x = 295;
        PlayState.cpuStrums.members[3].x = 405;
    }
}


function stepHit(curStep) {
    if(curStep > 883) {
        camHUD.visible = true;
    }
    if(curStep > 1153) {
        camHUD.visible = true;
    }
}