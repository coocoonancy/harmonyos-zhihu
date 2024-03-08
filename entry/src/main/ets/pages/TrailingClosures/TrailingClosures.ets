import { HmPanel } from './components/HmPanel'

@Entry
@Component
struct TrailingClosures {
  @State message: string = 'Hello World'

  build() {
    Column() {
      HmPanel({ panelHeight: 600, panelColor: Color.Orange }) {
        Flex() {
          ForEach(Array.from({ length: 10 }, (v, i) => {
            return i;
          }), (item: number) => {
            Button('Panel' + item)
          })
        }

        Progress({ value: 60 })
        Progress({ value: 60 })
        Progress({ value: 60 })
      }
    }
    .width('100%')
  }
}