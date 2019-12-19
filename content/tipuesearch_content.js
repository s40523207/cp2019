var tipuesearch = {"pages": [{'title': 'About', 'text': 'http://mde.tw/cp2019 \n https://dartpad.dev?id=dbc8ea0838849a55bad10bdfd04e1629 \n https://gist.github.com/s40523207 \n \n', 'tags': '', 'url': 'About.html'}, {'title': 'w14', 'text': '\n  透過 getDart(dirname) 取位於 downloads/dart_ex/ 目錄中 dirname 目錄中的 Dart 程式碼  \n \n  取 Dart 程式的按鈕  \n Html 程式 \n 亂數分組   ROC Flag   USA Flag   Grid   X-Y Plot   Slithery \n  內建放入的 Dart 原始碼  \n 放大   回復 \n', 'tags': '', 'url': 'w14.html'}, {'title': 'w13', 'text': '筆記說明 \n CtoF 攝氏轉華氏 \n C,F 需大寫 \n num為一個浮點或整數 \n len-1 取得字元位置 \n substring 將字串轉為數字(數字才可以計算，字串不行) \n = = 用於判斷式 , 假如是 \n else 其餘的 \n 溫度轉換 \n \xa0celsius = 5/9 ( fahrenheit − 32) \n \n  取 Dart 程式的按鈕  \n 純 Dart 程式 \n Temp 1 \n Html 程式 \n Temp 2   Python \n Flutter 程式 \n 溫度轉換 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n \n 利用 Python Flask 網際框架編寫的伺服器端溫度轉換程式碼: \n import flask\n# 導入 flask_cors 模組中的 CORS\n# 目的在讓伺服器可以被遠端的 Dart 程式跨網域擷取資料\nfrom flask_cors import CORS\n\napp = flask.Flask(__name__)\n# 讓應用程式啟動後, 可以跨網域被截取資料\nCORS(app, support_credentials=False)\nglobal data\n\n@app.route(\'/\', methods =[\'POST\', \'GET\'])\ndef root():\n    if flask.request.method == \'POST\': \n        data = flask.request.form[\'data\'] \n        print(data)\n        resp = {"data": data}\n        output = flask.json.dumps(data)\n    else:\n        # 將 Python 中的 dictionary 資料透過 json 格式送出後\n        # 讓遠端的 Dart 程式可以擷取\n        data = {"a": 1, "b": data+"yen", "c": "字串"}\n        output = flask.json.dumps(data)\n    return output\n    \n@app.route(\'/<name>\', methods=[\'POST\', \'GET\'])\ndef convert(name):\n    #name[-1] 為字串最後一個字元\n    # name[:-1] 則為數字\n    if name[-1] is "F" or name[-1] is "f":\n        # 表示要將華氏溫度轉為攝氏\n        return FtoC(name[:-1])\n    else:\n        return CtoF(name[:-1])\n    \n#celsius = 5/9 ( fahrenheit − 32)\n#定義一個 celsius 轉 fahrenheit  函式\ndef CtoF(c):\n    return "攝氏" + c + "度=華氏" + str(round(int(c)*9/5 + 32, 2)) + "度"\n\n#定義一個 celsius 轉 fahrenheit  函式\ndef FtoC(f):\n    return "華氏" + f + "度=攝氏" + str(round((int(f) - 32)*5/9, 2)) + "度"\n\n\nif __name__ == \'__main__\':\n    # 內建的 Flask Web 啟動埠號為 5000\n    app.run()', 'tags': '', 'url': 'w13.html'}, {'title': 'w11', 'text': '\n \n  取 Dart 程式的按鈕  \n 純 Dart 程式 \n Hello   For Loop   Sum   Runge-Kutta   RK ex1   Mass Spring Damping \n Html 程式 \n ROC Flag   Grid   X-Y Plot   Slithery \n Flutter 程式 \n Flutter1   Flutter2   Flutter3 \n  內建放入的 Dart 原始碼  \n 放大   回復 \n', 'tags': '', 'url': 'w11.html'}, {'title': 'w9 期中影片', 'text': '\n \n \n \n \n', 'tags': '', 'url': 'w9 期中影片.html'}, {'title': 'w7 影片', 'text': '\n', 'tags': '', 'url': 'w7 影片.html'}, {'title': 'w6', 'text': 'int i;\nint sum;\n \nmain(){\n  sum = 0;\n  for(i=1;i <= 10 ;i++){\n    sum += i;\n    print("$sum");\n  }\n  print(\'sum = $sum\');\n} \n \n  ', 'tags': '', 'url': 'w6.html'}, {'title': 'w3', 'text': '\n \n \n \n \n', 'tags': '', 'url': 'w3.html'}]};