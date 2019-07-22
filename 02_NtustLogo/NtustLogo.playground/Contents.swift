import UIKit

var str = "Hello, playground"
let rect = CGRect(x: 0, y: 0, width: 610, height: 457)
let backgroundView = UIView(frame: rect)
backgroundView.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
backgroundView
// 上方菱形
let diamondPath = UIBezierPath()
diamondPath.move(to: CGPoint(x: 292, y: 54))
diamondPath.addLine(to: CGPoint(x: 190, y: 110))

diamondPath.addLine(to: CGPoint(x: 190, y: 220))
diamondPath.addLine(to: CGPoint(x: 292, y: 280))
diamondPath.addLine(to: CGPoint(x: 390, y: 225))
diamondPath.addLine(to: CGPoint(x: 390, y: 110))
diamondPath.close()
diamondPath
let shapeLayer = CAShapeLayer()
shapeLayer.path = diamondPath.cgPath
let DiamondView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 500))
DiamondView.backgroundColor = UIColor(red: 42/255, green: 57/255, blue: 121/255, alpha: 1)
DiamondView.layer.mask = shapeLayer
DiamondView
backgroundView.addSubview(DiamondView)
backgroundView
// 下左
let LeftCurvePath = UIBezierPath()
LeftCurvePath.move(to: CGPoint(x: 170, y: 100))
LeftCurvePath.addQuadCurve(to: CGPoint(x: 280, y: 400), controlPoint:CGPoint(x: 33, y: 302))
LeftCurvePath.addLine(to: CGPoint(x: 280, y: 310))
LeftCurvePath.addLine(to: CGPoint(x: 170, y: 236))
LeftCurvePath.close()
LeftCurvePath
let LeftCurveLayer = CAShapeLayer()
LeftCurveLayer.path = LeftCurvePath.cgPath
let LeftCurveView = UIView(frame: CGRect(x: 0, y: 0, width: 400, height: 400))
LeftCurveView.backgroundColor = UIColor(red: 42/255, green: 57/255, blue: 121/255, alpha: 1)
LeftCurveView.layer.mask = LeftCurveLayer
LeftCurveView

backgroundView.addSubview(LeftCurveView)
// 下右
let RightCurvePath = UIBezierPath()
RightCurvePath.move(to: CGPoint(x: 413, y: 100))
RightCurvePath.addQuadCurve(to: CGPoint(x: 306, y: 400), controlPoint:CGPoint(x: 519, y: 341))
RightCurvePath.addLine(to: CGPoint(x: 306, y: 310))
RightCurvePath.addLine(to: CGPoint(x: 413, y: 248))
RightCurvePath.close()
RightCurvePath
let RightCurveLayer = CAShapeLayer()
RightCurveLayer.path = RightCurvePath.cgPath
let RightCurveView = UIView(frame: CGRect(x: 0, y: 0, width: 500, height: 400))
RightCurveView.backgroundColor = UIColor(red: 42/255, green: 57/255, blue: 121/255, alpha: 1)
RightCurveView.layer.mask = RightCurveLayer
backgroundView.addSubview(RightCurveView)
// 圓形
let circle = UIView(frame: CGRect(x: (190 + 390) / 2 - 60, y: (54 + 280) / 2 - 60, width: 120, height: 120))
circle.layer.cornerRadius = circle.frame.width / 2
circle.backgroundColor = UIColor(red: 255/255, green: 255/255, blue: 255/255, alpha: 1)
backgroundView.addSubview(circle)

