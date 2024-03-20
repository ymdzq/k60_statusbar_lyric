.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public currentHeight:F

.field public currentSizeIndex:I

.field public currentWidth:F

.field public final initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

.field public final sizes:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1, v1, v1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    .line 15
    iput-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 18
    return-void
    .line 20
.end method

.method public static synthetic getCurrentSizeIndex$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getInitialSize$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSizes$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final setMaxSize(FF)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    invoke-direct {v0, v1, p1, p2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;-><init>(FFF)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->initialSize:Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 9
    filled-new-array {p1, v0}, [Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p0, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V

    .line 15
    return-void
    .line 18
.end method

.method public final varargs setSizeAtProgresses([Lcom/android/systemui/surfaceeffects/ripple/RippleShader$SizeAtProgress;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->sizes:Ljava/util/List;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 7
    const/4 v1, 0x0

    .line 10
    iput v1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize;->currentSizeIndex:I

    .line 11
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    .line 13
    move-result-object p0

    .line 16
    invoke-interface {v0, p0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 22
    move-result p0

    .line 25
    const/4 p1, 0x1

    .line 26
    if-le p0, p1, :cond_0

    .line 27
    new-instance p0, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader$RippleSize$setSizeAtProgresses$$inlined$sortBy$1;-><init>()V

    .line 31
    invoke-static {v0, p0}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method
