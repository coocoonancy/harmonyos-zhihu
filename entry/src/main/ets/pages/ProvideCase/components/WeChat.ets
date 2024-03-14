import { userInfoModel } from '../models'
@Component
struct WeChat {
  @Consume
  user: userInfoModel

  build() {
    Text(this.user.nickname)
  }
}

export { WeChat }