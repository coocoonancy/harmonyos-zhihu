@Preview
@Component
struct HmLoading {
  build() {
    Text('Loading')
  }
}
@Preview
@Component
struct HmLoading1 {
  build() {
    Text('Loading1')
  }
}

@Preview
@Component
export struct HmLoading2 {
  build() {
    Text('Loading2')
  }
}

export default HmLoading

export { HmLoading, HmLoading1 }