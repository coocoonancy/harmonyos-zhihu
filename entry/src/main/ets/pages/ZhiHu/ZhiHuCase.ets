import { HmNav, HmItem } from './Components'

@Entry
@Component
struct ZhiHuCase {
  title: string = '评论回复'

  build() {
    Scroll() {
      Column() {
        HmNav({ title: this.title })
        HmItem()
        Divider().strokeWidth(6)
        ForEach([1, 2, 3, 4, 5], () => {
          HmItem()
          HmItem()
          HmItem()
          HmItem()
          HmItem()
          HmItem()
        })
      }
    }
  }
}