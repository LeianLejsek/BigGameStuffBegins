if( self != oGame.camera ){
    show_debug_message("Not game camera running this script.");
    return 0;
}

var NextView = argument0;

switch NextView {
    case ViewPlatform:
        view_visible[ ViewBattle ] = false;        
        view_visible[ ViewPlatform ]= true;
    break;
    case ViewBattle:
        view_visible[ ViewPlatform ] = false;
        view_visible[ ViewBattle ] = true;
    break;
    default:
        show_debug_message("View not defined.");
        return 0;
    break;
}
