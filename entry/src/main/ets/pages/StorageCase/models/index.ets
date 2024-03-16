export interface userInfo {
  username: string
  password: string
}


export interface testObj {
  num: 10
}
export class userInfoModel implements userInfo {
  username: string = ''
  password: string = ''

  constructor(model: userInfo) {
    this.username = model.username
    this.password = model.password
  }
}
export class testObjModel implements testObj {
  num: 10 = 10

  constructor(model: testObj) {
    this.num = model.num
  }
}
