interface userInfo {
  username: string
  password: string
}
export class userInfoModel implements userInfo {
  username: string = ''
  password: string = ''

  constructor(model: userInfo) {
    this.username = model.username
    this.password = model.password
  }
}
