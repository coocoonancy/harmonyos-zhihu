@Component
struct Grand {
  @Consume('life')
  $money: number

  build() {
    Column() {
      Text('孙子' + this.$money)
      Button('糖果🍬')
        .onClick(() => {
          this.$money -= 1
        })
    }
  }
}

export { Grand }