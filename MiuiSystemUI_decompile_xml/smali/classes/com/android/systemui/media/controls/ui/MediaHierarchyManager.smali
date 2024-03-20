.class public final Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public allowMediaPlayerOnLockScreen:Z

.field public animationCrossFadeProgress:F

.field public animationPending:Z

.field public animationStartAlpha:F

.field public final animationStartBounds:Landroid/graphics/Rect;

.field public final animationStartClipping:Landroid/graphics/Rect;

.field public animationStartCrossFadeProgress:F

.field public final animator:Landroid/animation/ValueAnimator;

.field public final bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

.field public carouselAlpha:F

.field public collapsingShadeFromQS:Z

.field public final context:Landroid/content/Context;

.field public crossFadeAnimationEndLocation:I

.field public crossFadeAnimationStartLocation:I

.field public currentAttachmentLocation:I

.field public final currentBounds:Landroid/graphics/Rect;

.field public currentClipping:Landroid/graphics/Rect;

.field public desiredLocation:I

.field public distanceForFullShadeTransition:I

.field public dozeAnimationRunning:Z

.field public dreamMediaComplicationActive:Z

.field public dreamOverlayActive:Z

.field public final dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

.field public fullShadeTransitionProgress:F

.field public fullyAwake:Z

.field public goingToSleep:Z

.field public inSplitShade:Z

.field public isCrossFadeAnimatorRunning:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

.field public final lockScreenMediaPlayerUri:Landroid/net/Uri;

.field public final mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

.field public final mediaHosts:[Lcom/android/systemui/media/controls/ui/MediaHost;

.field public final mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

.field public previousLocation:I

.field public qsExpanded:Z

.field public qsExpansion:F

.field public rootOverlay:Landroid/view/ViewGroupOverlay;

.field public rootView:Landroid/view/View;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public skipQqsOnExpansion:Z

.field public final startAnimation:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$startAnimation$1;

.field public final statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

.field public statusbarState:I

.field public targetBounds:Landroid/graphics/Rect;

.field public targetClipping:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/KeyguardBypassController;Lcom/android/systemui/media/controls/ui/MediaCarouselController;Lcom/android/systemui/media/controls/pipeline/MediaDataManager;Lcom/android/keyguard/KeyguardViewController;Lcom/android/systemui/dreams/DreamOverlayStateController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/shade/ShadeStateEvents;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dreamOverlayStateController:Lcom/android/systemui/dreams/DreamOverlayStateController;

    .line 19
    iput-object p12, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 21
    const/4 p3, 0x1

    .line 23
    iput-boolean p3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    .line 24
    const-string p3, "media_controls_lock_screen"

    .line 26
    invoke-static {p3}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 28
    move-result-object p4

    .line 31
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->lockScreenMediaPlayerUri:Landroid/net/Uri;

    .line 32
    new-instance p4, Landroid/graphics/Rect;

    .line 34
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 36
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 39
    new-instance p4, Landroid/graphics/Rect;

    .line 41
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 43
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    .line 46
    new-instance p4, Landroid/graphics/Rect;

    .line 48
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 50
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    .line 53
    new-instance p4, Landroid/graphics/Rect;

    .line 55
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 57
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 60
    new-instance p4, Landroid/graphics/Rect;

    .line 62
    invoke-direct {p4}, Landroid/graphics/Rect;-><init>()V

    .line 64
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    .line 67
    const/4 p4, -0x1

    .line 69
    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 70
    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 72
    new-instance p6, Landroid/graphics/Rect;

    .line 74
    invoke-direct {p6}, Landroid/graphics/Rect;-><init>()V

    .line 76
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 79
    check-cast p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 81
    iget p6, p2, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 83
    iput p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 85
    const/4 p6, 0x2

    .line 87
    new-array p6, p6, [F

    .line 88
    fill-array-data p6, :array_0

    .line 90
    invoke-static {p6}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 93
    move-result-object p6

    .line 96
    sget-object p7, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 97
    invoke-virtual {p6, p7}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 99
    new-instance p7, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$animator$1$1;

    .line 102
    invoke-direct {p7, p0, p6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$animator$1$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Landroid/animation/ValueAnimator;)V

    .line 104
    invoke-virtual {p6, p7}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    new-instance p7, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$animator$1$2;

    .line 110
    invoke-direct {p7, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$animator$1$2;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 112
    invoke-virtual {p6, p7}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 115
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 118
    const/4 p6, 0x4

    .line 120
    new-array p6, p6, [Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 121
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 123
    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 125
    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 127
    iput p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 129
    new-instance p6, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$startAnimation$1;

    .line 131
    invoke-direct {p6, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$startAnimation$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 133
    iput-object p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$startAnimation$1;

    .line 136
    const/high16 p6, 0x3f800000    # 1.0f

    .line 138
    iput p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 140
    iput p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 142
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 144
    move-result-object p6

    .line 147
    const p7, 0x7f070631    # @dimen/lockscreen_shade_media_transition_distance '120.0dp'

    .line 148
    invoke-virtual {p6, p7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 151
    move-result p6

    .line 154
    iput p6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->distanceForFullShadeTransition:I

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 157
    move-result-object p1

    .line 160
    invoke-static {p1}, Lcom/android/systemui/util/LargeScreenUtils;->shouldUseSplitNotificationShade(Landroid/content/res/Resources;)Z

    .line 161
    move-result p1

    .line 164
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->inSplitShade:Z

    .line 165
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$1;

    .line 167
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 169
    check-cast p9, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 172
    invoke-virtual {p9, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 174
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$2;

    .line 177
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$2;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 179
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 182
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;

    .line 185
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$3;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 187
    invoke-virtual {p8, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    .line 190
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;

    .line 193
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$4;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 195
    iget-object p2, p10, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 198
    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 200
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$5;

    .line 203
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$5;-><init>(Ljava/lang/Object;)V

    .line 205
    iput-object p1, p5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateUserVisibility:Lkotlin/jvm/functions/Function0;

    .line 208
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$6;

    .line 210
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$6;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 212
    iput-object p1, p5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->updateHostVisibility:Lkotlin/jvm/functions/Function0;

    .line 215
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$7;

    .line 217
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$7;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;)V

    .line 219
    check-cast p11, Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 222
    iget-object p2, p11, Lcom/android/systemui/shade/ShadeExpansionStateManager;->shadeStateEventsListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 224
    invoke-virtual {p2, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 226
    new-instance p1, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$settingsObserver$1;

    .line 229
    invoke-direct {p1, p0, p13}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$settingsObserver$1;-><init>(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Landroid/os/Handler;)V

    .line 231
    invoke-interface {p12, p3, p1, p4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;Landroid/database/ContentObserver;I)V

    .line 234
    return-void

    .line 237
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 238
.end method

.method public static final access$setGoingToSleep(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->goingToSleep:Z

    .line 2
    if-eq v0, p1, :cond_0

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->goingToSleep:Z

    .line 6
    if-nez p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    const/4 v0, 0x3

    .line 11
    invoke-static {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public static applyState$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V
    .locals 9

    .line 1
    and-int/lit8 v0, p5, 0x4

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p3, v1

    .line 7
    :cond_0
    and-int/lit8 p5, p5, 0x8

    .line 8
    if-eqz p5, :cond_1

    .line 10
    sget-object p4, Lcom/android/systemui/media/controls/ui/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 12
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const-wide/16 v2, 0x1000

    .line 17
    invoke-static {v2, v3}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 19
    move-result p5

    .line 22
    const/4 v0, 0x1

    .line 23
    iget-object v4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 24
    const/16 v5, -0x3e8

    .line 26
    const/4 v6, -0x1

    .line 28
    const/high16 v7, 0x3f800000    # 1.0f

    .line 29
    iget-object v8, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 31
    if-eqz p5, :cond_b

    .line 33
    const-string p5, "MediaHierarchyManager#applyState"

    .line 35
    invoke-static {v2, v3, p5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 37
    :try_start_0
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 40
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 45
    move-result p1

    .line 48
    if-eqz p1, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    move p2, v7

    .line 52
    :goto_0
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 53
    cmpg-float p1, p1, p2

    .line 55
    if-nez p1, :cond_3

    .line 57
    move p1, v0

    .line 59
    goto :goto_1

    .line 60
    :cond_3
    move p1, v1

    .line 61
    :goto_1
    if-eqz p1, :cond_4

    .line 62
    goto :goto_2

    .line 64
    :cond_4
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 65
    iget-object p1, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 67
    invoke-static {p1, p2, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 69
    :goto_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 72
    move-result p1

    .line 75
    if-eqz p1, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 78
    move-result p1

    .line 81
    if-eqz p1, :cond_6

    .line 82
    :cond_5
    move v1, v0

    .line 84
    :cond_6
    if-eqz v1, :cond_7

    .line 85
    goto :goto_3

    .line 87
    :cond_7
    iget v6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 88
    :goto_3
    if-eqz v1, :cond_8

    .line 90
    goto :goto_4

    .line 92
    :cond_8
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getTransformationProgress()F

    .line 93
    move-result v7

    .line 96
    :goto_4
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->resolveLocationForFading()I

    .line 97
    move-result p1

    .line 100
    invoke-virtual {v4, v7, v6, p1, p3}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->setCurrentState(FIIZ)V

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateHostAttachment()V

    .line 104
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 107
    if-ne p1, v5, :cond_a

    .line 109
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 113
    move-result p1

    .line 116
    if-nez p1, :cond_9

    .line 117
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 119
    invoke-virtual {v8, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 121
    :cond_9
    iget-object p0, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 124
    iget p1, v8, Landroid/graphics/Rect;->left:I

    .line 126
    iget p2, v8, Landroid/graphics/Rect;->top:I

    .line 128
    iget p3, v8, Landroid/graphics/Rect;->right:I

    .line 130
    iget p4, v8, Landroid/graphics/Rect;->bottom:I

    .line 132
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 134
    :cond_a
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 137
    goto/16 :goto_a

    .line 140
    :catchall_0
    move-exception p0

    .line 142
    invoke-static {v2, v3}, Landroid/os/Trace;->traceEnd(J)V

    .line 143
    throw p0

    .line 146
    :cond_b
    invoke-virtual {v8, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 147
    iput-object p4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 150
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 152
    move-result p1

    .line 155
    if-eqz p1, :cond_c

    .line 156
    goto :goto_5

    .line 158
    :cond_c
    move p2, v7

    .line 159
    :goto_5
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 160
    cmpg-float p1, p1, p2

    .line 162
    if-nez p1, :cond_d

    .line 164
    move p1, v0

    .line 166
    goto :goto_6

    .line 167
    :cond_d
    move p1, v1

    .line 168
    :goto_6
    if-eqz p1, :cond_e

    .line 169
    goto :goto_7

    .line 171
    :cond_e
    iput p2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 172
    iget-object p1, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 174
    invoke-static {p1, p2, v1}, Lcom/android/systemui/statusbar/CrossFadeHelper;->fadeIn(Landroid/view/View;FZ)V

    .line 176
    :goto_7
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 179
    move-result p1

    .line 182
    if-eqz p1, :cond_f

    .line 183
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 185
    move-result p1

    .line 188
    if-eqz p1, :cond_10

    .line 189
    :cond_f
    move v1, v0

    .line 191
    :cond_10
    if-eqz v1, :cond_11

    .line 192
    goto :goto_8

    .line 194
    :cond_11
    iget v6, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 195
    :goto_8
    if-eqz v1, :cond_12

    .line 197
    goto :goto_9

    .line 199
    :cond_12
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getTransformationProgress()F

    .line 200
    move-result v7

    .line 203
    :goto_9
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->resolveLocationForFading()I

    .line 204
    move-result p1

    .line 207
    invoke-virtual {v4, v7, v6, p1, p3}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->setCurrentState(FIIZ)V

    .line 208
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateHostAttachment()V

    .line 211
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 214
    if-ne p1, v5, :cond_14

    .line 216
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 218
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    .line 220
    move-result p1

    .line 223
    if-nez p1, :cond_13

    .line 224
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 226
    invoke-virtual {v8, p0}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 228
    :cond_13
    iget p0, v8, Landroid/graphics/Rect;->left:I

    .line 231
    iget p1, v8, Landroid/graphics/Rect;->top:I

    .line 233
    iget p2, v8, Landroid/graphics/Rect;->right:I

    .line 235
    iget p3, v8, Landroid/graphics/Rect;->bottom:I

    .line 237
    iget-object p4, v4, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 239
    invoke-virtual {p4, p0, p1, p2, p3}, Landroid/view/ViewGroup;->setLeftTopRightBottom(IIII)V

    .line 241
    :cond_14
    :goto_a
    return-void
    .line 244
.end method

.method public static interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 4

    .line 1
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 2
    int-to-float v0, v0

    .line 4
    iget v1, p1, Landroid/graphics/Rect;->left:I

    .line 5
    int-to-float v1, v1

    .line 7
    invoke-static {v0, v1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 8
    move-result v0

    .line 11
    float-to-int v0, v0

    .line 12
    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 13
    int-to-float v1, v1

    .line 15
    iget v2, p1, Landroid/graphics/Rect;->top:I

    .line 16
    int-to-float v2, v2

    .line 18
    invoke-static {v1, v2, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 19
    move-result v1

    .line 22
    float-to-int v1, v1

    .line 23
    iget v2, p0, Landroid/graphics/Rect;->right:I

    .line 24
    int-to-float v2, v2

    .line 26
    iget v3, p1, Landroid/graphics/Rect;->right:I

    .line 27
    int-to-float v3, v3

    .line 29
    invoke-static {v2, v3, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 30
    move-result v2

    .line 33
    float-to-int v2, v2

    .line 34
    iget p0, p0, Landroid/graphics/Rect;->bottom:I

    .line 35
    int-to-float p0, p0

    .line 37
    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    .line 38
    int-to-float p1, p1

    .line 40
    invoke-static {p0, p1, p2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 41
    move-result p0

    .line 44
    float-to-int p0, p0

    .line 45
    if-nez p3, :cond_0

    .line 46
    new-instance p3, Landroid/graphics/Rect;

    .line 48
    invoke-direct {p3}, Landroid/graphics/Rect;-><init>()V

    .line 50
    :cond_0
    invoke-virtual {p3, v0, v1, v2, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 53
    return-object p3
    .line 56
.end method

.method public static synthetic updateDesiredLocation$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;ZI)V
    .locals 1

    .line 1
    and-int/lit8 p2, p2, 0x1

    .line 2
    const/4 v0, 0x0

    .line 4
    if-eqz p2, :cond_0

    .line 5
    move p1, v0

    .line 7
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateDesiredLocation(ZZ)V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final adjustAnimatorForTransition(II)V
    .locals 2

    .line 1
    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Ljava/lang/Number;

    .line 10
    invoke-virtual {p2}, Ljava/lang/Number;->longValue()J

    .line 12
    move-result-wide v0

    .line 15
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 16
    move-result-object p1

    .line 19
    check-cast p1, Ljava/lang/Number;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Number;->longValue()J

    .line 22
    move-result-wide p1

    .line 25
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 26
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setStartDelay(J)V

    .line 31
    return-void
    .line 34
.end method

.method public final applyTargetStateIfNotAnimating()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 10
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 12
    const/4 v4, 0x0

    .line 14
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    .line 15
    const/4 v6, 0x4

    .line 17
    move-object v1, p0

    .line 18
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public final areGuidedTransitionHostsVisible()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 12
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 14
    if-ne v0, v1, :cond_0

    .line 16
    move v0, v1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v2

    .line 20
    :goto_0
    if-eqz v0, :cond_2

    .line 21
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 23
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 25
    move-result-object p0

    .line 28
    if-eqz p0, :cond_1

    .line 29
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 33
    if-ne p0, v1, :cond_1

    .line 35
    move p0, v1

    .line 37
    goto :goto_1

    .line 38
    :cond_1
    move p0, v2

    .line 39
    :goto_1
    if-eqz p0, :cond_2

    .line 40
    goto :goto_2

    .line 42
    :cond_2
    move v1, v2

    .line 43
    :goto_2
    return v1
    .line 44
.end method

.method public final calculateTransformationType()I
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitioningToFullShade()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->inSplitShade:Z

    .line 10
    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->areGuidedTransitionHostsVisible()Z

    .line 14
    move-result p0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    return v1

    .line 20
    :cond_0
    return v2

    .line 21
    :cond_1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 22
    const/4 v3, 0x2

    .line 24
    if-ne v0, v3, :cond_2

    .line 25
    iget v4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 27
    if-eqz v4, :cond_3

    .line 29
    :cond_2
    if-nez v0, :cond_4

    .line 31
    iget v4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 33
    if-ne v4, v3, :cond_4

    .line 35
    :cond_3
    return v2

    .line 37
    :cond_4
    if-ne v0, v3, :cond_5

    .line 38
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 40
    if-ne p0, v2, :cond_5

    .line 42
    return v2

    .line 44
    :cond_5
    return v1
    .line 45
.end method

.method public final cancelAnimationAndApplyDesiredState()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 4
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 7
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v2

    .line 18
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    const/4 v4, 0x1

    .line 21
    const/4 v5, 0x0

    .line 22
    const/16 v6, 0x8

    .line 23
    move-object v1, p0

    .line 25
    invoke-static/range {v1 .. v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->applyState$default(Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;Landroid/graphics/Rect;FZLandroid/graphics/Rect;I)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final getAnimationParams(II)Lkotlin/Pair;
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    const/4 v3, 0x2

    .line 5
    if-ne p1, v3, :cond_1

    .line 6
    if-ne p2, v0, :cond_1

    .line 8
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 10
    if-nez p1, :cond_0

    .line 12
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 14
    move-object p1, p0

    .line 16
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 17
    iget-boolean p1, p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAway:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 23
    iget-wide p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardFadingAwayDelay:J

    .line 25
    move-wide v1, p0

    .line 27
    :cond_0
    const-wide/16 p0, 0xe0

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    if-ne p1, v0, :cond_2

    .line 31
    if-ne p2, v3, :cond_2

    .line 33
    const-wide/16 p0, 0x1d0

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    const-wide/16 p0, 0xc8

    .line 38
    :goto_0
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 44
    move-result-object p1

    .line 47
    new-instance p2, Lkotlin/Pair;

    .line 48
    invoke-direct {p2, p0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    return-object p2
    .line 53
.end method

.method public final getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;
    .locals 0

    .line 1
    if-gez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaHosts:[Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 6
    aget-object p0, p0, p1

    .line 8
    return-object p0
    .line 10
.end method

.method public final getQSTransformationProgress()F
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 10
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->location:I

    .line 18
    if-nez v0, :cond_0

    .line 20
    move v0, v2

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v0, v3

    .line 24
    :goto_0
    if-eqz v0, :cond_3

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->inSplitShade:Z

    .line 27
    if-nez v0, :cond_3

    .line 29
    if-eqz v1, :cond_1

    .line 31
    iget v0, v1, Lcom/android/systemui/media/controls/ui/MediaHost;->location:I

    .line 33
    if-ne v0, v2, :cond_1

    .line 35
    move v3, v2

    .line 37
    :cond_1
    if-eqz v3, :cond_3

    .line 38
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 40
    iget-boolean v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 42
    if-nez v0, :cond_2

    .line 44
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 46
    if-eq v0, v2, :cond_3

    .line 48
    :cond_2
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpansion:F

    .line 50
    return p0

    .line 52
    :cond_3
    const/high16 p0, -0x40800000    # -1.0f

    .line 53
    return p0
    .line 55
.end method

.method public final getTransformationProgress()F
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->skipQqsOnExpansion:Z

    .line 2
    const/high16 v1, -0x40800000    # -1.0f

    .line 4
    if-eqz v0, :cond_0

    .line 6
    return v1

    .line 8
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getQSTransformationProgress()F

    .line 9
    move-result v0

    .line 12
    iget v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 13
    const/4 v3, 0x1

    .line 15
    if-eq v2, v3, :cond_1

    .line 16
    const/4 v2, 0x0

    .line 18
    cmpl-float v2, v0, v2

    .line 19
    if-ltz v2, :cond_1

    .line 21
    return v0

    .line 23
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitioningToFullShade()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullShadeTransitionProgress:F

    .line 30
    return p0

    .line 32
    :cond_2
    return v1
    .line 33
.end method

.method public final isCurrentlyFading()Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->inSplitShade:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitioningToFullShade()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    move v0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v2

    .line 16
    :goto_0
    if-eqz v0, :cond_1

    .line 17
    return v2

    .line 19
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitioningToFullShade()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_2

    .line 24
    return v1

    .line 26
    :cond_2
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 27
    return p0
    .line 29
.end method

.method public final isCurrentlyInGuidedTransformation()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, -0x1

    .line 6
    if-eq v0, v3, :cond_0

    .line 7
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 9
    if-eq v0, v3, :cond_0

    .line 11
    move v0, v1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v2

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getTransformationProgress()F

    .line 18
    move-result v0

    .line 21
    const/4 v3, 0x0

    .line 22
    cmpl-float v0, v0, v3

    .line 23
    if-ltz v0, :cond_1

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->areGuidedTransitionHostsVisible()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 35
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    move v1, v2

    .line 42
    :cond_2
    :goto_1
    return v1
    .line 43
.end method

.method public final isHomeScreenShadeVisibleToUser()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 5
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 7
    if-nez v0, :cond_0

    .line 9
    move-object v0, p0

    .line 11
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 12
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 14
    if-nez v0, :cond_0

    .line 16
    check-cast p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 18
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    .line 20
    if-eqz p0, :cond_0

    .line 22
    const/4 p0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 p0, 0x0

    .line 26
    :goto_0
    return p0
    .line 27
.end method

.method public final isLockScreenShadeVisibleToUser()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 22
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 24
    const/4 v2, 0x2

    .line 26
    const/4 v3, 0x1

    .line 27
    if-eq v1, v2, :cond_1

    .line 28
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 30
    iget v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 32
    if-ne v0, v3, :cond_0

    .line 34
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpanded:Z

    .line 36
    if-eqz p0, :cond_0

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    const/4 v3, 0x0

    .line 41
    :cond_1
    :goto_0
    return v3
    .line 42
.end method

.method public final isLockScreenVisibleToUser()Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusBarStateController:Lcom/android/systemui/statusbar/SysuiStatusBarStateController;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 5
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsDozing:Z

    .line 7
    if-nez v1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->keyguardViewController:Lcom/android/keyguard/KeyguardViewController;

    .line 11
    check-cast v1, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 13
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->isBouncerShowing()Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_0

    .line 19
    move-object v1, v0

    .line 21
    check-cast v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 22
    iget v1, v1, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mState:I

    .line 24
    const/4 v2, 0x1

    .line 26
    if-ne v1, v2, :cond_0

    .line 27
    iget-boolean v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->allowMediaPlayerOnLockScreen:Z

    .line 29
    if-eqz v1, :cond_0

    .line 31
    check-cast v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 33
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->mIsExpanded:Z

    .line 35
    if-eqz v0, :cond_0

    .line 37
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpanded:Z

    .line 39
    if-nez p0, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    const/4 v2, 0x0

    .line 44
    :goto_0
    return v2
    .line 45
.end method

.method public final isTransitionRunning()Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getTransformationProgress()F

    .line 10
    move-result v0

    .line 13
    const/high16 v3, 0x3f800000    # 1.0f

    .line 14
    cmpg-float v0, v0, v3

    .line 16
    if-nez v0, :cond_0

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-eqz v0, :cond_2

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 25
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_2

    .line 31
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 33
    if-eqz p0, :cond_3

    .line 35
    :cond_2
    move v1, v2

    .line 37
    :cond_3
    return v1
    .line 38
.end method

.method public final isTransitioningToFullShade()Z
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->fullShadeTransitionProgress:F

    .line 2
    const/4 v1, 0x0

    .line 4
    cmpg-float v0, v0, v1

    .line 5
    const/4 v1, 0x0

    .line 7
    const/4 v2, 0x1

    .line 8
    if-nez v0, :cond_0

    .line 9
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v1

    .line 13
    :goto_0
    if-nez v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 24
    if-ne p0, v2, :cond_1

    .line 26
    move v1, v2

    .line 28
    :cond_1
    return v1
    .line 29
.end method

.method public final performTransitionToNewLocation(ZZ)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-wide/16 v1, 0x1000

    .line 4
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 6
    move-result v3

    .line 9
    iget-object v5, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->startAnimation:Lcom/android/systemui/media/controls/ui/MediaHierarchyManager$startAnimation$1;

    .line 10
    const/high16 v6, 0x40000000    # 2.0f

    .line 12
    const/4 v7, 0x0

    .line 14
    iget-object v8, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentBounds:Landroid/graphics/Rect;

    .line 15
    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 17
    iget-object v10, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartClipping:Landroid/graphics/Rect;

    .line 19
    iget-object v11, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartBounds:Landroid/graphics/Rect;

    .line 21
    const/high16 v12, 0x3f800000    # 1.0f

    .line 23
    const/4 v13, 0x1

    .line 25
    if-eqz v3, :cond_e

    .line 26
    const-string v3, "MediaHierarchyManager#performTransitionToNewLocation"

    .line 28
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 30
    :try_start_0
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 33
    if-ltz v3, :cond_d

    .line 35
    if-eqz p1, :cond_0

    .line 37
    goto/16 :goto_6

    .line 39
    :cond_0
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 41
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 43
    move-result-object v3

    .line 46
    iget v14, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 47
    invoke-virtual {v0, v14}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 49
    move-result-object v14

    .line 52
    if-eqz v3, :cond_c

    .line 53
    if-nez v14, :cond_1

    .line 55
    goto/16 :goto_5

    .line 57
    :cond_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateTargetState()V

    .line 59
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 62
    move-result v3

    .line 65
    if-eqz v3, :cond_2

    .line 66
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    .line 68
    goto/16 :goto_4

    .line 71
    :cond_2
    if-eqz p2, :cond_a

    .line 73
    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 75
    iget v15, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 77
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    iget v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 82
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 84
    if-ne v9, v4, :cond_4

    .line 86
    invoke-virtual {v14}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 88
    move-result-object v4

    .line 91
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 92
    move-result v4

    .line 95
    if-nez v4, :cond_3

    .line 96
    goto :goto_0

    .line 98
    :cond_3
    invoke-virtual {v14}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 99
    move-result-object v4

    .line 102
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 103
    iget-object v4, v14, Lcom/android/systemui/media/controls/ui/MediaHost;->currentClipping:Landroid/graphics/Rect;

    .line 106
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 108
    goto :goto_1

    .line 111
    :cond_4
    :goto_0
    invoke-virtual {v11, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 112
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 115
    invoke-virtual {v10, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 117
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->calculateTransformationType()I

    .line 120
    move-result v4

    .line 123
    if-ne v4, v13, :cond_5

    .line 124
    move v7, v13

    .line 126
    :cond_5
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 127
    if-eqz v3, :cond_8

    .line 129
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 131
    iget v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 133
    if-ne v3, v6, :cond_6

    .line 135
    if-eqz v7, :cond_9

    .line 137
    sub-float/2addr v12, v15

    .line 139
    goto :goto_2

    .line 140
    :cond_6
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 141
    iget v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 143
    if-ne v3, v6, :cond_7

    .line 145
    sub-float v6, v12, v15

    .line 147
    move v15, v6

    .line 149
    goto :goto_3

    .line 150
    :cond_7
    move v7, v13

    .line 151
    goto :goto_3

    .line 152
    :cond_8
    if-eqz v7, :cond_9

    .line 153
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 155
    sub-float/2addr v12, v3

    .line 157
    div-float/2addr v12, v6

    .line 158
    :goto_2
    move v3, v4

    .line 159
    move v15, v12

    .line 160
    goto :goto_3

    .line 161
    :cond_9
    move v3, v4

    .line 162
    const/4 v15, 0x0

    .line 163
    :goto_3
    iput-boolean v7, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 164
    iput v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 166
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 168
    iput v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 170
    iget v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 172
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartAlpha:F

    .line 174
    iput v15, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    .line 176
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->adjustAnimatorForTransition(II)V

    .line 178
    iget-boolean v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 181
    if-nez v3, :cond_b

    .line 183
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootView:Landroid/view/View;

    .line 185
    if-eqz v3, :cond_b

    .line 187
    iput-boolean v13, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 189
    invoke-virtual {v3, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 191
    goto :goto_4

    .line 194
    :cond_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 195
    :cond_b
    :goto_4
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 198
    goto/16 :goto_b

    .line 201
    :cond_c
    :goto_5
    :try_start_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 203
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 206
    return-void

    .line 209
    :cond_d
    :goto_6
    :try_start_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 210
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 213
    return-void

    .line 216
    :catchall_0
    move-exception v0

    .line 217
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 218
    throw v0

    .line 221
    :cond_e
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 222
    if-ltz v1, :cond_1c

    .line 224
    if-eqz p1, :cond_f

    .line 226
    goto/16 :goto_d

    .line 228
    :cond_f
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 230
    invoke-virtual {v0, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 232
    move-result-object v1

    .line 235
    iget v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 236
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 238
    move-result-object v2

    .line 241
    if-eqz v1, :cond_1b

    .line 242
    if-nez v2, :cond_10

    .line 244
    goto/16 :goto_c

    .line 246
    :cond_10
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateTargetState()V

    .line 248
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 251
    move-result v1

    .line 254
    if-eqz v1, :cond_11

    .line 255
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->applyTargetStateIfNotAnimating()V

    .line 257
    goto/16 :goto_b

    .line 260
    :cond_11
    if-eqz p2, :cond_19

    .line 262
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 264
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 266
    invoke-virtual {v9}, Landroid/animation/ValueAnimator;->cancel()V

    .line 268
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 271
    iget v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 273
    if-ne v4, v9, :cond_13

    .line 275
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 277
    move-result-object v4

    .line 280
    invoke-virtual {v4}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 281
    move-result v4

    .line 284
    if-nez v4, :cond_12

    .line 285
    goto :goto_7

    .line 287
    :cond_12
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 288
    move-result-object v4

    .line 291
    invoke-virtual {v11, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 292
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaHost;->currentClipping:Landroid/graphics/Rect;

    .line 295
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 297
    goto :goto_8

    .line 300
    :cond_13
    :goto_7
    invoke-virtual {v11, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 301
    iget-object v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentClipping:Landroid/graphics/Rect;

    .line 304
    invoke-virtual {v10, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 306
    :goto_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->calculateTransformationType()I

    .line 309
    move-result v2

    .line 312
    if-ne v2, v13, :cond_14

    .line 313
    move v7, v13

    .line 315
    :cond_14
    iget v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 316
    if-eqz v1, :cond_17

    .line 318
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 320
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 322
    if-ne v1, v4, :cond_15

    .line 324
    if-eqz v7, :cond_18

    .line 326
    sub-float/2addr v12, v3

    .line 328
    goto :goto_9

    .line 329
    :cond_15
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 330
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 332
    if-ne v1, v4, :cond_16

    .line 334
    sub-float v4, v12, v3

    .line 336
    goto :goto_a

    .line 338
    :cond_16
    move v4, v3

    .line 339
    move v7, v13

    .line 340
    goto :goto_a

    .line 341
    :cond_17
    if-eqz v7, :cond_18

    .line 342
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 344
    sub-float/2addr v12, v1

    .line 346
    div-float/2addr v12, v6

    .line 347
    :goto_9
    move v4, v12

    .line 348
    move v1, v2

    .line 349
    goto :goto_a

    .line 350
    :cond_18
    move v1, v2

    .line 351
    const/4 v4, 0x0

    .line 352
    :goto_a
    iput-boolean v7, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 353
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 355
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 357
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 359
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->carouselAlpha:F

    .line 361
    iput v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartAlpha:F

    .line 363
    iput v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationStartCrossFadeProgress:F

    .line 365
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->adjustAnimatorForTransition(II)V

    .line 367
    iget-boolean v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 370
    if-nez v1, :cond_1a

    .line 372
    iget-object v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootView:Landroid/view/View;

    .line 374
    if-eqz v1, :cond_1a

    .line 376
    iput-boolean v13, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 378
    invoke-virtual {v1, v5}, Landroid/view/View;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 380
    goto :goto_b

    .line 383
    :cond_19
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    .line 384
    :cond_1a
    :goto_b
    return-void

    .line 387
    :cond_1b
    :goto_c
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    .line 388
    return-void

    .line 391
    :cond_1c
    :goto_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->cancelAnimationAndApplyDesiredState()V

    .line 392
    return-void
    .line 395
.end method

.method public final resolveLocationForFading()I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationCrossFadeProgress:F

    .line 6
    float-to-double v0, v0

    .line 8
    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    .line 9
    cmpl-double v0, v0, v2

    .line 11
    if-gtz v0, :cond_1

    .line 13
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 15
    const/4 v1, -0x1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationStartLocation:I

    .line 21
    return p0

    .line 23
    :cond_1
    :goto_0
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->crossFadeAnimationEndLocation:I

    .line 24
    return p0

    .line 26
    :cond_2
    iget p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 27
    return p0
    .line 29
.end method

.method public final setQsExpanded(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpanded:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 4
    if-eq v0, p1, :cond_0

    .line 6
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpanded:Z

    .line 8
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 10
    iput-boolean p1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->qsExpanded:Z

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    .line 16
    move-result v0

    .line 19
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_2

    .line 26
    :cond_1
    invoke-virtual {v1, p1}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->logSmartspaceImpression(Z)V

    .line 28
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->updateUserVisibility()V

    .line 31
    return-void
    .line 34
.end method

.method public final shouldAnimateTransition(I)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->skipQqsOnExpansion:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    return v1

    .line 14
    :cond_1
    const/4 v0, 0x1

    .line 15
    const/4 v2, 0x2

    .line 16
    if-ne p1, v2, :cond_2

    .line 17
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 19
    if-ne v3, v0, :cond_2

    .line 21
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 23
    if-nez v3, :cond_2

    .line 25
    return v1

    .line 27
    :cond_2
    iget v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 28
    if-nez v3, :cond_3

    .line 30
    if-ne p1, v2, :cond_3

    .line 32
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 34
    if-nez p1, :cond_3

    .line 36
    return v1

    .line 38
    :cond_3
    iget p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->statusbarState:I

    .line 39
    if-ne p1, v0, :cond_4

    .line 41
    return v1

    .line 43
    :cond_4
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 44
    iget-object p1, p1, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 46
    sget-object v2, Lcom/android/systemui/media/controls/ui/MediaHierarchyManagerKt;->EMPTY_RECT:Landroid/graphics/Rect;

    .line 48
    :goto_0
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    .line 50
    move-result v2

    .line 53
    if-eqz v2, :cond_5

    .line 54
    goto :goto_2

    .line 56
    :cond_5
    invoke-virtual {p1}, Landroid/view/View;->getAlpha()F

    .line 57
    move-result v2

    .line 60
    const/4 v3, 0x0

    .line 61
    cmpg-float v2, v2, v3

    .line 62
    if-nez v2, :cond_6

    .line 64
    move v2, v0

    .line 66
    goto :goto_1

    .line 67
    :cond_6
    move v2, v1

    .line 68
    :goto_1
    if-eqz v2, :cond_7

    .line 69
    goto :goto_2

    .line 71
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 72
    move-result-object p1

    .line 75
    if-nez p1, :cond_8

    .line 76
    :goto_2
    move p1, v1

    .line 78
    goto :goto_3

    .line 79
    :cond_8
    instance-of v2, p1, Landroid/view/View;

    .line 80
    if-nez v2, :cond_b

    .line 82
    move p1, v0

    .line 84
    :goto_3
    if-nez p1, :cond_9

    .line 85
    iget-object p1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animator:Landroid/animation/ValueAnimator;

    .line 87
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 89
    move-result p1

    .line 92
    if-nez p1, :cond_9

    .line 93
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->animationPending:Z

    .line 95
    if-eqz p0, :cond_a

    .line 97
    :cond_9
    move v1, v0

    .line 99
    :cond_a
    return v1

    .line 100
    :cond_b
    check-cast p1, Landroid/view/View;

    .line 101
    goto :goto_0
    .line 103
.end method

.method public final updateDesiredLocation(ZZ)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    const-wide/16 v1, 0x1000

    .line 4
    invoke-static {v1, v2}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 6
    move-result v3

    .line 9
    iget-object v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->bypassController:Lcom/android/systemui/statusbar/phone/KeyguardBypassController;

    .line 10
    const/4 v5, -0x1

    .line 12
    const/4 v6, 0x2

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x1

    .line 15
    if-eqz v3, :cond_b

    .line 16
    const-string v3, "MediaHierarchyManager#updateDesiredLocation"

    .line 18
    invoke-static {v1, v2, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    :try_start_0
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 23
    if-ne v6, v3, :cond_2

    .line 25
    if-eqz p2, :cond_a

    .line 27
    iget-boolean v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->goingToSleep:Z

    .line 29
    if-nez v9, :cond_1

    .line 31
    iget-boolean v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dozeAnimationRunning:Z

    .line 33
    if-eqz v9, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    move v9, v7

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    :goto_0
    move v9, v8

    .line 40
    :goto_1
    if-nez v9, :cond_a

    .line 41
    :cond_2
    if-ltz v3, :cond_3

    .line 43
    if-eq v6, v3, :cond_3

    .line 45
    iput v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 47
    goto :goto_2

    .line 49
    :cond_3
    if-eqz p2, :cond_4

    .line 50
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 52
    move-result v3

    .line 55
    :cond_4
    :goto_2
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 56
    if-ne v3, v5, :cond_5

    .line 58
    move v3, v8

    .line 60
    goto :goto_3

    .line 61
    :cond_5
    move v3, v7

    .line 62
    :goto_3
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 63
    if-nez p1, :cond_6

    .line 65
    iget v4, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 67
    invoke-virtual {v0, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->shouldAnimateTransition(I)Z

    .line 69
    move-result v4

    .line 72
    if-eqz v4, :cond_6

    .line 73
    move v4, v8

    .line 75
    goto :goto_4

    .line 76
    :cond_6
    move v4, v7

    .line 77
    :goto_4
    iget v5, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 78
    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    .line 80
    move-result-object v5

    .line 83
    invoke-virtual {v5}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 84
    move-result-object v9

    .line 87
    check-cast v9, Ljava/lang/Number;

    .line 88
    invoke-virtual {v9}, Ljava/lang/Number;->longValue()J

    .line 90
    move-result-wide v13

    .line 93
    invoke-virtual {v5}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 94
    move-result-object v5

    .line 97
    check-cast v5, Ljava/lang/Number;

    .line 98
    invoke-virtual {v5}, Ljava/lang/Number;->longValue()J

    .line 100
    move-result-wide v15

    .line 103
    invoke-virtual {v0, v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 104
    move-result-object v11

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->calculateTransformationType()I

    .line 108
    move-result v5

    .line 111
    if-ne v5, v8, :cond_7

    .line 112
    move v7, v8

    .line 114
    :cond_7
    if-eqz v7, :cond_8

    .line 115
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 117
    move-result v5

    .line 120
    if-nez v5, :cond_8

    .line 121
    if-nez v4, :cond_9

    .line 123
    :cond_8
    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 125
    const/4 v10, 0x2

    .line 127
    move v12, v4

    .line 128
    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;ZJJ)Lkotlin/Unit;

    .line 129
    :cond_9
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 132
    :cond_a
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 135
    goto/16 :goto_a

    .line 138
    :catchall_0
    move-exception v0

    .line 140
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 141
    throw v0

    .line 144
    :cond_b
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 145
    if-ne v6, v1, :cond_e

    .line 147
    if-eqz p2, :cond_16

    .line 149
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->goingToSleep:Z

    .line 151
    if-nez v2, :cond_d

    .line 153
    iget-boolean v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->dozeAnimationRunning:Z

    .line 155
    if-eqz v2, :cond_c

    .line 157
    goto :goto_5

    .line 159
    :cond_c
    move v2, v7

    .line 160
    goto :goto_6

    .line 161
    :cond_d
    :goto_5
    move v2, v8

    .line 162
    :goto_6
    if-nez v2, :cond_16

    .line 163
    :cond_e
    if-ltz v1, :cond_f

    .line 165
    if-eq v6, v1, :cond_f

    .line 167
    iput v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 169
    goto :goto_7

    .line 171
    :cond_f
    if-eqz p2, :cond_10

    .line 172
    invoke-virtual {v4}, Lcom/android/systemui/statusbar/phone/KeyguardBypassController;->getBypassEnabled()Z

    .line 174
    :cond_10
    :goto_7
    iget v1, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 177
    if-ne v1, v5, :cond_11

    .line 179
    move v1, v8

    .line 181
    goto :goto_8

    .line 182
    :cond_11
    move v1, v7

    .line 183
    :goto_8
    iput v6, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 184
    if-nez p1, :cond_12

    .line 186
    iget v2, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 188
    invoke-virtual {v0, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->shouldAnimateTransition(I)Z

    .line 190
    move-result v2

    .line 193
    if-eqz v2, :cond_12

    .line 194
    move v2, v8

    .line 196
    goto :goto_9

    .line 197
    :cond_12
    move v2, v7

    .line 198
    :goto_9
    iget v3, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 199
    invoke-virtual {v0, v3, v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getAnimationParams(II)Lkotlin/Pair;

    .line 201
    move-result-object v3

    .line 204
    invoke-virtual {v3}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 205
    move-result-object v4

    .line 208
    check-cast v4, Ljava/lang/Number;

    .line 209
    invoke-virtual {v4}, Ljava/lang/Number;->longValue()J

    .line 211
    move-result-wide v13

    .line 214
    invoke-virtual {v3}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 215
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/Number;

    .line 219
    invoke-virtual {v3}, Ljava/lang/Number;->longValue()J

    .line 221
    move-result-wide v15

    .line 224
    invoke-virtual {v0, v6}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 225
    move-result-object v11

    .line 228
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->calculateTransformationType()I

    .line 229
    move-result v3

    .line 232
    if-ne v3, v8, :cond_13

    .line 233
    move v7, v8

    .line 235
    :cond_13
    if-eqz v7, :cond_14

    .line 236
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 238
    move-result v3

    .line 241
    if-nez v3, :cond_14

    .line 242
    if-nez v2, :cond_15

    .line 244
    :cond_14
    iget-object v9, v0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 246
    const/4 v10, 0x2

    .line 248
    move v12, v2

    .line 249
    invoke-virtual/range {v9 .. v16}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged(ILcom/android/systemui/media/controls/ui/MediaHostState;ZJJ)Lkotlin/Unit;

    .line 250
    :cond_15
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->performTransitionToNewLocation(ZZ)V

    .line 253
    :cond_16
    :goto_a
    return-void
    .line 256
.end method

.method public final updateHostAttachment()V
    .locals 9

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 8
    const/16 v4, -0x3e8

    .line 10
    iget-object v5, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 12
    const/4 v6, 0x1

    .line 14
    const/4 v7, 0x0

    .line 15
    if-eqz v2, :cond_9

    .line 16
    const-string v2, "MediaHierarchyManager#updateHostAttachment"

    .line 18
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 20
    :try_start_0
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->resolveLocationForFading()I

    .line 23
    move-result v2

    .line 26
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 27
    move-result v8

    .line 30
    if-nez v8, :cond_0

    .line 31
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    move v3, v6

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    move v3, v7

    .line 41
    :goto_0
    iget-boolean v8, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 42
    if-eqz v8, :cond_3

    .line 44
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 46
    move-result-object v8

    .line 49
    if-eqz v8, :cond_1

    .line 50
    iget-object v8, v8, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 52
    iget-boolean v8, v8, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 54
    if-ne v8, v6, :cond_1

    .line 56
    move v8, v6

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    move v8, v7

    .line 60
    :goto_1
    if-eqz v8, :cond_3

    .line 61
    invoke-virtual {p0, v2}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 63
    move-result-object v8

    .line 66
    if-eqz v8, :cond_2

    .line 67
    invoke-virtual {v8}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 69
    move-result-object v8

    .line 72
    if-eqz v8, :cond_2

    .line 73
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->isShown()Z

    .line 75
    move-result v8

    .line 78
    if-nez v8, :cond_2

    .line 79
    move v8, v6

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    move v8, v7

    .line 83
    :goto_2
    if-eqz v8, :cond_3

    .line 84
    iget v8, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 86
    if-eq v2, v8, :cond_3

    .line 88
    move v3, v6

    .line 90
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitionRunning()Z

    .line 91
    move-result v8

    .line 94
    if-eqz v8, :cond_4

    .line 95
    iget-object v8, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    .line 97
    if-eqz v8, :cond_4

    .line 99
    if-eqz v3, :cond_4

    .line 101
    goto :goto_3

    .line 103
    :cond_4
    move v6, v7

    .line 104
    :goto_3
    if-eqz v6, :cond_5

    .line 105
    goto :goto_4

    .line 107
    :cond_5
    move v4, v2

    .line 108
    :goto_4
    iget v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 109
    if-eq v2, v4, :cond_8

    .line 111
    iput v4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 113
    iget-object v2, v5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 115
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 117
    move-result-object v2

    .line 120
    check-cast v2, Landroid/view/ViewGroup;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    iget-object v3, v5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 123
    if-eqz v2, :cond_6

    .line 125
    :try_start_1
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 127
    :cond_6
    if-eqz v6, :cond_7

    .line 130
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    .line 132
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 134
    invoke-virtual {v2, v3}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 137
    goto :goto_5

    .line 140
    :cond_7
    invoke-virtual {p0, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 141
    move-result-object v2

    .line 144
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 145
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 148
    move-result-object v2

    .line 151
    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 152
    :goto_5
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 155
    if-eqz v2, :cond_8

    .line 157
    invoke-virtual {p0, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 159
    move-result-object p0

    .line 162
    invoke-static {v5, v4, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;ILcom/android/systemui/media/controls/ui/MediaHostState;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 163
    :cond_8
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 166
    goto/16 :goto_c

    .line 169
    :catchall_0
    move-exception p0

    .line 171
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 172
    throw p0

    .line 175
    :cond_9
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->resolveLocationForFading()I

    .line 176
    move-result v0

    .line 179
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 180
    move-result v1

    .line 183
    if-nez v1, :cond_a

    .line 184
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 186
    move-result v1

    .line 189
    if-eqz v1, :cond_a

    .line 190
    move v1, v6

    .line 192
    goto :goto_6

    .line 193
    :cond_a
    move v1, v7

    .line 194
    :goto_6
    iget-boolean v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 195
    if-eqz v2, :cond_d

    .line 197
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 199
    move-result-object v2

    .line 202
    if-eqz v2, :cond_b

    .line 203
    iget-object v2, v2, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 205
    iget-boolean v2, v2, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 207
    if-ne v2, v6, :cond_b

    .line 209
    move v2, v6

    .line 211
    goto :goto_7

    .line 212
    :cond_b
    move v2, v7

    .line 213
    :goto_7
    if-eqz v2, :cond_d

    .line 214
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 216
    move-result-object v2

    .line 219
    if-eqz v2, :cond_c

    .line 220
    invoke-virtual {v2}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 222
    move-result-object v2

    .line 225
    if-eqz v2, :cond_c

    .line 226
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->isShown()Z

    .line 228
    move-result v2

    .line 231
    if-nez v2, :cond_c

    .line 232
    move v2, v6

    .line 234
    goto :goto_8

    .line 235
    :cond_c
    move v2, v7

    .line 236
    :goto_8
    if-eqz v2, :cond_d

    .line 237
    iget v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 239
    if-eq v0, v2, :cond_d

    .line 241
    move v1, v6

    .line 243
    :cond_d
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isTransitionRunning()Z

    .line 244
    move-result v2

    .line 247
    if-eqz v2, :cond_e

    .line 248
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    .line 250
    if-eqz v2, :cond_e

    .line 252
    if-eqz v1, :cond_e

    .line 254
    goto :goto_9

    .line 256
    :cond_e
    move v6, v7

    .line 257
    :goto_9
    if-eqz v6, :cond_f

    .line 258
    goto :goto_a

    .line 260
    :cond_f
    move v4, v0

    .line 261
    :goto_a
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 262
    if-eq v0, v4, :cond_12

    .line 264
    iput v4, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->currentAttachmentLocation:I

    .line 266
    iget-object v0, v5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 268
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    .line 270
    move-result-object v0

    .line 273
    check-cast v0, Landroid/view/ViewGroup;

    .line 274
    iget-object v1, v5, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaFrame:Landroid/view/ViewGroup;

    .line 276
    if-eqz v0, :cond_10

    .line 278
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 280
    :cond_10
    if-eqz v6, :cond_11

    .line 283
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->rootOverlay:Landroid/view/ViewGroupOverlay;

    .line 285
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 287
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 290
    goto :goto_b

    .line 293
    :cond_11
    invoke-virtual {p0, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 294
    move-result-object v0

    .line 297
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 298
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getHostView()Lcom/android/systemui/util/animation/UniqueObjectHostView;

    .line 301
    move-result-object v0

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 305
    :goto_b
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCrossFadeAnimatorRunning:Z

    .line 308
    if-eqz v0, :cond_12

    .line 310
    invoke-virtual {p0, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 312
    move-result-object p0

    .line 315
    invoke-static {v5, v4, p0}, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->onDesiredLocationChanged$default(Lcom/android/systemui/media/controls/ui/MediaCarouselController;ILcom/android/systemui/media/controls/ui/MediaHostState;)V

    .line 316
    :cond_12
    :goto_c
    return-void
    .line 319
.end method

.method public final updateTargetState()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->previousLocation:I

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 4
    move-result-object v0

    .line 7
    iget v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->desiredLocation:I

    .line 8
    invoke-virtual {p0, v1}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getHost(I)Lcom/android/systemui/media/controls/ui/MediaHost;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyInGuidedTransformation()Z

    .line 14
    move-result v2

    .line 17
    if-eqz v2, :cond_2

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isCurrentlyFading()Z

    .line 20
    move-result v2

    .line 23
    if-nez v2, :cond_2

    .line 24
    if-eqz v0, :cond_2

    .line 26
    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->getTransformationProgress()F

    .line 30
    move-result v2

    .line 33
    iget-object v3, v1, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 34
    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 36
    if-nez v3, :cond_0

    .line 38
    move-object v1, v0

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->state:Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;

    .line 42
    iget-boolean v3, v3, Lcom/android/systemui/media/controls/ui/MediaHost$MediaHostStateHolder;->visible:Z

    .line 44
    if-nez v3, :cond_1

    .line 46
    move-object v0, v1

    .line 48
    goto :goto_0

    .line 49
    :cond_1
    move-object v5, v1

    .line 50
    move-object v1, v0

    .line 51
    move-object v0, v5

    .line 52
    :goto_0
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 53
    move-result-object v3

    .line 56
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 57
    move-result-object v1

    .line 60
    const/4 v4, 0x0

    .line 61
    invoke-static {v1, v3, v2, v4}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->interpolateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 62
    move-result-object v1

    .line 65
    iput-object v1, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/media/controls/ui/MediaHost;->currentClipping:Landroid/graphics/Rect;

    .line 68
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    .line 70
    goto :goto_1

    .line 72
    :cond_2
    if-eqz v1, :cond_3

    .line 73
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/ui/MediaHost;->getCurrentBounds()Landroid/graphics/Rect;

    .line 75
    move-result-object v0

    .line 78
    iget-object v2, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetBounds:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v2, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 81
    iget-object v0, v1, Lcom/android/systemui/media/controls/ui/MediaHost;->currentClipping:Landroid/graphics/Rect;

    .line 84
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->targetClipping:Landroid/graphics/Rect;

    .line 86
    :cond_3
    :goto_1
    return-void
    .line 88
.end method

.method public final updateUserVisibility()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isLockScreenVisibleToUser()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-nez v0, :cond_1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isLockScreenShadeVisibleToUser()Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_1

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->isHomeScreenShadeVisibleToUser()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move v0, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move v0, v2

    .line 25
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->qsExpanded:Z

    .line 26
    if-nez v3, :cond_3

    .line 28
    iget-object v3, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaManager:Lcom/android/systemui/media/controls/pipeline/MediaDataManager;

    .line 30
    invoke-virtual {v3}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager;->hasActiveMediaOrRecommendation()Z

    .line 32
    move-result v3

    .line 35
    if-eqz v3, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    move v3, v1

    .line 39
    goto :goto_3

    .line 40
    :cond_3
    :goto_2
    move v3, v2

    .line 41
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaHierarchyManager;->mediaCarouselController:Lcom/android/systemui/media/controls/ui/MediaCarouselController;

    .line 42
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/MediaCarouselController;->mediaCarouselScrollHandler:Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;

    .line 44
    if-eqz v0, :cond_4

    .line 46
    if-eqz v3, :cond_4

    .line 48
    move v1, v2

    .line 50
    :cond_4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 51
    if-eq v0, v1, :cond_5

    .line 53
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->visibleToUser:Z

    .line 55
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/MiuiMediaCarouselScrollHandler;->seekBarUpdateListener:Lkotlin/jvm/functions/Function1;

    .line 57
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 59
    move-result-object v0

    .line 62
    invoke-interface {p0, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    :cond_5
    return-void
    .line 66
.end method
