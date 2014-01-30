slate.configAll({
	"defaultToCurrentScreen": true,
	"nudgePercentOf": "screenSize",
	"resizePercentOf": "screenSize",
	"focusPreiwerSameApp": true,

	"windowHintsIgnoreHiddenWindows": false,
	"windowHintsShowIcons": true,
	"windowHintsSpread": true
});


slate.bindAll({
	"esc:cmd": slate.operation("hint"),

	// aero snap
	"left:cmd;alt": slate.operation("push", {"direction": "left", "style": "bar-resize:screenSizeX/2"}),
	"right:cmd;alt": slate.operation("push", {"direction": "right", "style": "bar-resize:screenSizeX/2"}),

	// move to screens
	"left:ctrl;alt;cmd": slate.operation("throw", {"screen": "left", "width": "screenSizeX", "height": "screenSizeY"}),
	"right:ctrl;alt;cmd": slate.operation("throw", {"screen": "right", "width": "screenSizeX", "height": "screenSizeY"}),
	"up:ctrl;alt;cmd": slate.operation("throw", {"screen": "up", "width": "screenSizeX", "height": "screenSizeY"}),
	"down:ctrl;alt;cmd": slate.operation("throw", {"screen": "down", "width": "screenSizeX", "height": "screenSizeY"}),

	// focus moving
	"left:ctrl;alt": slate.operation("focus", {"direction": "left"}),
	"right:ctrl;alt": slate.operation("focus", {"direction": "right"}),
	"up:ctrl;alt": slate.operation("focus", {"direction": "up"}),
	"down:ctrl;alt": slate.operation("focus", {"direction": "down"})

})
