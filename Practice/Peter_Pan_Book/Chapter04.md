## Chapter 04～

### 重點整理

### 變數

* 變數的型態第一個字要大寫
* 變數指定型態後就不能改成其他形態
* 對於變數和常數，使用前一定要初始化
  * 整數 Int
  * 浮點數 Float 、 Double
  * 真假值 Bool
  * 字串 String
* """ 三個雙引號能寫段落
* option + 左鍵查詢型別
* 若整數溢位，將會有紅色錯誤
* 運算嚴格檢查（Int與Double）不可相加
* 字串置換
  * \ (變數或常數)

### 流程

* 恢復整齊的縮排方法
  * Editor > Structure > Re-Indent
* === 比叫是否為同一個東西
* switch一定要包含所有的case
* **switch 可以比較字串**
* show result可以將結果畫成折線圖

### Optional ?

* 發明的緣由
  * 因為變數無法表達沒有內容的狀態，因此optional是非必需的，使其可以是一個有值也能無值的狀態

```swift
var girlFriend: String?
```

* **只有optional變數可以被設定為nil!!**，誤將變數設為nil會出錯
* optional的內容是被包裝起來的，需要透過 **驚嘆號**解開包裝

```swift
var name: String? = "Andy"
print(name!) （Ｏ）
print(name) （Ｘ）
```

* 如果optional的變數是nil ， 硬要加上驚嘆號，就會出錯，所以要用判斷式先判斷它是否有值

```
if let 常數 = 常數名 {
    print(常數) // 此時的常數為常數的內容，不是optional的常數
}else{
    print("沒名字")
}
```

### 自動取值的Implicitly Unwrapped Optional ！

```swift 
var girlFriend: String!
```

* 一旦有值後，就不會變成nil的狀態，如果有值又讓它變成nil會閃退，因此要小心

### 雙重問號

如果無值時想要給一個預設的字詞，就能用雙重問號。

```swift
var girlFriend: String? = "Wendy"
var girlFriendName = girlFriend ?? "Angelababy"
girlFriend = nil
girlFriendName = 
```



