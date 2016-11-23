package mainframe;

import js.html.CanvasElement;
import js.html.CanvasRenderingContext2D;

class Renderer {

    static inline var CLEAR_COLOR = "white";

    var canvas:CanvasElement;
    var ctx:CanvasRenderingContext2D;

    public function new(canvas:CanvasElement) {
        this.canvas = canvas;
        ctx = canvas.getContext2d();
    }

    public function drawBox(x:Int, y:Int, w:Int, h:Int, ?color = "black") {
        ctx.fillStyle = color;
        ctx.fillRect(x, y, w, h);
    }

    public function clear() {
        ctx.fillStyle = CLEAR_COLOR;
        ctx.fillRect(0, 0, canvas.width, canvas.height);
    }

}
