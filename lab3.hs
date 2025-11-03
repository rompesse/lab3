-- 1 Напишіть функцію updateAt, яка повертає новий список, де елемент на вказаній позиції замінено на нове значення. 
-- Вхідний список не змінюється. Якщо індекс виходить за межі списку, повертається початковий список.
updateAt :: Int -> a -> [a] -> [a]
updateAt _ _ [] = []
updateAt i v (x:xs) = [if i == 0 then v else x] ++ updateAt (i - 1) v xs

-- 4 Створіть тип Person, що містить ім’я та вік. 
-- Реалізуйте функцію incrementAge, яка повертає новий екземпляр з віком, збільшеним на 1. 
-- Початковий запис не змінюється.
data Person = Person { name :: String, age :: Int } deriving Show
incrementAge :: Person -> Person
incrementAge p = p { age = age p + 1 }

-- 6 Напишіть функцію removeAt, яка повертає новий список без елемента за заданим індексом. 
-- Якщо індекс виходить за межі, повертається початковий список.
removeAt :: Int -> [a] -> [a]
removeAt _ [] = []
removeAt i (x:xs) = (if i == 0 then [] else [x]) ++ removeAt (i - 1) xs

main :: IO()
main = do
    let p = Person "Anna" 25
    putStrLn("updateAt 2 99 [10, 20, 30] => " ++ show (updateAt 2 99 [10, 20, 30]))
    putStrLn("updateAt 2 42 [] => " ++ show (updateAt 2 42 []))
    putStrLn("updateAt 2 7 [1, 2, 3] => " ++ show (updateAt 2 7 [1, 2, 3]) ++ "\n")
    putStrLn("incrementAge p => " ++ show (incrementAge p))
    putStrLn("p => " ++ show (p) ++ "\n")
    putStrLn("removeAt 1 [10, 20, 30] => " ++ show (removeAt 1 [10, 20, 30]))
    putStrLn("removeAt 5 [1, 2, 3] => " ++ show (removeAt 5 [1, 2, 3]))