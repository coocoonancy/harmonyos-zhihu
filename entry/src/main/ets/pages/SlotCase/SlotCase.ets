import { HmCard } from './HmCard'

@Entry
@Component
struct SlotCase {
  @Builder
  SlotFn1() {
    Text('SlotCase1')
  }

  @Builder
  SlotFn2() {
    Text('SlotCase2')
  }

  build() {
    Column({ space: 20 }) {
      HmCard()
      HmCard({ slotFn: this.SlotFn1 })
      HmCard({ slotFn: this.SlotFn2 })
      HmCard({ slotFn: () => {
        this.SlotFn1()
      } })
      HmCard({ slotFn: () => {
        this.SlotFn2()
      } })
    }
    .width('100%')
    .height('100%')
    .backgroundColor(Color.Gray)
    .justifyContent(FlexAlign.Center)
    .padding(16)
  }
}