.class public final Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final callbacks:Ljava/util/Set;

.field public final carouselSizes:Ljava/util/Map;

.field public final controllers:Ljava/util/Set;

.field public final mediaHostStates:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->callbacks:Ljava/util/Set;

    .line 10
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->controllers:Ljava/util/Set;

    .line 17
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 19
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    .line 24
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->mediaHostStates:Ljava/util/Map;

    .line 31
    return-void
    .line 33
.end method


# virtual methods
.method public final updateCarouselDimensions(ILcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;
    .locals 7

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->carouselSizes:Ljava/util/Map;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;->controllers:Ljava/util/Set;

    .line 10
    if-eqz v2, :cond_3

    .line 12
    const-string v2, "MediaHostStatesManager#updateCarouselDimensions"

    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    :try_start_0
    new-instance v2, Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 19
    invoke-direct {v2}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>()V

    .line 21
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p0

    .line 27
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v4

    .line 31
    if-eqz v4, :cond_2

    .line 32
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 38
    invoke-virtual {v4, p2}, Lcom/android/systemui/media/controls/ui/MediaViewController;->getMeasurementsForState(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 40
    move-result-object v4

    .line 43
    if-eqz v4, :cond_0

    .line 44
    iget v5, v4, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 46
    iget v6, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 48
    if-le v5, v6, :cond_1

    .line 50
    iput v5, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 52
    :cond_1
    iget v4, v4, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 54
    iget v5, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 56
    if-le v4, v5, :cond_0

    .line 58
    iput v4, v2, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p0

    .line 66
    invoke-interface {v3, p0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 67
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 70
    return-object v2

    .line 73
    :catchall_0
    move-exception p0

    .line 74
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 75
    throw p0

    .line 78
    :cond_3
    new-instance v0, Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 79
    invoke-direct {v0}, Lcom/android/systemui/util/animation/MeasurementOutput;-><init>()V

    .line 81
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 84
    move-result-object p0

    .line 87
    :cond_4
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 88
    move-result v1

    .line 91
    if-eqz v1, :cond_6

    .line 92
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 94
    move-result-object v1

    .line 97
    check-cast v1, Lcom/android/systemui/media/controls/ui/MediaViewController;

    .line 98
    invoke-virtual {v1, p2}, Lcom/android/systemui/media/controls/ui/MediaViewController;->getMeasurementsForState(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;)Lcom/android/systemui/util/animation/MeasurementOutput;

    .line 100
    move-result-object v1

    .line 103
    if-eqz v1, :cond_4

    .line 104
    iget v2, v1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 106
    iget v4, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 108
    if-le v2, v4, :cond_5

    .line 110
    iput v2, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredHeight:I

    .line 112
    :cond_5
    iget v1, v1, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 114
    iget v2, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 116
    if-le v1, v2, :cond_4

    .line 118
    iput v1, v0, Lcom/android/systemui/util/animation/MeasurementOutput;->measuredWidth:I

    .line 120
    goto :goto_1

    .line 122
    :cond_6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object p0

    .line 126
    invoke-interface {v3, p0, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    return-object v0
    .line 130
.end method
