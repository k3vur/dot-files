slate.configAll({
	"defaultToCurrentScreen": true,
	"nudgePercentOf": "screenSize",
	"resizePercentOf": "screenSize",
	"focusPreferSameApp": true,
	"windowHintsIgnoreHiddenWindows": false,
	"windowHintsShowIcons": true,
	"windowHintsSpread": true,
});


/**
 * Aero Snap: cmd-alt + arrow key or hjkl
 */
var snapLeft = slate.operation("corner", {
	"direction": "top-left",
	"width": "screenSizeX/2",
	"height": "screenSizeY"
});
var snapRight = snapLeft.dup({ "direction": "top-right" });
var snapUp = snapLeft.dup({ "width": "screenSizeX" });

slate.bindAll({
	"left:cmd;alt": snapLeft,
	"right:cmd;alt": snapRight,
	"up:cmd;alt": snapUp,
	"h:cmd;alt": snapLeft,
	"l:cmd;alt": snapRight,
	"j:cmd;alt": snapUp,
	"k:cmd;alt": snapUp
});

/**
 * Monitor management: ctrl-alt + left / right / h / l
 */
var throwLeft = slate.operation("throw", { "screen": "left" });
var throwRight = slate.operation("throw", { "screen": "right" });
slate.bindAll({
	"left:ctrl;alt": throwLeft,
	"h:ctrl;alt": throwLeft,
	"right:ctrl;alt": throwRight,
	"l:ctrl;alt": throwRight
});


/**
 * Window Focus
 *
 * Usage: press ctrl-space and then use:
 * arrow keys or hjkl to move focus around
 */
var focusLeft = slate.operation("focus", { "direction": "left" });
var focusRight = slate.operation("focus", { "direction": "right" });
var focusUp = slate.operation("focus", { "direction": "up" });
var focusDown = slate.operation("focus", { "direction": "down" });
var focusBehind = slate.operation("focus", { "direction": "behind" });
var windowHint = slate.operation("hint", { "characters": "asdfgqwertzuiop" })
slate.bindAll({
	"left:space;ctrl:toggle": focusLeft,
	"h:space;ctrl:toggle": focusLeft,
	"right:space;ctrl:toggle": focusRight,
	"l:space;ctrl:toggle": focusRight,
	"up:space;ctrl:toggle": focusUp,
	"k:space;ctrl:toggle": focusUp,
	"down:space;ctrl:toggle": focusDown,
	"j:space;ctrl:toggle": focusDown,
	"s:space;ctrl:toggle": focusBehind,
	"space:space;ctrl:toggle":  windowHint,
	"esc:cmd": windowHint
});

/**
 * Resizing and nudging windows:
 *
 * Usage: Press alt-space and use:
 * WASD to resize the window
 * hjkl or arrow keys to move the window around
 * space to center window
 */
var growHorizontal = slate.operation("resize", { "width": "+5%", "height": "+0" });
var shrinkHorizontal = growHorizontal.dup({ "width": "-5%" });
var growVertical = slate.operation("resize", { "width": "+0", "height": "+5%" });
var shrinkVertical = growVertical.dup({ "height": "-5%" })

var nudgeLeft = slate.operation("nudge", {"x": "-5%", "y": "+0"});
var nudgeRight = slate.operation("nudge", {"x": "+5%", "y": "+0"});
var nudgeDown = slate.operation("nudge", {"x": "+0", "y": "+5%"});
var nudgeUp = slate.operation("nudge", {"x": "+0", "y": "-5%"});

var moveCenter = slate.operation("move", {
	"x": "screenOriginX+((screenSizeX-windowSizeX)/2)",
	"y": "screenOriginY+((screenSizeY-windowSizeY)/2)",
	"width": "windowSizeX",
	"height": "windowSizeY"
});

slate.bindAll({
	"left:space;alt:toggle": nudgeLeft,
	"h:space;alt:toggle": nudgeLeft,
	"right:space;alt:toggle": nudgeRight,
	"l:space;alt:toggle": nudgeRight,
	"up:space;alt:toggle": nudgeUp,
	"k:space;alt:toggle": nudgeUp,
	"down:space;alt:toggle": nudgeDown,
	"j:space;alt:toggle": nudgeDown,

	"space:space;alt:toggle": moveCenter,

	"w:space;alt:toggle": growVertical,
	"a:space;alt:toggle": shrinkHorizontal,
	"s:space;alt:toggle": shrinkVertical,
	"d:space;alt:toggle": growHorizontal
});
