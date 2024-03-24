import router from '@ohos.router'

const USER_TOKEN = 'user_token'


class User {
  account: string = ''
  password: string = ''
}

export enum Color {
  Primary = '#EF4F3F',
  Success = '#27BA9B',
  Warning = '#E19A30',
  Danger = '#FF4C4C',
  PrimaryText = '#2A2929',
  DisabledDanger = '#FADCD9',
}


@Entry
@Component
struct Login {
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

  build() {
    Column() {
      Row() {
        Text(this.title)
          .width('100%')
          .fontSize(18)
          .lineHeight(24)
          .fontWeight(600)
          .fontColor('#2A2929')
          .textAlign(TextAlign.Center)
          .padding({ top: 9 })
      }

      Row() {
        Text()
          .width('100%')
          .fontSize(24)
          .lineHeight(32)
          .fontWeight(600)
          .fontColor('#EF4F3F')
          .padding({ top: 9 })
        Text(this.loginForm[this.loginType])
          .width('100%')
          .fontSize(24)
          .lineHeight(32)
          .fontWeight(600)
          .fontColor(Color.Primary)
          .padding({ top: 9 })
      }
      .justifyContent(FlexAlign.SpaceBetween)

      Row() {
        Button('登录')
          .fontSize(20)
          .padding({ top: 12, bottom: 12 })
          .backgroundColor(Color.Danger)
          .layoutWeight(1)
          .onClick(() => {
            AppStorage.SetOrCreate(USER_TOKEN, '')
            router.pushUrl({ url: 'pages/Index' })
          })
      }.padding({ left: 32, right: 32 })

    }
    .width('100%')
    .height('100%')
  }
}