import { Car } from '../../entryability/EntryAbility'

const carLocal = LocalStorage.GetShared()

@Entry(carLocal)
@Component
struct CarLocalStorageB {
  @LocalStorageProp('car')
  myCar: Car = new Car()
  @LocalStorageLink('car')
  yourCar: Car = new Car()

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

      Column() {
        Text(this.yourCar.brand)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.yourCar.color)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(() => {
            this.yourCar.color = '珍珠白'
          })
      }
      .width('100%')
    }
    .height('100%')
  }
}