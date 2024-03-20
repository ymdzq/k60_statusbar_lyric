.class public Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lmiui/window/MiuiEmbeddingWindowStub;->ENABLED:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-class v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 6
    invoke-static {v0}, Lcom/miui/base/MiuiStubUtil;->getInstance(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    new-instance v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 15
    invoke-direct {v0}, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;-><init>()V

    .line 17
    :goto_0
    sput-object v0, Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;->sInstance:Lcom/android/wm/shell/activityembedding/ActivityEmbeddingStub;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public disableAnimation(Landroid/window/TransitionInfoStub;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public processTransitionStartState(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;Landroid/window/TransitionInfoStub$MiuiChange;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public updateTransformation(Lcom/android/wm/shell/activityembedding/ActivityEmbeddingAnimationAdapter;Landroid/window/TransitionInfoStub$MiuiChange;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
