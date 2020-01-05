import 'dart:html';
import 'dart:math' as Math;

CanvasElement canvas;
CanvasRenderingContext2D ctx;
int flag_w = 300;
int flag_h = 200;
num circle_x = flag_w / 4;
num circle_y = flag_h / 4;


 fivePointStar(x, y, r, solid, theta, color) {
  List outerPoints = [];
  List innerPoints = [];
  var degree = Math.pi / 180;
  var innerR = r * Math.cos(72 * degree) / Math.cos(36 * degree);
  print("準備畫一個位於 ($x, $y), 半徑 $r, 實心為 $solid, 顏色為 $color 的五芒星");
  ctx.beginPath();
  for (int i = 0; i <= 5; i++) {
    outerPoints.add([
      x + r * Math.sin(72 * degree * i + theta * degree),
      y - r * Math.cos(72 * degree * i + theta * degree)
    ]);
    innerPoints.add([
      x +
          innerR *
              Math.sin(72 * degree * i +
                  theta * degree -
                  36 * degree),
      y -
          innerR *
              Math.cos(72 * degree * i +
                  theta * degree -
                  36 * degree)
    ]);
  }
  print(outerPoints);
  ctx.moveTo(outerPoints[0][0], outerPoints[0][1]);
  for (int i = 1; i < 5; i++) {
    ctx.lineTo(innerPoints[i][0], innerPoints[i][1]);
    ctx.lineTo(outerPoints[i][0], outerPoints[i][1]);
    ctx.lineTo(innerPoints[i + 1][0], innerPoints[i + 1][1]);
  }
  ctx.closePath();
  if (solid == false) {
    ctx.strokeStyle = color;
    ctx.stroke();
  } else {
    ctx.fillStyle = color;
    ctx.fill();
  }
}


void main() {
  canvas = querySelector('#canvas');
  ctx = canvas.getContext('2d');
  
 

  drawROC(ctx);
  querySelector("#cuba").onClick.listen((e) => drawCuba(ctx));
  querySelector("#china").onClick.listen((e) => drawCHINA(ctx));
  querySelector("#button").onClick.listen((e) => clearCanvas());
  querySelector("#San").onClick.listen((e) => drawSAN(ctx));
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
  querySelector("#uk").onClick.listen((e) => drawUK(ctx));
  querySelector("#canada").onClick.listen((e) => drawCanada(ctx));
  querySelector("#France").onClick.listen((e) => drawFrance(ctx));
  querySelector("#Russia").onClick.listen((e) => drawRussia(ctx));
  querySelector("#jp").onClick.listen((e) => drawJP(ctx));
  querySelector("#deu").onClick.listen((e) => drawDEU(ctx));
  querySelector("#nld").onClick.listen((e) => drawNLD(ctx));
  querySelector("#roc").onClick.listen((e) => drawROC(ctx));
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
  drawStarY(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 2 * 3;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
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
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

  drawStarYT(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 8 *1 ;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
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
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

 drawStarYT1(cx, cy, spikes, outerRadius, innerRadius) {
    var rot = Math.pi / 4 *1 ;
    var x = cx;
    var y = cy;
    var step = Math.pi / spikes;

    ctx.fillStyle = '#rgb(260,180,0)';
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
    ctx.strokeStyle='yellow';
    ctx.stroke();
    ctx.fillStyle='yellow';
    ctx.fill();

}

void drawROC(ctx){
  // 先畫滿地紅
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  // 再畫青天
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w / 2, flag_h / 2);
  // 畫十二道光芒白日
  ctx.beginPath();
  num star_radius = flag_w / 8;
  num angle = 0;
  for (int i = 0; i < 25; i++) {
    angle += 5 * Math.pi * 2 / 12;
    num toX = circle_x + Math.cos(angle) * star_radius;
    num toY = circle_y + Math.sin(angle) * star_radius;
    // 只有 i 為 0 時移動到 toX, toY, 其餘都進行 lineTo
    if (i != 0)
      ctx.lineTo(toX, toY);
    else
      ctx.moveTo(toX, toY);
  }
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  // 白日:藍圈
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w * 17 / 240, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為藍色
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fill();
  // 白日:白心
  ctx.beginPath();
  ctx.arc(circle_x, circle_y, flag_w / 16, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
}

void drawCHINA(ctx){
  //紅底
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  drawStarY(50, 50, 5, 20, 10);  
  drawStarYT1(120, 25, 5, 5, 2.5); 
  drawStarYT(135, 50, 5, 5, 2.5); 
  drawStarY(135, 75, 5, 5, 2.5); 
  drawStarYT1(120, 100, 5, 5, 2.5); 
} 
  void drawCuba(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 40, flag_w, flag_h/5);  
  ctx.fillRect(0, 120, flag_w, flag_h/5);  
  ctx.strokeStyle="rgb(255, 0, 0)";
  ctx.stroke();  
  ctx.moveTo(0,0);
  ctx.lineTo(140,100);
  ctx.lineTo(0,200);
  ctx.fillStyle="rgb(255, 0, 0)";
  ctx.fill();  
  drawStar(50, 100, 5, 20, 10);
  
}
void drawSAN(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 200, 25)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.beginPath();
  ctx.moveTo(0, 140);
  ctx.lineTo(0, 200);
  ctx.lineTo(60, 200);
  ctx.lineTo(300, 60);
  ctx.lineTo(300, 0);
  ctx.lineTo(240, 0);
  ctx.closePath();
  ctx.fillStyle = 'rgb(240, 190, 0)';
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(0, 160);
  ctx.lineTo(0, 200);
  ctx.lineTo(40, 200);
  ctx.lineTo(300, 40);
  ctx.lineTo(300, 0);
  ctx.lineTo(260, 0);
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 0)';
  ctx.fill();
  ctx.beginPath();
  ctx.moveTo(60, 200);
  ctx.lineTo(300, 200);
  ctx.lineTo(300, 60);
  ctx.closePath();
  ctx.fillStyle = 'rgb(240, 0, 0)';
  ctx.fill();
  int x = 80;
  int y = 145;
  int r = 28;
  bool solid = true;
  var theta = 180;
  var color = "white";
  fivePointStar(x, y, r, solid, theta, color);
  int a = 220;
  int b = 55;
  int c = 28;
  bool solid1 = true;
  var theta1 = 180;
  var color1 = "white";
  fivePointStar(a, b, c, solid1, theta1, color1);
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

void drawCanada(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(90, 0, 120,  200);
  ctx.beginPath();
  ctx.moveTo(147, 170);
  ctx.lineTo(147, 140);
  ctx.lineTo(125, 145);
  ctx.lineTo(130, 135);
  ctx.lineTo(95, 100);
  ctx.lineTo(100, 95);
  ctx.lineTo(102, 80);
  ctx.lineTo(110, 85);
  ctx.lineTo(115, 80);
  ctx.lineTo(125, 90);
  ctx.lineTo(123, 60);
  ctx.lineTo(135, 70);
  ctx.lineTo(150, 30);
  ctx.lineTo(165, 70);
  ctx.lineTo(177, 60);
  ctx.lineTo(175, 90);
  ctx.lineTo(185, 80);
  ctx.lineTo(190, 85);
  ctx.lineTo(198, 80);
  ctx.lineTo(200, 95);
  ctx.lineTo(205, 100);
  ctx.lineTo(170, 135);
  ctx.lineTo(175, 145);
  ctx.lineTo(153, 140);
  ctx.lineTo(153, 170);
  ctx.lineTo(147, 170);
  ctx.closePath();
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fill();
  }

void drawFrance(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.closePath();
  ctx.fillStyle = 'rgb(0, 0, 150)';
  ctx.fill();
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(100, 0, 200, 200);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(200, 0, 300, 200);
}
void drawRussia(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.closePath();
  ctx.fillStyle = '#fff';
  ctx.fill();
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 66.6, 300,133.2 );
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 133.2, 300, 200);
}

  void drawJP(ctx){
  // 先畫滿地白
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 0, flag_w, flag_h);
  ctx.closePath();
  // 將填色設為白色
  ctx.fillStyle = '#fff';
  ctx.fill();
  //紅心
  ctx.beginPath();
  ctx.arc(150,100, flag_w / 6, 0, Math.pi * 2, true);
  ctx.closePath();
  // 填色設為紅色
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fill();
}

void drawDEU(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  // 紅色  
  ctx.fillStyle = 'rgb(255,0,0)';
  ctx.fillRect(0, 66.67, flag_w, flag_h/3);
  //黃色
  ctx.fillStyle = 'rgb(260,180,0)';
  ctx.fillRect(0, 133.33, flag_w, flag_h/3);
  //黑色
  ctx.fillStyle = 'rgb(0,0,0)';
  ctx.fillRect(0, 0, flag_w, flag_h/3);
}

void drawNLD(ctx){
  ctx.clearRect(0, 0, flag_w, flag_h);
  // 紅色  
  ctx.fillStyle = 'rgb(255,0,0)';
  ctx.fillRect(0, 0, flag_w, flag_h/3);
  //白色
  ctx.fillStyle = '#fff';
  ctx.fillRect(0, 66.67, flag_w, flag_h/3);
  //藍色
  ctx.fillStyle = 'rgb(0,0,150)';
  ctx.fillRect(0, 133.33, flag_w, flag_h/3);
}

void clearCanvas(){
  ctx.clearRect(0, 0, flag_w, flag_h);
}
