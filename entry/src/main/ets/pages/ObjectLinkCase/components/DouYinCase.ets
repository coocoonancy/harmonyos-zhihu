import { DouYinCommentModel } from '../models'

@Component
struct DouYinCase {
  @ObjectLink
  comment: DouYinCommentModel

  build() {
    Row() {
      ForEach(Object.keys(this.comment), (key: string) => {
        Text(this.comment[key].toString())
          .onClick(() => {
            this.comment[key] = key;
          })
      })
    }
    .justifyContent(FlexAlign.SpaceAround)
    .padding(16)
    .width('100%')
  }
}

export { DouYinCase }