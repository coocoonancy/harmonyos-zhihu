@Entry
@Component
struct NavigationCase {
  @State message: string = 'Hello World'

  build() {
    Navigation() {
      NavRouter() {
        Button('A')
        NavDestination() {
          Text('A内容')
        }
        .title('A')
      }
      NavRouter() {
        Button('B')
        NavDestination() {
          Text('B内容')
        }
        .title('B')
      }
    }
    .title('主页')
    .titleMode(NavigationTitleMode.Mini)

  }
}