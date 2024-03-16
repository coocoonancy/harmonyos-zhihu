import { userInfoModel } from './models'

@Entry
@Component
struct AppStorageCase {
  @State username: string = 'coocoonancy'
  @State password: string = '123456'

  login() {
    if (this.username === 'coocoonancy' && this.password === '123456') {
      AppStorage.SetOrCreate('userInfo', new userInfoModel({
        username: this.username,
        password: this.password
      }))
    }
  }

  build() {
    Row() {
      Column() {
        TextInput({ text: this.username })
          .fontWeight(FontWeight.Bold)
          .onChange((value) => {
            this.username = value
          })

        TextInput({ text: this.username })
          .fontWeight(FontWeight.Bold)
          .onChange((value) => {
            this.password = value
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}