import { Connect } from './components/Connect'
import { WeChat } from './components/WeChat'
import { userInfoModel, userInfo } from './models'

@Entry
@Component
struct ProvideCase {
  @Provide
  user: userInfoModel = new userInfoModel({} as userInfo)

  aboutToAppear(): void {
    this.getUser()
  }

  async getUser() {
    const result = await new Promise<userInfo>((resolve) => {
      setTimeout(() => {
        resolve({
          mobile: '19957106275',
          email: 'coocoonancy@163.com',
          id: '0',
          avatar: '456',
          nickname: 'coocoonancy'
        })
      }, 200)
    })
    this.user = new userInfoModel(result)
  }

  build() {
    Tabs() {
      TabContent() {
        WeChat()
      }.tabBar('微信')

      TabContent() {
        Connect()
      }.tabBar('联系人')
    }
  }
}