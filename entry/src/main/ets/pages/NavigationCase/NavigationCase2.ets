import { Friend } from './components/Friend'
import { My } from './components/My'

@Entry
@Component
struct NavigationCase2 {
  // 声明一个pathStack对象
  // @Provide
  // stackPath: NavPathStack = new NavPathStack()
  @Styles
  gridStyle() {
    .height(60)
    .borderRadius(10)
    .backgroundColor(Color.Yellow)
    .margin(12)
  }

  build() {
    Navigation() {
      GridRow({ columns: 4 }) {
        GridCol() {
          Text('微信')
        }
        .gridStyle()
        .onClick(() => {
          // this.stackPath.pushPathByName('Chat', null)
        })

        GridCol() {
          Text('通信录')
        }
        .gridStyle()
        .onClick(() => {
          // this.stackPath.pushPathByName('Chat', null)
        })

        GridCol() {
          Text('发现')
        }
        .gridStyle()
        .onClick(() => {
          // this.stackPath.pushPathByName('Discover', null)
        })

        GridCol() {
          Text('我的')
        }
        .gridStyle()
        .onClick(() => {
          // this.stackPath.pushPathByName('Discover', null)
        })
      }
    }
    .title('WeChat')
    .titleMode(NavigationTitleMode.Mini)
  }
}