interface person {
  user: string,
  age: number
}

export class personModel implements person {
  user: string = ''
  age: number = 0

  constructor(model: person) {
    this.user = model.user
    this.age = model.age
  }
}

let recordLocal: Record<string, personModel> = {
  user: new personModel({
    user: 'user',
    age: 16
  }),
  test: new personModel({
    user: 'test',
    age: 20
  })
}

const local = new LocalStorage(recordLocal)

export { local }
