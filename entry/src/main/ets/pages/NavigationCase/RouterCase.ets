import router from '@ohos.router'
import promptAction from '@ohos.promptAction'

@Entry
@Component
struct RouterCase {
  @State message: string = 'Hello World'

  aboutToAppear(): void {
    promptAction.showToast({ message: 'aboutToAppear' + router.getLength() + router.getState() })
  }

  onPageShow(): void {
    promptAction.showToast({ message: 'onPageShow' + router.getLength() + JSON.stringify(router.getParams()) })
  }

  build() {
    Column({ space: 20 }) {
      Button('push').onClick(() => {
        router.pushUrl({
          url: 'pages/NavigationCase/NavigationCase2'
        })
      })
      Button('replace').onClick(() => {
        router.replaceUrl({
          url: 'pages/NavigationCase/NavigationCase2'
        })
      })
      Button('clear').onClick(() => {
        router.clear()
      })
      Button('back').onClick(() => {
        router.back()
      })
      Button('getParams').onClick(() => {
        router.pushUrl({
          url: 'pages/NavigationCase/RouterCase1',
          params: { name: 'RouterCase' }
        }, router.RouterMode.Single)
      })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)

  }
}