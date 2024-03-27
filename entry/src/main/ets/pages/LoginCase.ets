import router from '@ohos.router'

const USER_TOKEN = 'user_token'
PersistentStorage.PersistProp<string>(USER_TOKEN, '')

class User {
  account: string = ''
  password: string = ''
  code: string = ''
}

export enum CustomColor {
  Primary = '#EF4F3F',
  Success = '#27BA9B',
  Warning = '#E19A30',
  Danger = '#FF4C4C',
  PrimaryText = '#2A2929',
  DisabledDanger = '#FADCD9',
  SecondaryText = '#818181',
  BorderColor = '#F4F4F4'
}


@Entry
@Component
struct LoginCase {
  @State title: string = '神领快递'
  @State userInfo: Partial<User> = {}
  @State loginType: number = 0
  @State codeCount: number = 60
  @State loginTitle: string = ''

  isDisabled(): boolean {
    return this.userInfo.account !== '' && (this.loginType === 1 && this.userInfo.password !== '') || (this.loginType === 0 && this.userInfo.code !== '')
  }

  getLoginTitle() {
    return this.loginType === 0 ? '手机号' : '账号'
  }

  getPlaceHolder() {
    return this.loginType === 0 ? '请输入验证码' : '请输入密码'
  }

  getInputType() {
    return this.loginType === 0 ? InputType.PhoneNumber : InputType.Password
  }

  build() {
    Column() {
      Row() {
        Text(this.title)
          .width('100%')
          .fontSize(18)
          .lineHeight(24)
          .fontWeight(600)
          .fontColor(CustomColor.PrimaryText)
          .textAlign(TextAlign.Center)
          .padding({ top: 9 })
      }

      Row() {
        Text(`${this.getLoginTitle()}登录`)
          .fontSize(24)
          .lineHeight(32)
          .fontWeight(600)
          .fontColor(CustomColor.PrimaryText)
        Row() {
          Text(`${this.getLoginTitle()}登录`)
            .fontSize(16)
            .lineHeight(22)
            .fontWeight(500)
            .fontColor(CustomColor.Primary)
          Image($r('app.media.ic_public_left_arrow'))
            .width(10)
            .height(10)
            .margin({ left: 6 })
        }
        .onClick(() => {
          this.loginType = this.loginType === 0 ? 1 : 0
        })
      }
      .width('100%')
      .margin({ top: 60, bottom: 44 })
      .padding({ left: 32, right: 16 })
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)

      TextInput({ placeholder: '请输入' + this.getLoginTitle() })
        .stateStyles({
          focused: {
            .backgroundColor(Color.White)
            .border({
              radius: 0,
              width: { bottom: 1 },
              color: CustomColor.BorderColor,
            })
          },
          normal: {
            .backgroundColor(Color.White)
            .border({
              radius: 0,
              width: { bottom: 1 },
              color: CustomColor.BorderColor,
            })
          }
        })
        .height(60)
        .margin({
          left: 32,
          right: 32
        })
        .onChange(value => {
          this.userInfo.account = value
        })
      TextInput({ placeholder: this.getPlaceHolder() })
        .stateStyles({
          focused: {
            .backgroundColor(Color.White)
            .border({
              radius: 0,
              width: { bottom: 1 },
              color: CustomColor.BorderColor,
            })
          },
          normal: {
            .backgroundColor(Color.White)
            .border({
              radius: 0,
              width: { bottom: 1 },
              color: CustomColor.BorderColor,
            })
          }
        })
        .height(60)
        .margin({
          left: 32,
          right: 32
        })
        .onChange(value => {
          if (this.loginType === 0) {
            this.userInfo.password = ''
            this.userInfo.code = value
          } else {
            this.userInfo.code = ''
            this.userInfo.password = value
          }
        })
        .type(this.getInputType())


      Row() {
        Button('登录')
          .fontSize(20)
          .padding({ top: 12, bottom: 12 })
          .backgroundColor(CustomColor.Danger)
          .layoutWeight(1)
          .onClick(() => {
            AppStorage.SetOrCreate(USER_TOKEN, '')
            router.pushUrl({ url: 'pages/Index' })
          })
          .stateStyles({
            disabled: {
              .backgroundColor(CustomColor.DisabledDanger)
            }
          })
          .enabled(this.isDisabled())
      }
      .padding({ left: 32, right: 32 })
    }
    .width('100%')
    .height('100%')
  }
}