.class Lcom/miui/maml/elements/WindowScreenElement$WindowView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

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
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 11
    return-void
    .line 14
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/WindowScreenElement$WindowView;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 8
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 11
    move-result p0

    .line 14
    return p0
    .line 15
.end method
