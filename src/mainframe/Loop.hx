package mainframe;

import js.Browser;

class Loop {

    var state:GameState;
    var running:Bool;
    var renderer:Renderer;

    var x:Int;
    var y:Int;

    public function new(renderer:Renderer) {
        this.renderer = renderer;
        state = new GameState();
        x = 0;
        y = 0;
    }

    public function start() {
        running = true;
        tick(0);
    }

    public function stop() {
        running = false;
    }

    public function tick(delta:Float) {
        if (running) {
            renderer.clear();
            x = (x + 1) % 600;
            y = (y + 2) % 300;
            renderer.drawBox(x, y, 10, 10);
            Browser.window.requestAnimationFrame(tick);
        }
    }
}
