.class Lcom/miui/maml/elements/LayerScreenElement$LayerView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/LayerScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/LayerScreenElement;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRender(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 11
    return-void
    .line 14
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LayerScreenElement$LayerView;->this$0:Lcom/miui/maml/elements/LayerScreenElement;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 23
    :goto_1
    return p0
    .line 24
.end method
