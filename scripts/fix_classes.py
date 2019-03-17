import re


function_regex = re.compile(r'\[(\d+)\] Class (\w+)\.(\w+).*')
functions = {}
with open('C:\\SDK_GEN\\BL2\\ObjectsDump.txt') as f:
    lookahead = None
    for line in f.readlines():
        if '] Class ' in line:
            matches = function_regex.match(line)
            if matches:
                id, module, clas = matches.groups()
                if module not in functions.keys():
                    functions[module] = {}
                functions[module][clas] = id

sdk_regex = re.compile(r'table.insert\(g_loadedClasses, { "(\w+)", (\w+), "\w+" }\)')

sdk_dir = 'C:\\Users\\abahb\\source\\repos\\BL2-SDK\\lua\\include\\sdk\\classes\\'
for module in functions.keys():
    lines = []
    with open(sdk_dir + module + '.lua') as f:
            for line in f.readlines():
                if 'table.insert' in line:
                    matches = sdk_regex.match(line)
                    if matches:
                        func, index = matches.groups()
                        if func not in functions[module].keys():
                            func = func[1:]
                        if index != int(functions[module][func]):
                            line = line.replace(index, str(int(functions[module][func])))
                lines += [line]
    with open(sdk_dir + module + '.lua', 'w') as f:
        for line in lines:
            f.write(line)