.class public final Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;


# instance fields
.field public carouselHeight:I

.field public carouselWidth:I

.field public final closeGuts:Lkotlin/jvm/functions/Function1;

.field public contentTranslation:F

.field public cornerRadius:I

.field public curIndex:I

.field public final dismissCallback:Lkotlin/jvm/functions/Function0;

.field public final falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public falsingProtectionNeeded:Z

.field public final gestureDetector:Landroidx/core/view/GestureDetectorCompat;

.field public final logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

.field public final logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

.field public mSidePaddings:I

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mediaContent:Landroid/view/ViewGroup;

.field public final pageIndicator:Lcom/android/systemui/qs/PageIndicator;

.field public playerWidthPlusPadding:I

.field public qsExpanded:Z

.field public scrollIntoCurrentMedia:I

.field public final scrollView:Lcom/android/systemui/media/controls/ui/MediaScrollView;

.field public final scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

.field public final seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

.field public settingsButton:Landroid/view/View;

.field public showsSettingsButton:Z

.field public final translationChangedListener:Lkotlin/jvm/functions/Function0;

.field public visibleMediaIndex:I

.field public visibleToUser:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Lcom/android/systemui/media/controls/ui/MediaScrollView;Lcom/android/systemui/qs/PageIndicator;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/classifier/FalsingCollector;Lcom/android/systemui/plugins/FalsingManager;Lkotlin/jvm/functions/Function1;Lcom/android/systemui/media/controls/util/MediaUiEventLogger;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->pageIndicator:Lcom/android/systemui/qs/PageIndicator;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->dismissCallback:Lkotlin/jvm/functions/Function0;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->closeGuts:Lkotlin/jvm/functions/Function1;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingCollector:Lcom/android/systemui/classifier/FalsingCollector;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->logSmartspaceImpression:Lkotlin/jvm/functions/Function1;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->logger:Lcom/android/systemui/media/controls/util/MediaUiEventLogger;

    .line 25
    new-instance p2, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;

    .line 27
    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$gestureListener$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V

    .line 29
    new-instance p3, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$touchListener$1;

    .line 32
    invoke-direct {p3, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$touchListener$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V

    .line 34
    new-instance p4, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;

    .line 37
    invoke-direct {p4, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollChangedListener$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V

    .line 39
    new-instance p5, Landroidx/core/view/GestureDetectorCompat;

    .line 42
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 44
    move-result-object p6

    .line 47
    invoke-direct {p5, p6, p2}, Landroidx/core/view/GestureDetectorCompat;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    .line 48
    iput-object p5, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->gestureDetector:Landroidx/core/view/GestureDetectorCompat;

    .line 51
    invoke-virtual {p1, p3}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setTouchListener(Lcom/android/systemui/Gefingerpoken;)V

    .line 53
    const/4 p2, 0x2

    .line 56
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOverScrollMode(I)V

    .line 57
    invoke-virtual {p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getContentContainer()Landroid/view/ViewGroup;

    .line 60
    move-result-object p2

    .line 63
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 64
    invoke-virtual {p1, p4}, Landroid/widget/HorizontalScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 66
    new-instance p2, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$1;

    .line 69
    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/widget/HorizontalScrollView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 77
    invoke-virtual {p1}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 83
    move-result-object p1

    .line 86
    const p2, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 87
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 90
    move-result p1

    .line 93
    iput p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mSidePaddings:I

    .line 94
    return-void
    .line 96
.end method


# virtual methods
.method public final getMaxTranslation()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->showsSettingsButton:Z

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 11
    move-result p0

    .line 14
    goto :goto_0

    .line 15
    :cond_1
    iget p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 16
    :goto_0
    return p0
    .line 18
.end method

.method public final isRtl()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->isLayoutRtl()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final resetTranslation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getContentTranslation()F

    .line 4
    move-result v1

    .line 7
    const/4 v2, 0x0

    .line 8
    cmpg-float v1, v1, v2

    .line 9
    if-nez v1, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-nez v1, :cond_2

    .line 16
    if-eqz p1, :cond_1

    .line 18
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 20
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 22
    move-result-object p0

    .line 25
    sget-object p1, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->CONTENT_TRANSLATION:Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$Companion$CONTENT_TRANSLATION$1;

    .line 26
    sget-object v1, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandlerKt;->translationConfig:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 28
    invoke-virtual {p0, p1, v2, v2, v1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 30
    invoke-virtual {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 33
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setAnimationTargetX(F)V

    .line 36
    goto :goto_1

    .line 39
    :cond_1
    sget-object p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 40
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 46
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->setContentTranslation(F)V

    .line 49
    :cond_2
    :goto_1
    return-void
    .line 52
.end method

.method public final scrollToPlayer(II)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 2
    if-ltz p1, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 6
    move-result v1

    .line 9
    if-ge p1, v1, :cond_0

    .line 10
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 12
    mul-int/2addr p1, v1

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 15
    invoke-virtual {v1, p1}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->setRelativeScrollX(I)V

    .line 17
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 20
    move-result p1

    .line 23
    add-int/lit8 p1, p1, -0x1

    .line 24
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 30
    move-result-object p1

    .line 33
    new-instance p2, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollToPlayer$1;

    .line 34
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/controls/ui/MediaCarouselScrollHandler$scrollToPlayer$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;Landroid/view/View;)V

    .line 36
    const-wide/16 v0, 0x64

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 41
    invoke-interface {p0, p2, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 43
    return-void
    .line 46
.end method

.method public final setContentTranslation(F)V
    .locals 2

    .line 1
    iput p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 4
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->updateSettingsPresentation()V

    .line 9
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->translationChangedListener:Lkotlin/jvm/functions/Function0;

    .line 12
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 14
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 17
    const/4 v0, 0x0

    .line 19
    cmpg-float p1, p1, v0

    .line 20
    const/4 v0, 0x1

    .line 22
    const/4 v1, 0x0

    .line 23
    if-nez p1, :cond_0

    .line 24
    move p1, v0

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move p1, v1

    .line 28
    :goto_0
    if-eqz p1, :cond_2

    .line 29
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 31
    if-eqz p1, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    move v0, v1

    .line 36
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setClipToOutline(Z)V

    .line 39
    return-void
    .line 42
.end method

.method public final startScroll(I)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->cancelCurrentScroll()V

    .line 4
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mSidePaddings:I

    .line 7
    sub-int/2addr p1, v1

    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 10
    div-int/lit8 v2, v1, 0x3

    .line 12
    add-int/2addr v2, p1

    .line 14
    rem-int p1, v2, v1

    .line 15
    sub-int/2addr v2, p1

    .line 17
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 18
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 20
    const/4 v1, 0x2

    .line 23
    new-array v1, v1, [F

    .line 24
    fill-array-data v1, :array_0

    .line 26
    const/4 v3, -0x2

    .line 29
    invoke-virtual {p1, v3, v1}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 30
    move-result-object p1

    .line 33
    new-instance v1, Lmiuix/animation/controller/AnimState;

    .line 34
    const-string/jumbo v3, "start"

    .line 36
    invoke-direct {v1, v3}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 39
    sget-object v3, Lmiuix/animation/property/ViewProperty;->SCROLL_X:Lmiuix/animation/property/ViewProperty;

    .line 42
    invoke-virtual {v0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    .line 44
    move-result v4

    .line 47
    const/4 v5, 0x0

    .line 48
    new-array v6, v5, [J

    .line 49
    invoke-virtual {v1, v3, v4, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 51
    move-result-object v1

    .line 54
    new-instance v4, Lmiuix/animation/controller/AnimState;

    .line 55
    const-string/jumbo v6, "target"

    .line 57
    invoke-direct {v4, v6}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 60
    new-array v5, v5, [J

    .line 63
    invoke-virtual {v4, v3, v2, v5}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;I[J)Lmiuix/animation/controller/AnimState;

    .line 65
    move-result-object v3

    .line 68
    filled-new-array {v0}, [Landroid/view/View;

    .line 69
    move-result-object v0

    .line 72
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 73
    move-result-object v0

    .line 76
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 77
    move-result-object v0

    .line 80
    filled-new-array {p1}, [Lmiuix/animation/base/AnimConfig;

    .line 81
    move-result-object p1

    .line 84
    invoke-interface {v0, v1, v3, p1}, Lmiuix/animation/IStateStyle;->fromTo(Ljava/lang/Object;Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    .line 85
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->playerWidthPlusPadding:I

    .line 88
    div-int/2addr v2, p1

    .line 90
    iget p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->curIndex:I

    .line 91
    const-class v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 93
    if-le p1, v2, :cond_0

    .line 95
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 97
    move-result-object p1

    .line 100
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 101
    sget-object v0, Lcom/miui/systemui/events/MediaPanelScroll;->RIGHT:Lcom/miui/systemui/events/MediaPanelScroll;

    .line 103
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 105
    move-result-object v0

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    new-instance v1, Lcom/miui/systemui/events/MediaStrokeEvent;

    .line 112
    invoke-direct {v1, v0}, Lcom/miui/systemui/events/MediaStrokeEvent;-><init>(Ljava/lang/String;)V

    .line 114
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 117
    invoke-interface {p1, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 119
    goto :goto_0

    .line 122
    :cond_0
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 123
    move-result-object p1

    .line 126
    check-cast p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 127
    sget-object v0, Lcom/miui/systemui/events/MediaPanelScroll;->LEFT:Lcom/miui/systemui/events/MediaPanelScroll;

    .line 129
    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 131
    move-result-object v0

    .line 134
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 135
    new-instance v1, Lcom/miui/systemui/events/MediaStrokeEvent;

    .line 138
    invoke-direct {v1, v0}, Lcom/miui/systemui/events/MediaStrokeEvent;-><init>(Ljava/lang/String;)V

    .line 140
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 143
    invoke-interface {p1, v1}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 145
    :goto_0
    iput v2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->curIndex:I

    .line 148
    return-void

    .line 150
    nop

    .line 151
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3ecccccd    # 0.4f
    .end array-data
    .line 152
.end method

.method public final updateMediaPaddings()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaScrollView;->getContentContainer()Landroid/view/ViewGroup;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    move v3, v2

    .line 13
    :goto_0
    if-ge v3, v1, :cond_1

    .line 14
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 16
    move-result-object v4

    .line 19
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v5

    .line 23
    check-cast v5, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 24
    if-nez v3, :cond_0

    .line 26
    iget v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mSidePaddings:I

    .line 28
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 30
    goto :goto_1

    .line 33
    :cond_0
    invoke-virtual {v5, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 34
    :goto_1
    iget v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mSidePaddings:I

    .line 37
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 39
    invoke-virtual {v4, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 42
    add-int/lit8 v3, v3, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    return-void
    .line 48
.end method

.method public final updatePlayerVisibilities()V
    .locals 8

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollIntoCurrentMedia:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    move v0, v1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move v0, v2

    .line 10
    :goto_0
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->mediaContent:Landroid/view/ViewGroup;

    .line 11
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    .line 13
    move-result v4

    .line 16
    move v5, v2

    .line 17
    :goto_1
    if-ge v5, v4, :cond_4

    .line 18
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v6

    .line 23
    iget v7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleMediaIndex:I

    .line 24
    if-eq v5, v7, :cond_2

    .line 26
    add-int/lit8 v7, v7, 0x1

    .line 28
    if-ne v5, v7, :cond_1

    .line 30
    if-eqz v0, :cond_1

    .line 32
    goto :goto_2

    .line 34
    :cond_1
    move v7, v2

    .line 35
    goto :goto_3

    .line 36
    :cond_2
    :goto_2
    move v7, v1

    .line 37
    :goto_3
    if-eqz v7, :cond_3

    .line 38
    move v7, v2

    .line 40
    goto :goto_4

    .line 41
    :cond_3
    const/4 v7, 0x4

    .line 42
    :goto_4
    invoke-virtual {v6, v7}, Landroid/view/View;->setVisibility(I)V

    .line 43
    add-int/lit8 v5, v5, 0x1

    .line 46
    goto :goto_1

    .line 48
    :cond_4
    return-void
    .line 49
.end method

.method public final updateSettingsPresentation()V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->showsSettingsButton:Z

    .line 2
    const/4 v1, 0x4

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_f

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 8
    if-nez v0, :cond_0

    .line 10
    move-object v0, v2

    .line 12
    :cond_0
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 13
    move-result v0

    .line 16
    if-lez v0, :cond_f

    .line 17
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->getMaxTranslation()I

    .line 19
    move-result v0

    .line 22
    int-to-float v0, v0

    .line 23
    iget v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 24
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    .line 26
    move-result v3

    .line 29
    const/4 v4, 0x0

    .line 30
    const/high16 v5, 0x3f800000    # 1.0f

    .line 31
    invoke-static {v4, v0, v4, v5, v3}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 33
    move-result v0

    .line 36
    sub-float v3, v5, v0

    .line 37
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 39
    if-nez v6, :cond_1

    .line 41
    move-object v6, v2

    .line 43
    :cond_1
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 44
    move-result v6

    .line 47
    neg-int v6, v6

    .line 48
    int-to-float v6, v6

    .line 49
    mul-float/2addr v6, v3

    .line 50
    const v7, 0x3e99999a    # 0.3f

    .line 51
    mul-float/2addr v6, v7

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->isRtl()Z

    .line 55
    move-result v7

    .line 58
    iget-object v8, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->scrollView$com$android$systemui$media$controls$ui$MediaCarouselScrollHandler:Lcom/android/systemui/media/controls/ui/MediaScrollView;

    .line 59
    if-eqz v7, :cond_4

    .line 61
    iget v7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 63
    cmpl-float v7, v7, v4

    .line 65
    if-lez v7, :cond_3

    .line 67
    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .line 69
    move-result v7

    .line 72
    int-to-float v7, v7

    .line 73
    sub-float/2addr v7, v6

    .line 74
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 75
    if-nez v6, :cond_2

    .line 77
    move-object v6, v2

    .line 79
    :cond_2
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 80
    move-result v6

    .line 83
    int-to-float v6, v6

    .line 84
    sub-float/2addr v7, v6

    .line 85
    neg-float v6, v7

    .line 86
    goto :goto_0

    .line 87
    :cond_3
    neg-float v6, v6

    .line 88
    goto :goto_0

    .line 89
    :cond_4
    iget v7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 90
    cmpl-float v7, v7, v4

    .line 92
    if-lez v7, :cond_5

    .line 94
    goto :goto_0

    .line 96
    :cond_5
    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getWidth()I

    .line 97
    move-result v7

    .line 100
    int-to-float v7, v7

    .line 101
    sub-float/2addr v7, v6

    .line 102
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 103
    if-nez v6, :cond_6

    .line 105
    move-object v6, v2

    .line 107
    :cond_6
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    .line 108
    move-result v6

    .line 111
    int-to-float v6, v6

    .line 112
    sub-float v6, v7, v6

    .line 113
    :goto_0
    const/16 v7, 0x32

    .line 115
    int-to-float v7, v7

    .line 117
    mul-float/2addr v3, v7

    .line 118
    iget-object v7, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 119
    if-nez v7, :cond_7

    .line 121
    move-object v7, v2

    .line 123
    :cond_7
    iget v9, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->contentTranslation:F

    .line 124
    invoke-static {v9}, Ljava/lang/Math;->signum(F)F

    .line 126
    move-result v9

    .line 129
    neg-float v9, v9

    .line 130
    mul-float/2addr v3, v9

    .line 131
    invoke-virtual {v7, v3}, Landroid/view/View;->setRotation(F)V

    .line 132
    const/high16 v3, 0x3f000000    # 0.5f

    .line 135
    invoke-static {v3, v5, v4, v5, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 137
    move-result v0

    .line 140
    invoke-static {v0}, Landroid/util/MathUtils;->saturate(F)F

    .line 141
    move-result v0

    .line 144
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 145
    if-nez v3, :cond_8

    .line 147
    move-object v3, v2

    .line 149
    :cond_8
    invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V

    .line 150
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 153
    if-nez v3, :cond_9

    .line 155
    move-object v3, v2

    .line 157
    :cond_9
    cmpg-float v0, v0, v4

    .line 158
    const/4 v4, 0x0

    .line 160
    if-nez v0, :cond_a

    .line 161
    const/4 v0, 0x1

    .line 163
    goto :goto_1

    .line 164
    :cond_a
    move v0, v4

    .line 165
    :goto_1
    if-nez v0, :cond_b

    .line 166
    move v1, v4

    .line 168
    :cond_b
    invoke-virtual {v3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 172
    if-nez v0, :cond_c

    .line 174
    move-object v0, v2

    .line 176
    :cond_c
    invoke-virtual {v0, v6}, Landroid/view/View;->setTranslationX(F)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 180
    if-nez v0, :cond_d

    .line 182
    move-object v0, v2

    .line 184
    :cond_d
    invoke-virtual {v8}, Landroid/widget/HorizontalScrollView;->getHeight()I

    .line 185
    move-result v1

    .line 188
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 189
    if-nez p0, :cond_e

    .line 191
    goto :goto_2

    .line 193
    :cond_e
    move-object v2, p0

    .line 194
    :goto_2
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 195
    move-result p0

    .line 198
    sub-int/2addr v1, p0

    .line 199
    int-to-float p0, v1

    .line 200
    const/high16 v1, 0x40000000    # 2.0f

    .line 201
    div-float/2addr p0, v1

    .line 203
    invoke-virtual {v0, p0}, Landroid/view/View;->setTranslationY(F)V

    .line 204
    goto :goto_4

    .line 207
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->settingsButton:Landroid/view/View;

    .line 208
    if-nez p0, :cond_10

    .line 210
    goto :goto_3

    .line 212
    :cond_10
    move-object v2, p0

    .line 213
    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    :goto_4
    return-void
    .line 217
.end method
