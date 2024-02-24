interface Address {
  province: string
  city: string,
  area: string
}

interface UserInfo {
  name: string
  age: number,
  gender: '男' | '女',
  address: Address
}


export class AddressModel implements Address {
  province: string = ''
  city: string = ''
  area: string = ''

  constructor(model: Address) {
    this.province = model.province
    this.city = model.city
    this.area = model.area
  }
}
export class UserInfoModel implements UserInfo {
  name: string = ''
  age: number = 0
  gender: '男' | '女' = '男'
  address: Address = new AddressModel({} as Address)

  constructor(model: UserInfo) {
    this.name = model.name
    this.age = model.age
    this.gender = model.gender
    this.address = model.address
  }
}
