import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;

void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');

  drawUSA(ctx);
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
}
  
  drawStar(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 2 * 3;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#fff';
    ctx.beginPath();
    ctx.moveTo(cx, cy - outerRadius);
    for (int i = 0; i < spikes; i++) {
        x = cx + Math.cos(rot) * outerRadius;
        y = cy + Math.sin(rot) * outerRadius;
        ctx.lineTo(x, y);
        rot += step;

        x = cx + Math.cos(rot) * innerRadius;
        y = cy + Math.sin(rot) * innerRadius;
        ctx.lineTo(x, y);
        rot += step;
    }
    ctx.lineTo(cx, cy - outerRadius);
    ctx.closePath();
    ctx.lineWidth=5;
    ctx.strokeStyle='white';
    ctx.stroke();
    ctx.fillStyle='white';
    ctx.fill();

}


void drawUSA(ctx){
  //紅底
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白線
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.3, flag_w, flag_h/13);
  ctx.fillRect(0, 45.9, flag_w, flag_h/13);
  ctx.fillRect(0, 75.5, flag_w, flag_h/13);
  ctx.fillRect(0, 106.1, flag_w, flag_h/13);
  ctx.fillRect(0, 136.7, flag_w, flag_h/13);
  ctx.fillRect(0, 167.3, flag_w, flag_h/13);
  //籃底
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, 150,106.1 );
  //星星
  drawStar(14, 17, 5, 5, 2.5);
  drawStar(38, 17, 5, 5, 2.5);
  drawStar(62, 17, 5, 5, 2.5);
  drawStar(88, 17, 5, 5, 2.5);
  drawStar(112, 17, 5, 5, 2.5);
  drawStar(136, 17, 5, 5, 2.5);
  
  drawStar(25, 36, 5, 5, 2.5);
  drawStar(50, 36, 5, 5, 2.5);
  drawStar(75, 36, 5, 5, 2.5);
  drawStar(100, 36, 5, 5, 2.5);
  drawStar(125, 36, 5, 5, 2.5);
  
  drawStar(14, 54, 5, 5, 2.5);
  drawStar(38, 54, 5, 5, 2.5);
  drawStar(62, 54, 5, 5, 2.5);
  drawStar(88, 54, 5, 5, 2.5);
  drawStar(112, 54, 5, 5, 2.5);
  drawStar(136, 54, 5, 5, 2.5);
  
  drawStar(25, 71, 5, 5, 2.5);
  drawStar(50, 71, 5, 5, 2.5);
  drawStar(75, 71, 5, 5, 2.5);
  drawStar(100, 71, 5, 5, 2.5);
  drawStar(125, 71, 5, 5, 2.5);
  
  drawStar(14, 88, 5, 5, 2.5);
  drawStar(38, 88, 5, 5, 2.5);
  drawStar(62, 88, 5, 5, 2.5);
  drawStar(88, 88, 5, 5, 2.5);
  drawStar(112, 88, 5, 5, 2.5);
  drawStar(136, 88, 5, 5, 2.5);
} 

void drawUK(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 40;
  ctx.beginPath();
  ctx.moveTo(0,0);
  ctx.lineTo(300,200);
  ctx.moveTo(0,200);
  ctx.lineTo(300,0);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(0,205);
  ctx.lineTo(150,105);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(150,95);
  ctx.lineTo(300,-5);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(160,100);
  ctx.lineTo(305,200);
  ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
  ctx.beginPath();
  ctx.moveTo(140,100);
  ctx.lineTo(-5,0);
  ctx.stroke();
  ctx.strokeStyle="#fff";
  ctx.lineWidth = 40;
    ctx.beginPath();
    ctx.moveTo(0,100);
    ctx.lineTo(300,100);
    ctx.moveTo(150,0);
    ctx.lineTo(150,200);
    ctx.stroke();
  ctx.strokeStyle="#c9072a";
  ctx.lineWidth = 20;
    ctx.beginPath();
    ctx.moveTo(0,100);
    ctx.lineTo(300,100);
    ctx.moveTo(150,0);
    ctx.lineTo(150,200);
    ctx.stroke();

  
}
void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
