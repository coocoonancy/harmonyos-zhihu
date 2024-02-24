import { UserInfoModel, AddressModel } from './StateModel'

@Entry
@Component
struct StateCase {
  @State userInfo: UserInfoModel = new UserInfoModel({
    age: 0,
    name: '',
    gender: '男',
    address: new AddressModel({
      province: '',
      city: '',
      area: ''
    })
  })

  build() {
    Row() {
      Column({ space: 20 }) {
        Row() {
          Text('姓名：')
          TextInput({
            placeholder: '请输入姓名',
            text: this.userInfo.name,
            // next使用$$
            // text: $$this.loginForm.username
          })
            .height(40)
            .onChange(value => {
              // next onChange不需继续赋值
              this.userInfo.name = value;
            })
        }

        Row() {
          Text('年龄：')
          TextInput({ placeholder: '请输入年龄', text: this.userInfo.age.toString() })
            .height(40)
            .type(InputType.Number)
            .onChange(value => {
              this.userInfo.age = +value;
            })
        }

        Row() {
          Text('性别：')
          Row() {
            Row() {
              Text('男')
              Radio({ value: '男', group: 'userGender' })
                .checked(false)
                .height(20)
                .width(20)
                .margin({ left: 4 })
                .onChange((isChecked: boolean) => {
                  this.userInfo.gender = isChecked ? '男' : '女'
                })
            }.margin({ right: 20 })

            Row() {
              Text('女')
              Radio({ value: '女', group: 'userGender' })
                .checked(false)
                .height(20)
                .width(20)
                .margin({ left: 4 })
                .onChange((isChecked: boolean) => {
                  this.userInfo.gender = isChecked ? '女' : '男'
                })
            }

          }.layoutWeight(1)
        }

        Row() {
          Text('地址：')
          Row() {
            TextInput({ placeholder: '省份', text: this.userInfo.address.province })
              .layoutWeight(1)
              .onChange(value => {
                this.userInfo.address.province = value;
              })
            TextInput({ placeholder: '城市', text: this.userInfo.address.city })
              .layoutWeight(1)
              .onChange(value => {
                this.userInfo.address.city = value;
              })
            TextInput({ placeholder: '地区', text: this.userInfo.address.area })
              .layoutWeight(1)
              .onChange(value => {
                this.userInfo.address.area = value;
              })

          }.layoutWeight(1)
        }

        Row() {
          Button('修改信息')
            .onClick(() => {
              this.userInfo.name = '妈妈'
              this.userInfo.age = 1
              this.userInfo.gender = '女'
              this.userInfo.address.province = '浙江省'
              this.userInfo.address.city = '杭州市'
              this.userInfo.address.area = '余杭区'
              this.userInfo.address = new AddressModel(this.userInfo.address)
            })
        }

      }
      .padding({
        left: 16,
        right: 16
      })
      .width('100%')
    }
    .height('100%')
  }
}