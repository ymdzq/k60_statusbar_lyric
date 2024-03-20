.class public final Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final _shadeInteraction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final forceCollapseAll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

.field public final shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shadeInteraction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final stateByShade:Ljava/util/Map;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;)V
    .locals 8

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p2, Lcom/android/systemui/multishade/data/remoteproxy/MultiShadeInputProxy;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->proxiedInput:Lkotlinx/coroutines/flow/ReadonlySharedFlow;

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p2

    .line 12
    const v0, 0x7f0705c5    # @dimen/left_shade_width '436.0dp'

    .line 13
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v6

    .line 19
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 20
    move-result-object p2

    .line 23
    const v0, 0x7f07102a    # @dimen/right_shade_width '436.0dp'

    .line 24
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 27
    move-result v7

    .line 30
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p2

    .line 34
    const v0, 0x7f071096    # @dimen/shade_swipe_collapse_threshold '0.5'

    .line 35
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 38
    move-result v2

    .line 41
    invoke-static {v2}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 42
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 45
    move-result-object p2

    .line 48
    const v0, 0x7f071097    # @dimen/shade_swipe_expand_threshold '0.5'

    .line 49
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 52
    move-result v3

    .line 55
    invoke-static {v3}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 59
    move-result-object p2

    .line 62
    const v0, 0x7f070336    # @dimen/dual_shade_scrim_alpha '0.1'

    .line 63
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 66
    move-result v5

    .line 69
    invoke-static {v5}, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->checkInBounds(F)V

    .line 70
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object p2

    .line 76
    const v0, 0x7f05007a    # @bool/dual_shade_enabled 'true'

    .line 77
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 80
    move-result p2

    .line 83
    if-eqz p2, :cond_0

    .line 84
    new-instance p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 88
    move-result-object p1

    .line 91
    const v0, 0x7f070337    # @dimen/dual_shade_split_fraction '0.67'

    .line 92
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getFloat(I)F

    .line 95
    move-result v4

    .line 98
    move-object v1, p2

    .line 99
    invoke-direct/range {v1 .. v7}, Lcom/android/systemui/multishade/shared/model/ShadeConfig$DualShadeConfig;-><init>(FFFFII)V

    .line 100
    goto :goto_0

    .line 103
    :cond_0
    new-instance p2, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;

    .line 104
    invoke-direct {p2, v2, v3}, Lcom/android/systemui/multishade/shared/model/ShadeConfig$SingleShadeConfig;-><init>(FF)V

    .line 106
    :goto_0
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 109
    move-result-object p1

    .line 112
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 113
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 115
    iput-object p2, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeConfig:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 118
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 120
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 122
    move-result-object p1

    .line 125
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_forceCollapseAll:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 126
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 128
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 130
    iput-object p2, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->forceCollapseAll:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 133
    const/4 p1, 0x0

    .line 135
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 136
    move-result-object p1

    .line 139
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->_shadeInteraction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 140
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 142
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 144
    iput-object p2, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->shadeInteraction:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 147
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 149
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/android/systemui/multishade/data/repository/MultiShadeRepository;->stateByShade:Ljava/util/Map;

    .line 154
    return-void
    .line 156
.end method

.method public static checkInBounds(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, v0, p0

    .line 3
    if-gtz v0, :cond_0

    .line 5
    const/high16 v0, 0x3f800000    # 1.0f

    .line 7
    cmpg-float v0, p0, v0

    .line 9
    if-gtz v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 21
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 24
    const-string p0, " isn\'t between 0 and 1."

    .line 27
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 36
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 38
    move-result-object p0

    .line 41
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 42
    throw v0
    .line 45
.end method
