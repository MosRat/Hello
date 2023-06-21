import router from '@ohos.router'
@Entry
@Component
struct Index {
  @State message: string = 'Hello World\n'
  @State test: string = 'This is a Test!'
  @State isvisisted: boolean = true
  build() {
    Row() {
      Column() {
        Text(this.message)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
          .onClick(()=>{
            router.pushUrl({
              url:"pages/spage"
            })
          })
        Button("按钮").type(ButtonType.Capsule)
          .width(200)
        .onClick(()=>{
          this.isvisisted=false
        })
        if (this.isvisisted) {
          Button("按钮").type(ButtonType.Circle)
        }
        Button("按钮").type(ButtonType.Normal)
          .width("20%").onClick(()=>{
          this.isvisisted = true
        })

        Text(this.test)
          .fontSize(50)
          .fontWeight(FontWeight.Bold)
      }
      .width('100%')
    }
    .height('100%')
  }
}