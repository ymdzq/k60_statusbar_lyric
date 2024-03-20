.class Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/ViewHolderScreenElement;Lcom/miui/maml/elements/ViewHolderScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/ViewHolderScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->getView()Landroid/view/View;

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
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 10
    return-void
    .line 13
.end method

.method public tick(J)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    .line 4
    return-void
    .line 7
.end method

.method public triggerUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ViewHolderScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/ViewHolderScreenElement;

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
