import SpriteKit
import art

public class Canvas: Canvas2D{
    var i: Int = 0
    
    override open func setup() {        
        PerlinNoise.shared.changeMode(.twoD)
        print(PerlinNoise.shared.getSize())
    }
    
    override open func draw() {
        let (w,h) = getNoiseCount()

        let sw: Double = width / Double(w)
        let sh: Double = height / Double(h)

        var x = 0
        var y = 0
        DispatchQueue.main.async {
            for i in 0 ..< w * h{
                let c = self.rect(x: 0, y: self.height/2, color: self.getColor(value: self.noise2(i)), width: sw, height: sh )

                let xx: CGFloat = self.map(from: 0...CGFloat(w), to: 0...CGFloat(self.width), value: CGFloat(x) ) + CGFloat(sw)/2
                let yy: CGFloat = self.map(from: 0...CGFloat(h), to: 0...CGFloat(self.height), value: CGFloat(y)) + CGFloat(sh)/2
                c.transform.setPosition(CGPoint(x: xx, y: yy))

                x += 1
                if x == w {
                    y += 1
                    x = 0
                }
            }
        }
    }
    
    func getColor(value: Double) -> UIColor{
        return UIColor(red: CGFloat(value), green: CGFloat(value), blue: CGFloat(value), alpha: 1)
//        return UIColor(hue: CGFloat(value), saturation: 1, brightness: 1, alpha: 1)
    }
}
