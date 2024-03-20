.class public final Lcom/android/systemui/media/controls/ui/MediaHost;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/ui/MediaHostState;


# instance fields
.field public final currentBounds:Landroid/graphics/Rect;

.field public final currentClipping:Landroid/graphics/Rect;

.field public hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

.field public inited:Z

.field public final listener:Lcom/android/systemui/media/controls/ui/MediaHost$listener$1;

.field public listeningToMediaData:Z

.field public location:I

.field public final mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public final mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

.field public final mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

.field public final state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

.field public final tmpLocationOnScreen:[I

.field public final unimportantChangeListener:Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;

.field public final visibleChangedListeners:Landroid/util/ArraySet;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHostStatesManager:Lcom/android/systemui/media/controls/ui/MediaHostStatesManager;

    .line 11
    const/4 p1, -0x1

    .line 13
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->location:I

    .line 14
    new-instance p1, Landroid/util/ArraySet;

    .line 16
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 21
    const/4 p1, 0x0

    .line 23
    filled-new-array {p1, p1}, [I

    .line 24
    move-result-object p1

    .line 27
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->tmpLocationOnScreen:[I

    .line 28
    new-instance p1, Landroid/graphics/Rect;

    .line 30
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->currentBounds:Landroid/graphics/Rect;

    .line 35
    new-instance p1, Landroid/graphics/Rect;

    .line 37
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->currentClipping:Landroid/graphics/Rect;

    .line 42
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHost$listener$1;

    .line 44
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHost$listener$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost;)V

    .line 46
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->listener:Lcom/android/systemui/media/controls/ui/MediaHost$listener$1;

    .line 49
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;

    .line 51
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost;)V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->unimportantChangeListener:Lcom/android/systemui/media/controls/ui/MediaHost$unimportantChangeListener$1;

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public final copy()Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->copy()Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getCurrentBounds()Landroid/graphics/Rect;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->tmpLocationOnScreen:[I

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 8
    const/4 v0, 0x0

    .line 11
    aget v2, v1, v0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 14
    move-result-object v3

    .line 17
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getPaddingLeft()I

    .line 18
    move-result v3

    .line 21
    add-int/2addr v3, v2

    .line 22
    const/4 v2, 0x1

    .line 23
    aget v4, v1, v2

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 26
    move-result-object v5

    .line 29
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 30
    move-result v5

    .line 33
    add-int/2addr v5, v4

    .line 34
    aget v4, v1, v0

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 37
    move-result-object v6

    .line 40
    invoke-virtual {v6}, Landroid/widget/FrameLayout;->getWidth()I

    .line 41
    move-result v6

    .line 44
    add-int/2addr v6, v4

    .line 45
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 46
    move-result-object v4

    .line 49
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getPaddingRight()I

    .line 50
    move-result v4

    .line 53
    sub-int/2addr v6, v4

    .line 54
    aget v1, v1, v2

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 57
    move-result-object v2

    .line 60
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 61
    move-result v2

    .line 64
    add-int/2addr v2, v1

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 66
    move-result-object v1

    .line 69
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 70
    move-result v1

    .line 73
    sub-int/2addr v2, v1

    .line 74
    if-ge v6, v3, :cond_0

    .line 75
    move v3, v0

    .line 77
    move v6, v3

    .line 78
    :cond_0
    if-ge v2, v5, :cond_1

    .line 79
    move v2, v0

    .line 81
    goto :goto_0

    .line 82
    :cond_1
    move v0, v5

    .line 83
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->currentBounds:Landroid/graphics/Rect;

    .line 84
    invoke-virtual {p0, v3, v0, v6, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 86
    return-object p0
    .line 89
.end method

.method public final getDisappearParameters()Lcom/android/systemui/util/animation/DisappearParameters;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->disappearParameters:Lcom/android/systemui/util/animation/DisappearParameters;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getExpansion()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->expansion:F

    .line 4
    return p0
    .line 6
.end method

.method public final getFalsingProtectionNeeded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->falsingProtectionNeeded:Z

    .line 4
    return p0
    .line 6
.end method

.method public final getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getMeasurementInput()Lcom/android/systemui/util/animation/MeasurementInput;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->measurementInput:Lcom/android/systemui/util/animation/MeasurementInput;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getShowsOnlyActiveMedia()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 4
    return p0
    .line 6
.end method

.method public final getSquishFraction()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->squishFraction:F

    .line 4
    return p0
    .line 6
.end method

.method public final getVisible()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 4
    return p0
    .line 6
.end method

.method public final init(I)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->inited:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->inited:Z

    .line 8
    iput p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->location:I

    .line 10
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaHierarchyManager:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v2, Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 17
    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 19
    invoke-direct {v2, v3}, Lcom/android/systemui/util/animation/UniqueObjectHostView;-><init>(Landroid/content/Context;)V

    .line 21
    new-instance v3, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$createUniqueObjectHost$1;

    .line 24
    invoke-direct {v3, v1, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$createUniqueObjectHost$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Lcom/android/systemui/util/animation/UniqueObjectHostView;)V

    .line 26
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 29
    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 32
    new-instance v3, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$register$1;

    .line 34
    invoke-direct {v3, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$register$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 36
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 39
    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 41
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->location:I

    .line 44
    iget-object v4, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 46
    aput-object p0, v4, v3

    .line 48
    iget v4, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 50
    const/4 v5, -0x1

    .line 52
    if-ne v3, v4, :cond_1

    .line 53
    iput v5, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 55
    :cond_1
    iget v4, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 57
    if-ne v3, v4, :cond_2

    .line 59
    iput v5, v1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 61
    :cond_2
    const/4 v3, 0x0

    .line 63
    const/4 v4, 0x3

    .line 64
    invoke-static {v1, v3, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 65
    iput-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->hostView:Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 68
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHost;->setListeningToMediaData(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 73
    move-result-object v0

    .line 76
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;

    .line 77
    invoke-direct {v1, p0}, Lcom/android/systemui/media/controls/ui/MediaHost$init$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 85
    move-result-object v0

    .line 88
    new-instance v1, Lcom/android/systemui/media/controls/ui/MediaHost$init$2;

    .line 89
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/media/controls/ui/MediaHost$init$2;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost;I)V

    .line 91
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/animation/UniqueObjectHostView;->setMeasurementManager(Lcom/android/systemui/util/animation/UniqueObjectHostView$MeasurementManager;)V

    .line 94
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;

    .line 97
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/media/controls/ui/MediaHost$init$3;-><init>(Lcom/android/systemui/media/controls/ui/MediaHost;I)V

    .line 99
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 102
    iput-object v0, p1, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->updateViewVisibility()V

    .line 106
    return-void
    .line 109
.end method

.method public final setExpansion(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    invoke-virtual {p0, p1}, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->setExpansion(F)V

    .line 4
    return-void
    .line 7
.end method

.method public final setListeningToMediaData(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->listeningToMediaData:Z

    .line 2
    if-eq p1, v0, :cond_1

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->listeningToMediaData:Z

    .line 6
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->listener:Lcom/android/systemui/media/controls/ui/MediaHost$listener$1;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 16
    invoke-interface {p0, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 22
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->_listeners:Ljava/util/Set;

    .line 24
    invoke-interface {p0, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 26
    :cond_1
    :goto_0
    return-void
    .line 29
.end method

.method public final updateViewVisibility()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 2
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->showsOnlyActiveMedia:Z

    .line 4
    const/4 v2, 0x0

    .line 6
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->mediaDataManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 7
    if-eqz v1, :cond_0

    .line 9
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 11
    move-result v1

    .line 14
    goto :goto_2

    .line 15
    :cond_0
    iget-object v1, v3, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->mediaDataFilter:Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;

    .line 16
    iget-object v3, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 18
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 20
    iget-object v3, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->smartspaceMediaData:Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;

    .line 23
    iget-boolean v4, v3, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isActive:Z

    .line 25
    const/4 v5, 0x1

    .line 27
    if-eqz v4, :cond_1

    .line 28
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;->isValid()Z

    .line 30
    move-result v3

    .line 33
    if-eqz v3, :cond_1

    .line 34
    move v3, v5

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v3, v2

    .line 38
    :goto_0
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaDataFilter;->userEntries:Ljava/util/LinkedHashMap;

    .line 39
    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    .line 41
    move-result v1

    .line 44
    xor-int/2addr v1, v5

    .line 45
    if-nez v1, :cond_3

    .line 46
    if-eqz v3, :cond_2

    .line 48
    goto :goto_1

    .line 50
    :cond_2
    move v1, v2

    .line 51
    goto :goto_2

    .line 52
    :cond_3
    :goto_1
    move v1, v5

    .line 53
    :goto_2
    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 54
    if-ne v3, v1, :cond_4

    .line 56
    goto :goto_3

    .line 58
    :cond_4
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 59
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->changedListener:Lkotlin/jvm/functions/Function0;

    .line 61
    if-eqz v1, :cond_5

    .line 63
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 65
    :cond_5
    :goto_3
    const-class v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 68
    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 70
    move-result-object v1

    .line 73
    check-cast v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 74
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;->isShowingUnimportant:Z

    .line 76
    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 78
    if-eqz v3, :cond_6

    .line 80
    if-nez v1, :cond_6

    .line 82
    goto :goto_4

    .line 84
    :cond_6
    const/16 v2, 0x8

    .line 85
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 87
    move-result-object v1

    .line 90
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 91
    move-result v1

    .line 94
    if-eq v2, v1, :cond_7

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 97
    move-result-object v1

    .line 100
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 101
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->visibleChangedListeners:Landroid/util/ArraySet;

    .line 104
    invoke-virtual {p0}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    .line 106
    move-result-object p0

    .line 109
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 110
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 116
    move-result-object v1

    .line 119
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 120
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 122
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 124
    move-result-object v2

    .line 127
    invoke-interface {v1, v2}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    goto :goto_5

    .line 131
    :cond_7
    return-void
    .line 132
.end method
