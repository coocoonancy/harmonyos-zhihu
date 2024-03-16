import router from '@ohos.router'
import { TokenManager } from '../../utils'

@Entry
@Component
struct HomeStorageCase {
  @State message: string = 'Hello World'
  @StorageProp('token')
  token: string = ''

  build() {
    Row() {
      Column() {
        Text(this.token)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('退出')
          .onClick(() => {
            TokenManager.setToken('')
            router.back()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}