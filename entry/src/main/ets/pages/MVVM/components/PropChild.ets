@Component
struct PropChild {
  @Prop
  propNum: number

  build() {
    Row() {
      Text('PropChild num:')
      Text(this.propNum.toString()).fontSize(32)
    }
    .onClick(() => {
      this.propNum++
    })
  }
}
export { PropChild }