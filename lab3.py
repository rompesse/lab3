# 2 Напишіть функцію update_dict(original, key, value), 
# яка повертає нову копію словника з оновленим значенням за ключем. 
# Початковий словник не змінюється.
def update_dict(original: dict, key, value) -> dict:
    def write(pos) -> dict:
        if (pos >= len(original)):
            return {}
        else:
            if (key == list(original.keys())[pos]):
                return {key: value} | write(pos + 1)
            else:
                k = list(original.keys())[pos]
                return {k: original[k]} | write(pos + 1)
            
    return write(0)

# 3 Напишіть функцію append_tuple(tpl, item), яка повертає новий кортеж з доданим елементом в кінець. 
# Вхідний кортеж не змінюється.
def append_tuple(tpl: tuple, item) -> tuple:
    def add(pos) -> tuple:
        if (pos == len(tpl)):
            return (item,)
        else:
            return (tpl[pos],) + add(pos + 1)
    return add(0)

# 5 Напишіть функцію push(stack, item), яка імітує операцію “додавання в стек”, 
# повертаючи нову копію списку з новим елементом на початку. 
# Початковий список (стек) не змінюється.
def push(stack: list, item) -> list:
    def p(pos) -> list:
        if (pos == -1):
            return [item] + p(pos + 1)
        elif (pos < len(stack)):
            return [stack[pos]] + p(pos + 1)
        else:
            return []
    return p(-1)

d1 = {'a':1, 'b':2}
d2 = update_dict(d1, 'b', 99)
print("d2 ==", d2)
print("d1 ==", d1, "\n")

print("append_tuple((1, 2, 3), 4) => ", append_tuple((1, 2, "3"), 4))
print("append_tuple((), 99) => ", append_tuple((), 99), "\n")

s1 = [3, 2, '1']
s2 = push(s1, "444")
print("s2 => ", s2)
print("s1 => ", s1)