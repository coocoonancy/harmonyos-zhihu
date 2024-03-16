import { userInfo, userInfoModel } from './models'
import router from '@ohos.router'

@Entry
@Component
struct AppMain {
  @StorageLink('userInfo')
  userInfo: userInfoModel = new userInfoModel({} as userInfo)

  aboutToAppear(): void {
    const userInfo = AppStorage.Get<userInfoModel>('userInfo')
    this.userInfo = userInfo !
  }

  loginOut() {
    AppStorage.Set('userInfo', null)
    router.back()
  }

  build() {
    Row() {
      Column() {
        Text(this.userInfo.username)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.userInfo.password)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Button('退出')
          .onClick(() => {
            this.loginOut()
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}