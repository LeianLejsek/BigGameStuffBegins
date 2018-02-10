if( self != oGame.camera ){
    show_debug_message("Not game camera running this script.");
    return 0;
}

var NextView = argument0;

switch NextView {
    case ViewPlatformer:
        CurrentView = ViewPlatformer;
        Transition = true;
        t = 0;
    break;
    case ViewBattle:
        CurrentView = ViewBattle;
        Transition = true;
        t = 0;
    break;
    default:
        show_debug_message("View not defined.");
        return 0;
    break;
}
