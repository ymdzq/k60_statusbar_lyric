.class Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/WindowScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/WindowScreenElement;Lcom/miui/maml/elements/WindowScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/WindowScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/elements/WindowScreenElement;->access$200(Lcom/miui/maml/elements/WindowScreenElement;)Lcom/miui/maml/elements/WindowScreenElement$WindowView;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->postInvalidate()V

    .line 8
    return-void
    .line 11
.end method

.method public forceUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 10
    return-void
    .line 13
.end method

.method public onHover(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onHover(Landroid/view/MotionEvent;)Z

    .line 4
    return-void
    .line 7
.end method

.method public onTouch(Landroid/view/MotionEvent;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onTouch(Landroid/view/MotionEvent;)Z

    .line 4
    return-void
    .line 7
.end method

.method public tick(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTick(J)V

    .line 4
    return-void
    .line 7
.end method

.method public triggerUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/WindowScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/WindowScreenElement;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->triggerUpdate()V

    .line 10
    return-void
    .line 13
.end method
