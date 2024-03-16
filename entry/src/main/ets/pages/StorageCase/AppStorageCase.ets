import { userInfoModel } from './models'
import router from '@ohos.router'

@Entry
@Component
struct AppStorageCase {
  @State username: string = 'nancy'
  @State password: string = '123456'

  login() {
    if (this.username === 'nancy' && this.password === '123456') {
      AppStorage.SetOrCreate('userInfo', new userInfoModel({
        username: this.username,
        password: this.password
      }))
      router.pushUrl({
        url: 'pages/StorageCase/AppMain'
      })
    }
  }

  build() {
    Row() {
      Column({ space: 16 }) {
        TextInput({ text: this.username })
          .fontWeight(FontWeight.Bold)
          .onChange((value) => {
            this.username = value
          })

        TextInput({ text: this.password })
          .fontWeight(FontWeight.Bold)
          .onChange((value) => {
            this.password = value
          })
        Button('登录')
          .onClick(() => {
            this.login()
          })

      }
      .width('100%')
      .padding(16)

    }
    .height('100%')
  }
}