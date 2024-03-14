import { Grand } from './Grand'

@Component
struct Child {
  @Consume('life')
  $money: number

  build() {
    Column() {
      Text('儿子👦' + this.$money)
      Button('买车')
        .onClick(() => {
          this.$money -= 2000
        })
      Grand()
    }
  }
}

export { Child }