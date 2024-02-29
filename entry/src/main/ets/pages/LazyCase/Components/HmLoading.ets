@Preview
@Component
struct HmLoading {
  @State value: number = 0
  timer: number = -1;

  aboutToAppear(): void {
    setInterval(() => {
      if (this.value === 100) {
        this.value = 0
      }
      this.value++;
    }, 16)
  }

  aboutToDisappear(): void {
    clearInterval(this.timer);
  }

  build() {
    Progress({
      total: 100,
      value: this.value,
      type: ProgressType.Ring
    })
      .color(Color.Black)
      .backgroundColor(Color.Orange)
  }
}

export default HmLoading