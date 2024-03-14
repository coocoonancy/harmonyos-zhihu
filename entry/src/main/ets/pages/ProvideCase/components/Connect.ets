import { userInfoModel } from '../models'

@Component
struct Connect {
  @Consume
  user: userInfoModel

  build() {
    Text(this.user.mobile)
  }
}

export { Connect }