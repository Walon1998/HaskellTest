module Complex where

-- write your implementation of complex numbers here

re :: (Double, Double) -> Double
re (r,i) = r

im :: (Double, Double) -> Double
im (r,i) = i

conj :: (Double, Double) -> (Double, Double)
conj (x,y) = (x,(-y))

add :: (Double, Double) -> (Double, Double) -> (Double, Double)
add (r,i) (r2,i2) = ((r+r2),(i+i2))

mult :: (Double, Double) -> (Double, Double) -> (Double, Double)
mult (r,i) (r2,i2) = (((r*r2)-(i*i2)),(r*i2)+(r2*i))

absv :: (Double, Double) ->  Double
absv(r,i) = sqrt (r^2+i^2)

main :: IO ()
main = do
 putStrLn "Enter your complex number's real component:"
 n <- getLine
 putStrLn "Enter your complex number's imaginary component:"
 m <- getLine
 let x = absv ((read n::Double), (read m::Double))
 putStrLn ("Your complex number's absolute value is: " ++ show x)



