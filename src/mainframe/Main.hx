package mainframe;

import js.Browser;

class Main {

    static inline var WIDTH = 400;
    static inline var HEIGHT = 600;

    static function init() {
        var window = Browser.window;
        var document = Browser.document;
        var canvas = document.createCanvasElement();
        canvas.width = WIDTH;
        canvas.height = HEIGHT;
        var renderer = new Renderer(canvas);
        var loop = new Loop(renderer);
        var mainDiv = document.getElementById("main");
        mainDiv.appendChild(canvas);
        loop.start();
    }

    static function main() {
        Browser.window.addEventListener("load", init);
    }
}
