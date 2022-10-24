enableRating = true;

// enableMiss(true);

function create() {
    note.frames = Paths.getSparrowAtlas("NOTE_guitar");

    switch(note.noteData % PlayState.song.keyNumber) {
        case 0:
            note.animation.addByPrefix('scroll', "purple0000");
            note.animation.addByPrefix('holdend', "pruple end hold0000");
            note.animation.addByPrefix('holdpiece', "purple hold piece0000");
            note.splashColor = 0xE80EC1;
        case 1:
            note.animation.addByPrefix('scroll', "blue0000");
            note.animation.addByPrefix('holdend', "blue hold end0000");
            note.animation.addByPrefix('holdpiece', "blue hold piece0000");
            note.splashColor = 0x12AFDE;
        case 2:
            note.animation.addByPrefix('scroll', "green0000");
            note.animation.addByPrefix('holdend', "green hold end0000");
            note.animation.addByPrefix('holdpiece', "green hold piece0000");
            note.splashColor = 0x0ADC5C;
        case 3:
            note.animation.addByPrefix('scroll', "red0000");
            note.animation.addByPrefix('holdend', "red hold end0000");
            note.animation.addByPrefix('holdpiece', "red hold piece0000");
            note.splashColor = 0xD02E0B;
    }

    note.setGraphicSize(Std.int(note.width * 0.7));
    note.updateHitbox();
    note.antialiasing = true;
    note.hitOnBotplay = true;
    note.splash = Paths.splashes('guitarSplashes');

    note.animation.play("scroll");
    if (note.isSustainNote) {
        if (note.prevNote != null)
            if (note.prevNote.animation.curAnim.name == "holdend")
                note.prevNote.animation.play("holdpiece");
        note.animation.play("holdend");
    }
}