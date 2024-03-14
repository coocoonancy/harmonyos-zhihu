import { DouYinCommentModel } from '../models'

@Component
struct DouYinCase {
  @ObjectLink
  item: DouYinCommentModel

  build() {
    Row() {
      ForEach(Object.keys(this.item), (key: string) => {
        Text(this.item[key].toString())
          .onClick(() => {
            this.item[key] = key;
          })
      })
    }
    .justifyContent(FlexAlign.SpaceAround)
    .padding(16)
    .width('100%')
  }
}

export { DouYinCase }