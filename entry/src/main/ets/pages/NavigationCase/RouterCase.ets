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

  onBackPress() {
    console.log('onBackPress')
    return true
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
      Button('push').onClick(() => {
        router.pushUrl({
          url: 'pages/NavigationCase/LifeCycleCase'
        })
      })
    }
    .height('100%')
    .width('100%')
    .justifyContent(FlexAlign.Center)

  }
}