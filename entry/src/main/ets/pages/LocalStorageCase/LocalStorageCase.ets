import router from '@ohos.router'
import { local, personModel } from './common'

@Entry(local)
@Component
struct LocalStorageCase {
  @LocalStorageLink('user')
  user: personModel = new personModel({
    user: 'user local',
    age: 30
  })
  @LocalStorageProp('test')
  test: personModel = new personModel({
    user: 'test',
    age: 20
  })

  build() {
    Row() {
      Column() {
        Text(this.test.user)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.user.user)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          Button('跳到A')
          .onClick(() => {
            this.test.user = 'test To A'
            this.user.user = 'user To A'
            router.pushUrl({
              url: 'pages/LocalStorageCase/ShareA'
            })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}