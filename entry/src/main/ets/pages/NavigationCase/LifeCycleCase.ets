import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct LifeCycleCase {
  @State message: string = 'Hello World'

  onPageShow() {
    console.log('onPageShow')
  }

  onPageHide() {
    console.log('onPageHide')
  }

  onBackPress() {
    console.log('onBackPress1')
    this.isBack()
    return true

  }

  async isBack() {
    const res = await  promptAction.showDialog({
      title: '提示',
      message: '返回吗？',
      buttons: [{
        text: '取消',
        color: '#ccc'
      }, {
        text: '确定',
        color: '#f1f1ff'
      }]
    })
    if (res.index === 1) {
      router.back()
    }

  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳转')
          .onClick(() => {
            router.pushUrl({
              url: 'pages/NavigationCase/RouterCase'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}