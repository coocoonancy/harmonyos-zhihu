@Component
struct RequrieChild {
  // @Requrie
  @Prop
  num: number
  build() {
    Text(this.num.toString())
  }
}
export { RequrieChild }