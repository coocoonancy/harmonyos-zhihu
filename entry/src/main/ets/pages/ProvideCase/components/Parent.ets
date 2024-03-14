import { Child } from './Child'

@Component
struct Parent {
  @Consume
  money: number

  build() {
    Column() {
      Text('爸爸👨' + this.money)
      Button('打牌')
        .onClick(() => {
          this.money -= 200
        })
      Child()
    }
  }
}

export { Parent }