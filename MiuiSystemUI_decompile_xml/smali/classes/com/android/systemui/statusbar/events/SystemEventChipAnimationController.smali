.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/events/SystemStatusAnimationCallback;


# instance fields
.field public final animRect:Landroid/graphics/Rect;

.field public animationDirection:I

.field public animationWindowView:Landroid/widget/FrameLayout;

.field public chipBounds:Landroid/graphics/Rect;

.field public final chipMinWidth:I

.field public final contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public final context:Landroid/content/Context;

.field public currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

.field public final dotSize:I

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public initialized:Z

.field public final statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

.field public themedContext:Landroid/view/ContextThemeWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/window/StatusBarWindowController;Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    const/4 p2, 0x1

    .line 13
    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    .line 14
    new-instance p2, Landroid/graphics/Rect;

    .line 16
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 18
    iput-object p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 21
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object p2

    .line 26
    const p3, 0x7f070e2b    # @dimen/ongoing_appops_chip_min_animation_width '10.0dp'

    .line 27
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 30
    move-result p2

    .line 33
    iput p2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    .line 34
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object p1

    .line 39
    const p2, 0x7f070e32    # @dimen/ongoing_appops_dot_diameter '6.5454dp'

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 43
    move-result p1

    .line 46
    iput p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    .line 47
    new-instance p1, Landroid/graphics/Rect;

    .line 49
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 51
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 54
    return-void
    .line 56
.end method

.method public static final access$updateAnimatedViewBoundsWidth(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;I)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    .line 2
    const/4 v1, 0x1

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 5
    if-ne v0, v1, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 9
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 11
    sub-int p1, v0, p1

    .line 13
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 15
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 17
    invoke-virtual {v2, p1, v1, v0, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 23
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 25
    iget v1, v2, Landroid/graphics/Rect;->top:I

    .line 27
    add-int/2addr p1, v0

    .line 29
    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 30
    invoke-virtual {v2, v0, v1, p1, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 32
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 35
    if-eqz p0, :cond_1

    .line 37
    iget p1, v2, Landroid/graphics/Rect;->left:I

    .line 39
    iget v0, v2, Landroid/graphics/Rect;->top:I

    .line 41
    iget v1, v2, Landroid/graphics/Rect;->right:I

    .line 43
    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    .line 45
    invoke-interface {p0, p1, v0, v1, v2}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->setBoundsForAnimation(IIII)V

    .line 47
    :cond_1
    return-void
    .line 50
.end method


# virtual methods
.method public final initializeAnimRect()V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 2
    sget-object v0, Lcom/android/systemui/flags/Flags;->PLUG_IN_STATUS_BAR_CHIP:Lcom/android/systemui/flags/ReleasedFlag;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 6
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 8
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 10
    move-result v0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animRect:Landroid/graphics/Rect;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v1, p0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 24
    iget v0, v0, Landroid/graphics/Rect;->left:I

    .line 26
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 28
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 30
    invoke-interface {v2}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 37
    move-result v2

    .line 40
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 41
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 43
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 45
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    invoke-interface {p0}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 54
    move-result p0

    .line 57
    invoke-virtual {v1, v0, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 58
    :goto_0
    return-void
    .line 61
.end method

.method public final onSystemEventAnimationBegin()Landroidx/core/animation/Animator;
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initializeAnimRect()V

    .line 2
    const/4 v0, 0x2

    .line 5
    new-array v1, v0, [F

    .line 6
    fill-array-data v1, :array_0

    .line 8
    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 11
    move-result-object v1

    .line 14
    const/4 v2, 0x7

    .line 15
    invoke-static {v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 16
    move-result-wide v3

    .line 19
    invoke-virtual {v1, v3, v4}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 20
    const/4 v3, 0x5

    .line 23
    invoke-static {v3}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 24
    move-result-wide v3

    .line 27
    invoke-virtual {v1, v3, v4}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 28
    const/4 v3, 0x0

    .line 31
    invoke-virtual {v1, v3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 32
    new-instance v4, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 35
    invoke-direct {v4, p0, v1, v2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 37
    invoke-virtual {v1, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 40
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 43
    if-eqz v4, :cond_0

    .line 45
    invoke-interface {v4}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getContentView()Landroid/view/View;

    .line 47
    move-result-object v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move-object v4, v3

    .line 52
    :goto_0
    if-nez v4, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    const/4 v5, 0x0

    .line 56
    invoke-virtual {v4, v5}, Landroid/view/View;->setAlpha(F)V

    .line 57
    :goto_1
    new-array v0, v0, [F

    .line 60
    fill-array-data v0, :array_1

    .line 62
    invoke-static {v0}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 65
    move-result-object v0

    .line 68
    const/16 v4, 0xa

    .line 69
    invoke-static {v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 71
    move-result-wide v5

    .line 74
    invoke-virtual {v0, v5, v6}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 75
    invoke-static {v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 78
    move-result-wide v4

    .line 81
    invoke-virtual {v0, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 82
    invoke-virtual {v0, v3}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 85
    new-instance v3, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 88
    const/16 v4, 0x8

    .line 90
    invoke-direct {v3, p0, v0, v4}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 92
    invoke-virtual {v0, v3}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 95
    iget-object v3, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 98
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 100
    move-result v3

    .line 103
    iget v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    .line 104
    filled-new-array {v4, v3}, [I

    .line 106
    move-result-object v3

    .line 109
    invoke-static {v3}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 110
    move-result-object v3

    .line 113
    invoke-static {v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 114
    move-result-wide v4

    .line 117
    invoke-virtual {v3, v4, v5}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 118
    const/16 v2, 0x17

    .line 121
    invoke-static {v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 123
    move-result-wide v4

    .line 126
    invoke-virtual {v3, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 127
    sget-object v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_IN:Landroidx/core/animation/PathInterpolator;

    .line 130
    invoke-virtual {v3, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 132
    new-instance v2, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 135
    const/4 v4, 0x0

    .line 137
    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 138
    invoke-virtual {v3, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 141
    new-instance p0, Landroidx/core/animation/AnimatorSet;

    .line 144
    invoke-direct {p0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 146
    filled-new-array {v1, v0, v3}, [Landroidx/core/animation/Animator;

    .line 149
    move-result-object v0

    .line 152
    invoke-virtual {p0, v0}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    .line 153
    return-object p0

    .line 156
    nop

    .line 157
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 158
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 166
.end method

.method public final onSystemEventAnimationFinish(Z)Landroidx/core/animation/Animator;
    .locals 11

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initializeAnimRect()V

    .line 2
    const/4 v0, 0x3

    .line 5
    iget v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipMinWidth:I

    .line 6
    const/4 v2, 0x5

    .line 8
    const/4 v3, 0x1

    .line 9
    const/4 v4, 0x6

    .line 10
    const/4 v5, 0x2

    .line 11
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 14
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 16
    move-result p1

    .line 19
    filled-new-array {p1, v1}, [I

    .line 20
    move-result-object p1

    .line 23
    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 24
    move-result-object p1

    .line 27
    const/16 v6, 0x9

    .line 28
    invoke-static {v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 30
    move-result-wide v7

    .line 33
    invoke-virtual {p1, v7, v8}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 34
    sget-object v7, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    .line 37
    invoke-virtual {p1, v7}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 39
    new-instance v7, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 42
    invoke-direct {v7, p0, p1, v2}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 44
    invoke-virtual {p1, v7}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 47
    iget v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->dotSize:I

    .line 50
    filled-new-array {v1, v2}, [I

    .line 52
    move-result-object v1

    .line 55
    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 56
    move-result-object v1

    .line 59
    invoke-static {v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 60
    move-result-wide v6

    .line 63
    invoke-virtual {v1, v6, v7}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 64
    const/16 v6, 0x14

    .line 67
    invoke-static {v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 69
    move-result-wide v6

    .line 72
    invoke-virtual {v1, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 73
    sget-object v6, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_WIDTH_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    .line 76
    invoke-virtual {v1, v6}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 78
    new-instance v6, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 81
    invoke-direct {v6, p0, v1, v4}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 83
    invoke-virtual {v1, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 86
    mul-int/lit8 v6, v2, 0x2

    .line 89
    iget-object v7, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 91
    invoke-static {v7}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 93
    invoke-interface {v7}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 96
    move-result-object v7

    .line 99
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    .line 100
    move-result v8

    .line 103
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 104
    move-result v7

    .line 107
    div-int/2addr v7, v5

    .line 108
    add-int/2addr v7, v8

    .line 109
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 110
    invoke-static {v5}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 112
    invoke-interface {v5}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 115
    move-result-object v5

    .line 118
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    .line 119
    move-result v5

    .line 122
    filled-new-array {v5, v6}, [I

    .line 123
    move-result-object v5

    .line 126
    invoke-static {v5}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 127
    move-result-object v5

    .line 130
    const/16 v8, 0x8

    .line 131
    invoke-static {v8}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 133
    move-result-wide v8

    .line 136
    invoke-virtual {v5, v8, v9}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 137
    invoke-static {v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 140
    move-result-wide v8

    .line 143
    invoke-virtual {v5, v8, v9}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 144
    sget-object v4, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_1:Landroidx/core/animation/PathInterpolator;

    .line 147
    invoke-virtual {v5, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 149
    new-instance v4, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;

    .line 152
    const/4 v8, 0x0

    .line 154
    invoke-direct {v4, p0, v5, v7, v8}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;II)V

    .line 155
    invoke-virtual {v5, v4}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 158
    filled-new-array {v6, v2}, [I

    .line 161
    move-result-object v4

    .line 164
    invoke-static {v4}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 165
    move-result-object v4

    .line 168
    const/16 v6, 0xe

    .line 169
    invoke-static {v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 171
    move-result-wide v9

    .line 174
    invoke-virtual {v4, v9, v10}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 175
    const/16 v6, 0xf

    .line 178
    invoke-static {v6}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 180
    move-result-wide v9

    .line 183
    invoke-virtual {v4, v9, v10}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 184
    sget-object v6, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_HEIGHT_TO_DOT_KEYFRAME_2:Landroidx/core/animation/PathInterpolator;

    .line 187
    invoke-virtual {v4, v6}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 189
    new-instance v6, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;

    .line 192
    invoke-direct {v6, p0, v4, v7, v3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$createMoveOutAnimationForDot$height1$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;II)V

    .line 194
    invoke-virtual {v4, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 197
    filled-new-array {v8, v2}, [I

    .line 200
    move-result-object v2

    .line 203
    invoke-static {v2}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 204
    move-result-object v2

    .line 207
    invoke-static {v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 208
    move-result-wide v6

    .line 211
    invoke-virtual {v2, v6, v7}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 212
    const/16 v0, 0xb

    .line 215
    invoke-static {v0}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 217
    move-result-wide v6

    .line 220
    invoke-virtual {v2, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 221
    sget-object v0, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_CHIP_MOVE_TO_DOT:Landroidx/core/animation/PathInterpolator;

    .line 224
    invoke-virtual {v2, v0}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 226
    new-instance v0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 229
    const/4 v3, 0x4

    .line 231
    invoke-direct {v0, p0, v2, v3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 232
    invoke-virtual {v2, v0}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 235
    new-instance v0, Landroidx/core/animation/AnimatorSet;

    .line 238
    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 240
    filled-new-array {p1, v1, v5, v4, v2}, [Landroidx/core/animation/Animator;

    .line 243
    move-result-object p1

    .line 246
    invoke-virtual {v0, p1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    .line 247
    goto :goto_0

    .line 250
    :cond_0
    new-array p1, v5, [F

    .line 251
    fill-array-data p1, :array_0

    .line 253
    invoke-static {p1}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 256
    move-result-object p1

    .line 259
    invoke-static {v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 260
    move-result-wide v6

    .line 263
    invoke-virtual {p1, v6, v7}, Landroidx/core/animation/ValueAnimator;->setStartDelay(J)V

    .line 264
    invoke-static {v4}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 267
    move-result-wide v6

    .line 270
    invoke-virtual {p1, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 271
    const/4 v4, 0x0

    .line 274
    invoke-virtual {p1, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 275
    new-instance v6, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 278
    invoke-direct {v6, p0, p1, v3}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 280
    invoke-virtual {p1, v6}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 283
    new-array v3, v5, [F

    .line 286
    fill-array-data v3, :array_1

    .line 288
    invoke-static {v3}, Landroidx/core/animation/ValueAnimator;->ofFloat([F)Landroidx/core/animation/ValueAnimator;

    .line 291
    move-result-object v3

    .line 294
    invoke-static {v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 295
    move-result-wide v6

    .line 298
    invoke-virtual {v3, v6, v7}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 299
    invoke-virtual {v3, v4}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 302
    new-instance v2, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 305
    invoke-direct {v2, p0, v3, v5}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 307
    invoke-virtual {v3, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 310
    iget-object v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 313
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 315
    move-result v2

    .line 318
    filled-new-array {v2, v1}, [I

    .line 319
    move-result-object v1

    .line 322
    invoke-static {v1}, Landroidx/core/animation/ValueAnimator;->ofInt([I)Landroidx/core/animation/ValueAnimator;

    .line 323
    move-result-object v1

    .line 326
    const/16 v2, 0x17

    .line 327
    invoke-static {v2}, Lcom/android/systemui/util/animation/AnimationUtil$Companion;->getFrames(I)J

    .line 329
    move-result-wide v4

    .line 332
    invoke-virtual {v1, v4, v5}, Landroidx/core/animation/ValueAnimator;->setDuration(J)Landroidx/core/animation/ValueAnimator;

    .line 333
    sget-object v2, Lcom/android/systemui/statusbar/events/SystemStatusAnimationSchedulerKt;->STATUS_BAR_X_MOVE_OUT:Landroidx/core/animation/PathInterpolator;

    .line 336
    invoke-virtual {v1, v2}, Landroidx/core/animation/ValueAnimator;->setInterpolator(Landroidx/core/animation/Interpolator;)V

    .line 338
    new-instance v2, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;

    .line 341
    invoke-direct {v2, p0, v1, v0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationBegin$moveIn$1$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;Landroidx/core/animation/ValueAnimator;I)V

    .line 343
    invoke-virtual {v1, v2}, Landroidx/core/animation/Animator;->addUpdateListener(Landroidx/core/animation/Animator$AnimatorUpdateListener;)V

    .line 346
    new-instance v0, Landroidx/core/animation/AnimatorSet;

    .line 349
    invoke-direct {v0}, Landroidx/core/animation/AnimatorSet;-><init>()V

    .line 351
    filled-new-array {p1, v3, v1}, [Landroidx/core/animation/Animator;

    .line 354
    move-result-object p1

    .line 357
    invoke-virtual {v0, p1}, Landroidx/core/animation/AnimatorSet;->playTogether([Landroidx/core/animation/Animator;)V

    .line 358
    :goto_0
    new-instance p1, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;

    .line 361
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;-><init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V

    .line 363
    invoke-virtual {v0, p1}, Landroidx/core/animation/Animator;->addListener(Landroidx/core/animation/Animator$AnimatorListener;)V

    .line 366
    return-object v0

    .line 369
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data

    .line 370
    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method public final prepareChipAnimation(Lkotlin/jvm/functions/Function1;)V
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initialized:Z

    .line 2
    const v1, 0x800015

    .line 4
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-nez v0, :cond_3

    .line 9
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->initialized:Z

    .line 11
    new-instance v0, Landroid/view/ContextThemeWrapper;

    .line 13
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->context:Landroid/content/Context;

    .line 15
    const v5, 0x7f14056f    # @style/Theme.SystemUI.QuickSettings

    .line 17
    invoke-direct {v0, v4, v5}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 20
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->themedContext:Landroid/view/ContextThemeWrapper;

    .line 23
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 25
    move-result-object v0

    .line 28
    const v4, 0x7f0d03be    # @layout/system_event_animation_window 'res/layout/system_event_animation_window.xml'

    .line 29
    invoke-virtual {v0, v4, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Landroid/widget/FrameLayout;

    .line 36
    iput-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 38
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 40
    const/4 v4, -0x1

    .line 42
    invoke-direct {v0, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 43
    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 46
    iget-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 48
    if-nez v4, :cond_0

    .line 50
    move-object v4, v3

    .line 52
    :cond_0
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->statusBarWindowController:Lcom/android/systemui/statusbar/window/StatusBarWindowController;

    .line 53
    iget-object v5, v5, Lcom/android/systemui/statusbar/window/StatusBarWindowController;->mStatusBarWindowView:Lcom/android/systemui/statusbar/window/StatusBarWindowView;

    .line 55
    invoke-virtual {v5, v4, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 60
    if-nez v0, :cond_1

    .line 62
    move-object v0, v3

    .line 64
    :cond_1
    const/4 v4, 0x0

    .line 65
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 69
    if-nez v0, :cond_2

    .line 71
    move-object v0, v3

    .line 73
    :cond_2
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 74
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 77
    if-nez v0, :cond_4

    .line 79
    move-object v0, v3

    .line 81
    :cond_4
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 82
    move-result v0

    .line 85
    const/4 v4, 0x2

    .line 86
    if-eqz v0, :cond_5

    .line 87
    move v0, v4

    .line 89
    goto :goto_0

    .line 90
    :cond_5
    move v0, v2

    .line 91
    :goto_0
    iput v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    .line 92
    iget-object v0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->contentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 94
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/util/Pair;

    .line 96
    move-result-object v5

    .line 99
    iget-object v6, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->themedContext:Landroid/view/ContextThemeWrapper;

    .line 100
    if-nez v6, :cond_6

    .line 102
    move-object v6, v3

    .line 104
    :cond_6
    invoke-interface {p1, v6}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object p1

    .line 108
    check-cast p1, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 109
    iget-object v6, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 111
    if-nez v6, :cond_7

    .line 113
    move-object v6, v3

    .line 115
    :cond_7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 116
    move-result-object v7

    .line 119
    iget-object v8, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 120
    if-nez v8, :cond_8

    .line 122
    move-object v8, v3

    .line 124
    :cond_8
    invoke-virtual {v8}, Landroid/widget/FrameLayout;->isLayoutRtl()Z

    .line 125
    move-result v8

    .line 128
    if-eqz v8, :cond_9

    .line 129
    iget-object v5, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 131
    check-cast v5, Ljava/lang/Integer;

    .line 133
    goto :goto_1

    .line 135
    :cond_9
    iget-object v5, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 136
    check-cast v5, Ljava/lang/Integer;

    .line 138
    :goto_1
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 140
    move-result v5

    .line 143
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    .line 144
    const/4 v9, -0x2

    .line 146
    invoke-direct {v8, v9, v9}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 147
    iput v1, v8, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 150
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 152
    invoke-virtual {v6, v7, v8}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 155
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 158
    move-result-object v1

    .line 161
    const/4 v5, 0x0

    .line 162
    invoke-virtual {v1, v5}, Landroid/view/View;->setAlpha(F)V

    .line 163
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 166
    move-result-object v1

    .line 169
    iget-object v5, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 170
    if-nez v5, :cond_a

    .line 172
    move-object v5, v3

    .line 174
    :cond_a
    invoke-virtual {v5}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 175
    move-result-object v5

    .line 178
    check-cast v5, Landroid/view/View;

    .line 179
    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    .line 181
    move-result v5

    .line 184
    const/high16 v6, -0x80000000

    .line 185
    invoke-static {v5, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 187
    move-result v5

    .line 190
    iget-object v7, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 191
    if-nez v7, :cond_b

    .line 193
    move-object v7, v3

    .line 195
    :cond_b
    invoke-virtual {v7}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 196
    move-result-object v7

    .line 199
    check-cast v7, Landroid/view/View;

    .line 200
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 202
    move-result v7

    .line 205
    invoke-static {v7, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 206
    move-result v6

    .line 209
    invoke-virtual {v1, v5, v6}, Landroid/view/View;->measure(II)V

    .line 210
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->context:Landroid/content/Context;

    .line 213
    invoke-static {v1}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 215
    move-result v1

    .line 218
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentAreaForRotation(I)Landroid/graphics/Rect;

    .line 219
    move-result-object v0

    .line 222
    iget-object v1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 223
    if-nez v1, :cond_c

    .line 225
    goto :goto_2

    .line 227
    :cond_c
    move-object v3, v1

    .line 228
    :goto_2
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 229
    move-result-object v1

    .line 232
    check-cast v1, Landroid/view/View;

    .line 233
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 235
    move-result v1

    .line 238
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 239
    move-result-object v3

    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 243
    move-result v3

    .line 246
    sub-int/2addr v1, v3

    .line 247
    div-int/2addr v1, v4

    .line 248
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 249
    move-result-object v3

    .line 252
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 253
    move-result v3

    .line 256
    add-int/2addr v3, v1

    .line 257
    iget v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationDirection:I

    .line 258
    if-ne v4, v2, :cond_d

    .line 260
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 262
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getChipWidth()I

    .line 264
    move-result v2

    .line 267
    sub-int v2, v0, v2

    .line 268
    goto :goto_3

    .line 270
    :cond_d
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 271
    invoke-interface {p1}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getChipWidth()I

    .line 273
    move-result v0

    .line 276
    add-int/2addr v0, v2

    .line 277
    :goto_3
    new-instance v4, Landroid/graphics/Rect;

    .line 278
    invoke-direct {v4, v2, v1, v0, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 280
    iput-object v4, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->chipBounds:Landroid/graphics/Rect;

    .line 283
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 285
    return-void
    .line 287
.end method
