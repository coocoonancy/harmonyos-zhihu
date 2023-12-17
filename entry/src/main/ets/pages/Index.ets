import router from '@ohos.router'

const USER_TOKEN = 'user_token'
PersistentStorage.PersistProp<string>(USER_TOKEN, '')

class User {
  account: string = ''
  password: string = ''
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
struct Login {
  @Styles
  disabledStyle() {
    .backgroundColor(CustomColor.DisabledDanger)
  }

  @Styles
  focusStyle() {
    .backgroundColor(Color.White)
    .border({
      color: CustomColor.Danger,
      radius: 0,
      width: { bottom: 1 },
    })
  }

  @Styles
  normalStyle() {
    .backgroundColor(Color.White)
    .border({
      radius: 0,
      width: { bottom: 1 },
      color: CustomColor.BorderColor,
    })
  }

  @State title: string = '神领快递'
  @State userInfo: Partial<User> = {}
  @State loginType: number = 0
  @State codeCount: number = 60
  @State code: string = ''
  @State loginForm: Object = {
    0: {
      title: '手机号'
    },
    1: {
      title: '账号'
    }
  }

  isDisabled(): boolean {
    return this.userInfo.account !== '' && (this.loginType === 1 && this.userInfo.password !== '') || (this.loginType === 0 && this.code !== '')
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
        Text(`${this.loginForm[this.loginType].title}登录`)
          .fontSize(24)
          .lineHeight(32)
          .fontWeight(600)
          .fontColor(CustomColor.PrimaryText)
        Row() {
          Text(`${this.loginForm[this.loginType === 0 ? 1 : 0].title}登录`)
            .fontSize(16)
            .lineHeight(22)
            .fontWeight(500)
            .fontColor(CustomColor.Primary)
          Image($r('app.media.arrow_right'))
            .width(10)
            .height(10)
            .margin({ left: 6 })
        }
      }
      .width('100%')
      .margin({ top: 60, bottom: 44 })
      .padding({ left: 32, right: 16 })
      .justifyContent(FlexAlign.SpaceBetween)
      .alignItems(VerticalAlign.Center)

      TextInput()
        .stateStyles({
          focused: this.focusStyle(),
          normal: this.normalStyle()
        })
        .height(60)
        .margin({
          left: 32,
          right: 32
        })
      TextInput()
        .stateStyles({
          focused: this.focusStyle(),
          normal: this.normalStyle()
        })
        .height(60)
        .margin({
          left: 32,
          right: 32
        })


      Row() {
        Button('登录')
          .fontSize(20)
          .padding({ top: 12, bottom: 12 })
          .backgroundColor(CustomColor.Danger)
          .layoutWeight(1)
          .onClick(() => {
            AppStorage.SetOrCreate(USER_TOKEN, '')
            router.pushUrl({ url: '' })
          })
          .stateStyles({
            disabled: this.disabledStyle
          })
          .enabled(this.isDisabled())
      }
      .padding({ left: 32, right: 32 })
    }
    .width('100%')
    .height('100%')
  }
}