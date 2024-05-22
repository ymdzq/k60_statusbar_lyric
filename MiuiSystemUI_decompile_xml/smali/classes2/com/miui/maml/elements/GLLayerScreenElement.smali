.class public Lcom/miui/maml/elements/GLLayerScreenElement;
.super Lcom/miui/maml/elements/ViewHolderScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML GLLayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "GLLayer"


# instance fields
.field private mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

.field private mHVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

.field private mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

.field private mView:Landroid/opengl/GLSurfaceView;

.field private mViewVar:Lcom/miui/maml/data/IndexedVariable;

.field private mWVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/GLLayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 5
    return-void
    .line 8
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/data/IndexedVariable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$600(Lcom/miui/maml/elements/GLLayerScreenElement;)Lcom/miui/maml/CommandTrigger;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$700(Lcom/miui/maml/elements/GLLayerScreenElement;)Landroid/opengl/GLSurfaceView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 2
    return-object p0
    .line 4
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    new-instance p1, Landroid/opengl/GLSurfaceView;

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object v0

    .line 9
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 10
    invoke-direct {p1, v0}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 15
    new-instance p1, Landroid/view/WindowManager$LayoutParams;

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 19
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 21
    move-result v0

    .line 24
    float-to-int v0, v0

    .line 25
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 28
    move-result v1

    .line 31
    float-to-int v1, v1

    .line 32
    invoke-direct {p1, v0, v1}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 36
    const/4 v0, 0x1

    .line 38
    iput v0, p1, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 39
    const/16 v1, 0x100

    .line 41
    iput v1, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 43
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 45
    new-instance v1, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;

    .line 47
    const/4 v2, 0x0

    .line 49
    invoke-direct {v1, p0, v2}, Lcom/miui/maml/elements/GLLayerScreenElement$GLRenderer;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/opengl/GLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 53
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroupRC;->mController:Lcom/miui/maml/RendererController;

    .line 56
    const/4 v1, 0x0

    .line 58
    if-eqz p1, :cond_0

    .line 59
    move p1, v1

    .line 61
    goto :goto_0

    .line 62
    :cond_0
    move p1, v0

    .line 63
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 64
    invoke-virtual {v2, p1}, Landroid/opengl/GLSurfaceView;->setRenderMode(I)V

    .line 66
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 69
    if-eqz p1, :cond_1

    .line 71
    const-string v2, "create"

    .line 73
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 75
    move-result-object p1

    .line 78
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceCreateCommands:Lcom/miui/maml/CommandTrigger;

    .line 79
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 81
    const-string v2, "change"

    .line 83
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 85
    move-result-object p1

    .line 88
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceChangeCommands:Lcom/miui/maml/CommandTrigger;

    .line 89
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 91
    const-string v2, "draw"

    .line 93
    invoke-virtual {p1, v2}, Lcom/miui/maml/CommandTriggers;->find(Ljava/lang/String;)Lcom/miui/maml/CommandTrigger;

    .line 95
    move-result-object p1

    .line 98
    iput-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 99
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mOnSurfaceDrawCommands:Lcom/miui/maml/CommandTrigger;

    .line 101
    if-nez p1, :cond_2

    .line 103
    const-string p1, "GLLayerScreenElement"

    .line 105
    const-string v2, "no draw commands."

    .line 107
    invoke-static {p1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 112
    move-result-object p1

    .line 115
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 116
    const-string v3, "__objGLCanvas"

    .line 118
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 120
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mCanvasVar:Lcom/miui/maml/data/IndexedVariable;

    .line 123
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 125
    const-string v3, "__objGLView"

    .line 127
    invoke-direct {v2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 129
    iput-object v2, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 132
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 134
    const-string v2, "__w"

    .line 136
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 138
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mWVar:Lcom/miui/maml/data/IndexedVariable;

    .line 141
    new-instance v1, Lcom/miui/maml/data/IndexedVariable;

    .line 143
    const-string v2, "__h"

    .line 145
    invoke-direct {v1, v2, p1, v0}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 147
    iput-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mHVar:Lcom/miui/maml/data/IndexedVariable;

    .line 150
    return-void
    .line 152
.end method


# virtual methods
.method public doTick(J)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ViewHolderScreenElement;->doTickSelf(J)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->updateView()V

    .line 5
    return-void
    .line 8
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 2
    return-object p0
    .line 4
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mViewVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/elements/GLLayerScreenElement;->mView:Landroid/opengl/GLSurfaceView;

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(Ljava/lang/Object;)Z

    .line 6
    invoke-super {p0}, Lcom/miui/maml/elements/ViewHolderScreenElement;->init()V

    .line 9
    return-void
    .line 12
.end method

.method public onControllerCreated(Lcom/miui/maml/RendererController;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/miui/maml/elements/GLLayerScreenElement$ProxyListener;-><init>(Lcom/miui/maml/elements/GLLayerScreenElement;Lcom/miui/maml/elements/GLLayerScreenElement$1;)V

    .line 5
    invoke-virtual {p1, v0}, Lcom/miui/maml/RendererController;->setListener(Lcom/miui/maml/RendererController$Listener;)V

    .line 8
    return-void
    .line 11
.end method
