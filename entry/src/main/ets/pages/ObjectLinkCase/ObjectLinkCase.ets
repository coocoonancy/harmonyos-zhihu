import { DouYinCase } from './components/DouYinCase'
import { DouYinCommentModel } from './models'

@Entry
@Component
struct ObjectLinkCase {
  @State comments: DouYinCommentModel[] = [
    new DouYinCommentModel({
      content: 'content1',
      likes: 0,
      auther: 'auther1'
    }),
    new DouYinCommentModel({
      content: 'content2',
      likes: 2,
      auther: 'auther2'
    })
  ]

  build() {
    List() {
      ForEach(this.comments, (item: DouYinCommentModel) => {
        ListItem() {
          DouYinCase({ item: item })
        }
      })
    }

  }
}