import router from '@ohos.router'
import { local, personModel } from './common'

@Entry(local)
@Component
struct ShareB {
  @LocalStorageLink('user')
  user: personModel = new personModel({
    user: 'user',
    age: 16
  })
  @LocalStorageLink('test')
  test: personModel = new personModel({
    user: 'test',
    age: 20
  })

  build() {
    Row() {
      Column() {
        Text(this.user.user)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.test.user)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳回A')
          .onClick(() => {
            this.user.user = 'rr'
            router.back()
          }
          )
      }
      .width('100%')
    }
    .height('100%')
  }
}