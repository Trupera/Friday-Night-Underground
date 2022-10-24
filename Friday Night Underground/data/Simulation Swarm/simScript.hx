var hotVhs = new CustomShader(Paths.shader('hotlineVHS'));
var time:Float = 0;

//EngineSettings.middleScroll = true;


function create() {
    FlxG.camera.addShader(hotVhs);
    //PlayState.camHUD.addShader(hotVhs); -- how to add shaders to camHUD.  This one breaks tho lol.
}


function onGuiPopup() {
    demoTxt = new FlxText(0, 60, 999, 'FEB.  11  1992', 44);
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
