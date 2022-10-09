enableRating = true;

// enableMiss(true);

function create() {
    note.frames = Paths.getSparrowAtlas("DANGER_NOTE");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple0000");
        case 1:
            note.animation.addByPrefix('scroll', "blue0000");
        case 2:
            note.animation.addByPrefix('scroll', "green0000");
        case 3:
            note.animation.addByPrefix('scroll', "red0000");
    }

    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;
    note.splashColor = 0xF4EE02;

    note.animation.play("scroll");
    if (note.isSustainNote) {
        if (note.prevNote != null)
            if (note.prevNote.animation.curAnim.name == "holdend")
                note.prevNote.animation.play("holdpiece");
        note.animation.play("holdend");
    }
}

function onMiss(note){
    FlxG.sound.play(Paths.sound("zap"));
    PlayState.health -= 0.5;
}