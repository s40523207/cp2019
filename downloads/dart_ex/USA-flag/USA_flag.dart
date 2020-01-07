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
      x + innerR * Math.sin(72 * degree * i + theta * degree - 36 * degree),
      y - innerR * Math.cos(72 * degree * i + theta * degree - 36 * degree)
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

  drawUSA(ctx);
  querySelector("#usa").onClick.listen((e) => drawUSA(ctx));
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
  ctx.lineWidth = 5;
  ctx.strokeStyle = 'white';
  ctx.stroke();
  ctx.fillStyle = 'white';
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
  ctx.lineWidth = 5;
  ctx.strokeStyle = 'yellow';
  ctx.stroke();
  ctx.fillStyle = 'yellow';
  ctx.fill();
}

drawStarYT(cx, cy, spikes, outerRadius, innerRadius) {
  var rot = Math.pi / 8 * 1;
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
  ctx.lineWidth = 5;
  ctx.strokeStyle = 'yellow';
  ctx.stroke();
  ctx.fillStyle = 'yellow';
  ctx.fill();
}

drawStarYT1(cx, cy, spikes, outerRadius, innerRadius) {
  var rot = Math.pi / 4 * 1;
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
  ctx.lineWidth = 5;
  ctx.strokeStyle = 'yellow';
  ctx.stroke();
  ctx.fillStyle = 'yellow';
  ctx.fill();
}

void drawUSA(ctx) {
  //紅底
  ctx.clearRect(0, 0, flag_w, flag_h);
  ctx.fillStyle = 'rgb(255, 0, 0)';
  ctx.fillRect(0, 0, flag_w, flag_h);
  //白線
  ctx.fillStyle = 'rgb(255, 255, 255)';
  ctx.fillRect(0, 15.3, flag_w, flag_h / 13);
  ctx.fillRect(0, 45.9, flag_w, flag_h / 13);
  ctx.fillRect(0, 75.5, flag_w, flag_h / 13);
  ctx.fillRect(0, 106.1, flag_w, flag_h / 13);
  ctx.fillRect(0, 136.7, flag_w, flag_h / 13);
  ctx.fillRect(0, 167.3, flag_w, flag_h / 13);
  //籃底
  ctx.fillStyle = 'rgb(0, 0, 140)';
  ctx.fillRect(0, 0, 150, 106.1);
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

void clearCanvas() {
  ctx.clearRect(0, 0, flag_w, flag_h);
}
