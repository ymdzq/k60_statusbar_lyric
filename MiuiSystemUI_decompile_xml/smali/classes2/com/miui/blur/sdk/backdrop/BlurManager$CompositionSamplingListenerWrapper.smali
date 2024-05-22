.class Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
.super Landroid/view/MiuiCompositionSamplingListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final POOL:Landroid/util/Pools$SynchronizedPool;


# instance fields
.field public mCallback:Ljava/util/function/Consumer;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/util/Pools$SynchronizedPool;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, v1}, Landroid/util/Pools$SynchronizedPool;-><init>(I)V

    .line 5
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    .line 8
    return-void
    .line 10
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 2
    sget-object v1, Lcom/miui/blur/sdk/backdrop/BlurManager;->RS_HANDLER:Landroid/os/Handler;

    .line 4
    invoke-direct {v0, v1}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 6
    invoke-direct {p0, v0}, Landroid/view/MiuiCompositionSamplingListener;-><init>(Ljava/util/concurrent/Executor;)V

    .line 9
    return-void
    .line 12
.end method

.method public static acquire()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    .line 2
    invoke-virtual {v0}, Landroid/util/Pools$SynchronizedPool;->acquire()Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 8
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 12
    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;-><init>()V

    .line 14
    :cond_0
    return-object v0
    .line 17
.end method

.method public static release(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 3
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->POOL:Landroid/util/Pools$SynchronizedPool;

    .line 5
    invoke-virtual {v0, p0}, Landroid/util/Pools$SynchronizedPool;->release(Ljava/lang/Object;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->destroy()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method


# virtual methods
.method public onSampleCollected(Landroid/graphics/GraphicBuffer;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-interface {p0, p1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method
