import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct RouterCase1 {
  @State message: string = 'RouterCase2'

  aboutToAppear(): void {
    router.showAlertBeforeBackPage({ message: '确定退出' })
    promptAction.showToast({ message: 'aboutToAppear' + router.getLength() + router.getState() })
  }

  onPageShow(): void {
    promptAction.showToast({ message: JSON.stringify(router.getParams()) })
  }

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('返回RouterCase').onClick(() => {
          router.back({
            url: 'pages/NavigationCase/RouterCase',
            params: {
              name: 'RouterCase1'
            }
          })
        })
        Button('跳转RouterCase').onClick(() => {
          router.pushUrl({
            url: 'pages/NavigationCase/RouterCase',
            params: {
              name: 'RouterCase1'
            }
          }, router.RouterMode.Single)
        })
      }
      .width('100%')
    }
    .height('100%')
  }
}