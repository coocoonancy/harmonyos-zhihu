import promptAction from '@ohos.promptAction'

interface LoginForm {
  username: string
  password: string
}

@Entry
@Component
struct EventCase {
  @State loginForm: LoginForm = {
    password: '',
    username: '',
  }

  login() {
    if (this.loginForm.username === 'admin' && this.loginForm.password === '123456') {
      promptAction.showToast({ message: '登录成功' })
    } else {
      promptAction.showToast({ message: '登录失败' })
    }
  }

  build() {
    Row() {
      Column({ space: 20 }) {
        TextInput({
          placeholder: '请输入用户名',
          text: this.loginForm.username,
          // next使用$$
          // text: $$this.loginForm.username
        })
          .height(40)
          .onChange(value => {
            // next onChange不需继续赋值
            this.loginForm.username = value;
          })
        TextInput({ placeholder: '请输入密码', text: this.loginForm.password })
          .height(40)
          .type(InputType.Password)
          .onChange(value => {
            this.loginForm.password = value;
          })
        Button('登录')
          .width('100%')
          .onClick(() => {
            this.login()
          })
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