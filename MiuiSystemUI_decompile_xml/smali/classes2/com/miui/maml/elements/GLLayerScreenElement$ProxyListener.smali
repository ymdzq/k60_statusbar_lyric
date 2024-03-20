.class Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;
.super Lcom/miui/maml/RendererController$EmptyListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Lcom/miui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    invoke-static {p0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    .line 8
    return-void
    .line 11
.end method

.method public forceUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

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
    return-void
    .line 2
.end method

.method public triggerUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

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
