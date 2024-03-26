import { CarLocalModel } from '../../models'

const local = LocalStorage.GetShared()

@Entry(local)
@Component
struct CarLocalStorageA {
  @LocalStorageProp('car')
  myCar: CarLocalModel = new CarLocalModel({ brand: '', color: Color.White, price: 0 })

  build() {
    Row() {
      Column() {
        Text(this.myCar.brand)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
        Text(this.myCar.price.toString())
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .fontColor(this.myCar.color)
      }
      .width('100%')
    }
    .height('100%')
  }
}