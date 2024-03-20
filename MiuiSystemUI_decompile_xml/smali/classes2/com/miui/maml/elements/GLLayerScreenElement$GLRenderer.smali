.class Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/GLLayerScreenElement;


# direct methods
.method private constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 28
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 30
    move-result-object p1

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p1, v0}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 40
    if-eqz p0, :cond_1

    .line 42
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->doneRender()V

    .line 44
    :cond_1
    return-void
    .line 47
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    invoke-static {v0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    move-result-object v0

    .line 15
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 21
    move-result-object p1

    .line 24
    int-to-double v0, p2

    .line 25
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 26
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 29
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 31
    move-result-object p1

    .line 34
    int-to-double p2, p3

    .line 35
    invoke-virtual {p1, p2, p3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 36
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 39
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 41
    move-result-object p1

    .line 44
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 45
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 48
    invoke-static {p0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 50
    move-result-object p0

    .line 53
    const/4 p1, 0x0

    .line 54
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 55
    :cond_0
    return-void
    .line 58
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 2
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 4
    move-result-object p2

    .line 7
    if-eqz p2, :cond_0

    .line 8
    iget-object p2, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 10
    invoke-static {p2}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 12
    move-result-object p2

    .line 15
    invoke-virtual {p2, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 19
    invoke-static {p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 21
    move-result-object p1

    .line 24
    invoke-virtual {p1}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 25
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;->this$0:Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 28
    invoke-static {p0}, Lcom/miui/maml/elements/GLLayerScreenElement;->access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;

    .line 30
    move-result-object p0

    .line 33
    const/4 p1, 0x0

    .line 34
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    return-void
    .line 38
.end method
