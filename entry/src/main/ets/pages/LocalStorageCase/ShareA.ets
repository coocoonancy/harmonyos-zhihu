import router from '@ohos.router'
import { local, personModel } from './common'

@Entry(local)
@Component
struct ShareA {
  @LocalStorageProp('user')
  user: personModel = new personModel({
    user: 'user',
    age: 16
  })

  build() {
    Row() {
      Column() {
        Text(this.user.user)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('跳转B')
          .onClick(() => {
            this.user.user = 'nan cc'
            router.pushUrl({
              url: 'pages/LocalStorageCase/ShareB'
            })
          }
          )
      }
      .width('100%')
    }

    .height('100%')
  }
}