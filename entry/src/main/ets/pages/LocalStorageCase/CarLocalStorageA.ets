import { Car } from '../../entryability/EntryAbility'

const local = LocalStorage.GetShared()

@Entry(local)
@Component
struct CarLocalStorageA {
  @LocalStorageProp('car')
  myCar: Car = new Car()

  build() {
    Row() {
      Column() {
        Text(this.myCar.brand)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.myCar.color)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}