# autosub-ahk: A AutoSub GUI, written in AutoHotkey

由語言產生字幕的[AutoSub](https://github.com/BingLingGroup/autosub)由中國的冰靈字幕組維護、修改，為了方便使用，以AutoHotkey寫了圖形介面工具，以方便使用AutoSub。

> Author: Jerry Jian
>  * YouTube: https://www.youtube.com/channel/UC2xBvmv-lhsY4suxv46lplg?view_as=subscriber
>  * Blog: http://jdev.tw/blog

### Screen snapshot:

![1](https://lh3.googleusercontent.com/pw/ACtC-3dyOIgAjfAR89WkaveDvvr9LnP00RgT_8I0DQCJv8RfqNTkwf79cJ-M1Wb4nTur6XVmfTCo_PfHuiUSA5JaEb6CUxSGjLOvLEYVke-hvbYTBCtZShfYK5-RhKRczc1h9IsciFwf-k2Wz_3SHvlGfeR0lw=w664-h639-no?authuser=0)

### 功能重點說明

1. 以AutoHotkey腳本語言撰寫，只要Windows有安裝AutoHotkey，即可修改直接執行
2. 可使用滑鼠拖曳方式加入影片檔案
3. 輸出檔的副檔名為.txt時產生純文字格式，否則產生.srt格式
4. 輸出檔名產生時會自動加入語音語言代碼，輸入時不須輸入語言代碼
5. 真正執行語音處理的是透過gen.bat或gen-txt.bat來調用autosub.exe來執行：
    * gen.bat: 產生.srt的字幕檔
    * gen-txt.bat: 產生純文字格式的字幕檔
6. 可自行修改gen.bat或gen-txt.bat以變更autosub.exe的執行時參數
7. autosub.exe -h 即會顯示可使用的參數
8. autosub.exe -V 可顯示autosub的版本
9. 包裝在release zip檔裡的autosub是0.5.7-Alpha版，日後可自行更新autosub子目錄即可改版

### 其他說明
* 有問題或建議請直接建立[Issue](https://github.com/emisjerry/autosub-ahk/issues)
* 下載：[release](https://github.com/emisjerry/autosub-ahk/releases)

### How to add language
1. Find your language code(lsc=List Speech Code): 'autosub\\autosub.exe -lsc'
2. Copy the speech code into clipboard
3. Modify autosub-ahk.ini
  3.1. add One to [LANGUAGE] Count
  3.2. add New counter=speech_code descition in [zh_TW], [zh_CN] and [en_US]
  
