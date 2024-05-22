.class public final Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_BLUR_RADIUS:I

.field public static final MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;


# instance fields
.field public final mAttachedDrawInfos:Ljava/util/Set;

.field public final mBlendPaint:Landroid/graphics/Paint;

.field public mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

.field public mBlurRadius:F

.field public final mContext:Landroid/content/Context;

.field public mDestroyed:Z

.field public final mHandler:Landroid/os/Handler;

.field public final mLock:Ljava/lang/Object;

.field public final mOutline:Landroid/graphics/Outline;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRenderScript:Landroid/renderscript/RenderScript;

.field public mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

.field public mScale:F

.field public final mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

.field public final mTmpLoc:[I

.field public final mTmpRect:Landroid/graphics/Rect;

.field public final mTmpSize:Landroid/graphics/Point;

.field public final mViewRoot:Landroid/view/ViewRootImpl;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;

    .line 2
    invoke-direct {v0}, Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->MATRIX_SIMPLE_POOL:Lcom/miui/blur/sdk/backdrop/Pools$SynchronizedPool;

    .line 7
    sget-object v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 9
    iget v0, v0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->mBlurRadius:I

    .line 11
    sput v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/ViewRootImpl;Landroid/renderscript/RenderScript;Landroid/os/Handler;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Paint;

    .line 5
    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 10
    new-instance v1, Landroid/graphics/Paint;

    .line 12
    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlendPaint:Landroid/graphics/Paint;

    .line 17
    new-instance v2, Landroid/graphics/Outline;

    .line 19
    invoke-direct {v2}, Landroid/graphics/Outline;-><init>()V

    .line 21
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mOutline:Landroid/graphics/Outline;

    .line 24
    new-instance v2, Ljava/lang/Object;

    .line 26
    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    .line 31
    const/4 v2, 0x2

    .line 33
    new-array v2, v2, [I

    .line 34
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpLoc:[I

    .line 36
    new-instance v2, Landroid/graphics/Rect;

    .line 38
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 40
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpRect:Landroid/graphics/Rect;

    .line 43
    new-instance v2, Landroid/graphics/Point;

    .line 45
    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 47
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpSize:Landroid/graphics/Point;

    .line 50
    sget v2, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    .line 52
    int-to-float v2, v2

    .line 54
    iput v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 55
    new-instance v2, Ljava/util/HashSet;

    .line 57
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 59
    iput-object v2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 62
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    .line 64
    iput-object p2, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 66
    iput-object p4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 70
    const/4 p1, 0x1

    .line 72
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 73
    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 76
    invoke-static {p3}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {p3, p1}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 87
    iget p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 89
    invoke-virtual {p1, p0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 91
    return-void
    .line 94
.end method


# virtual methods
.method public final destroy()V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    const-string/jumbo v1, "unregister "

    .line 7
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    const-string v1, "BlurLayerHolder"

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 27
    if-eqz v0, :cond_0

    .line 29
    invoke-static {v0}, Landroid/view/MiuiCompositionSamplingListener;->unregister(Landroid/view/MiuiCompositionSamplingListener;)V

    .line 31
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 34
    invoke-static {v0}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->release(Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;)V

    .line 36
    const/4 v0, 0x0

    .line 39
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 40
    :cond_0
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-direct {v0, v1, p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 45
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    .line 48
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 50
    return-void
    .line 53
.end method

.method public final evaluateBlurRadius()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;

    .line 8
    const/4 v2, 0x1

    .line 10
    invoke-direct {v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;-><init>(I)V

    .line 11
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 14
    move-result-object v0

    .line 17
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    .line 18
    move-result-object v0

    .line 21
    sget v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->DEFAULT_BLUR_RADIUS:I

    .line 22
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    .line 24
    move-result v0

    .line 27
    const/16 v1, 0x18

    .line 28
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 30
    move-result v0

    .line 33
    int-to-float v0, v0

    .line 34
    iget v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 35
    cmpl-float v1, v0, v1

    .line 37
    if-eqz v1, :cond_0

    .line 39
    iput v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurRadius:F

    .line 41
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 43
    invoke-virtual {p0, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 45
    :cond_0
    return-void
    .line 48
.end method

.method public final start()V
    .locals 5

    .line 1
    invoke-static {}, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->acquire()Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 6
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda0;

    .line 8
    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda0;-><init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V

    .line 10
    iput-object v1, v0, Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;->mCallback:Ljava/util/function/Consumer;

    .line 13
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 15
    invoke-interface {v0}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    .line 17
    move-result-object v0

    .line 20
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;

    .line 21
    const/4 v2, 0x0

    .line 23
    invoke-direct {v1, v2}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda1;-><init>(I)V

    .line 24
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->mapToInt(Ljava/util/function/ToIntFunction;)Ljava/util/stream/IntStream;

    .line 27
    move-result-object v0

    .line 30
    invoke-interface {v0}, Ljava/util/stream/IntStream;->min()Ljava/util/OptionalInt;

    .line 31
    move-result-object v0

    .line 34
    const v1, 0x1312d00

    .line 35
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    .line 38
    move-result v0

    .line 41
    new-instance v1, Ljava/lang/StringBuilder;

    .line 42
    const-string v3, "register "

    .line 44
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mViewRoot:Landroid/view/ViewRootImpl;

    .line 49
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v1

    .line 57
    const-string v4, "BlurLayerHolder"

    .line 58
    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mSamplingListener:Lcom/miui/blur/sdk/backdrop/BlurManager$CompositionSamplingListenerWrapper;

    .line 63
    invoke-virtual {v3}, Landroid/view/ViewRootImpl;->getSurfaceControl()Landroid/view/SurfaceControl;

    .line 65
    move-result-object v1

    .line 68
    const/high16 v3, 0x41800000    # 16.0f

    .line 69
    invoke-static {p0, v2, v1, v3, v0}, Landroid/view/MiuiCompositionSamplingListener;->register(Landroid/view/MiuiCompositionSamplingListener;ILandroid/view/SurfaceControl;FI)V

    .line 71
    return-void
    .line 74
.end method
