import router from '@ohos.router'
import { TokenManager } from '../../utils'

PersistentStorage.PersistProp('token', '')

@Entry
@Component
struct LoginStorageCase {
  @State message: string = 'Hello World'
  @StorageProp('token')
  token: string = ''

  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.token)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('登录')
          .onClick(async () => {
            await TokenManager.setToken('123456')
            AppStorage.SetOrCreate<string>('token', '123456')
            router.pushUrl({ url: 'pages/NavigationCase/PayNext' })
            // router.pushUrl({ url: 'pages/StorageCase/HomeStorageCase' })
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}