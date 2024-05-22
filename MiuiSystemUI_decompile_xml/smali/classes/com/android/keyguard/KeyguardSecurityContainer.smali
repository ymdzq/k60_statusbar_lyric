.class public Lcom/android/keyguard/KeyguardSecurityContainer;
.super Landroidx/constraintlayout/widget/ConstraintLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final MIN_BACK_SCALE:F = 0.9f


# instance fields
.field public mActivePointerId:I

.field public mAlertDialog:Landroid/app/AlertDialog;

.field public final mBackCallback:Lcom/android/keyguard/KeyguardSecurityContainer$2;

.field public mCurrentMode:I

.field public final mDoubleTapDetector:Landroid/view/GestureDetector;

.field public mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public mIsDragging:Z

.field public mIsInteractable:Z

.field public final mMotionEventListeners:Ljava/util/List;

.field mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

.field public mStartTouchY:F

.field public mSwipeUpToRetry:Z

.field public final mVelocityTracker:Landroid/view/VelocityTracker;

.field public final mViewConfiguration:Landroid/view/ViewConfiguration;

.field public mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

.field public mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

.field public mWidth:I

.field public final mWindowInsetsAnimationCallback:Lcom/android/keyguard/KeyguardSecurityContainer$1;


# direct methods
.method public static synthetic $r8$lambda$IzuKuDWYdYF11cU1OF8-Qs9xLWM(Lcom/android/keyguard/KeyguardSecurityContainer;II)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object p2

    .line 11
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    const p2, 0x7f13060c    # @string/kg_failed_attempts_almost_at_erase_profile 'You have incorrectly attempted to unlock the phone %1$d times. After %2$d more unsuccessful attempts ...'

    .line 16
    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0
    .line 23
.end method

.method public static synthetic $r8$lambda$KVaOirI361tVNgWszq7Qb4jQl8Y(Lcom/android/keyguard/KeyguardSecurityContainer;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object p0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    move-result-object p1

    .line 7
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    const v0, 0x7f130610    # @string/kg_failed_attempts_now_erasing_profile 'You have incorrectly attempted to unlock the phone %d times. The work profile will be removed, which ...'

    .line 12
    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    return-object p0
    .line 19
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, p1, v0, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroidx/constraintlayout/widget/ConstraintLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 5
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    const/4 p2, -0x1

    .line 6
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    const/high16 p3, -0x40800000    # -1.0f

    .line 7
    iput p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 8
    new-instance p3, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;

    invoke-direct {p3}, Lcom/android/keyguard/KeyguardSecurityContainer$DefaultViewMode;-><init>()V

    iput-object p3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 9
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 10
    iput p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWidth:I

    .line 11
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityContainer$1;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWindowInsetsAnimationCallback:Lcom/android/keyguard/KeyguardSecurityContainer$1;

    .line 12
    new-instance p2, Lcom/android/keyguard/KeyguardSecurityContainer$2;

    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mBackCallback:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    .line 13
    new-instance p2, Landroidx/dynamicanimation/animation/SpringAnimation;

    sget-object p3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    invoke-direct {p2, p3, p0}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 14
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 15
    new-instance p2, Landroid/view/GestureDetector;

    new-instance p3, Lcom/android/keyguard/KeyguardSecurityContainer$DoubleTapListener;

    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardSecurityContainer$DoubleTapListener;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V

    invoke-direct {p2, p1, p3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDoubleTapDetector:Landroid/view/GestureDetector;

    return-void
.end method

.method public static modeToString(I)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_3

    .line 3
    if-eqz p0, :cond_2

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_1

    .line 8
    const/4 v0, 0x2

    .line 10
    if-ne p0, v0, :cond_0

    .line 11
    const-string p0, "UserSwitcher"

    .line 13
    return-object p0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string v1, "mode: "

    .line 18
    const-string v2, " not supported"

    .line 20
    invoke-static {v1, p0, v2}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 26
    throw v0

    .line 29
    :cond_1
    const-string p0, "OneHanded"

    .line 30
    return-object p0

    .line 32
    :cond_2
    const-string p0, "Default"

    .line 33
    return-object p0

    .line 35
    :cond_3
    const-string p0, "Uninitialized"

    .line 36
    return-object p0
    .line 38
.end method


# virtual methods
.method public final dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/constraintlayout/widget/ConstraintLayout;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;

    .line 9
    const-string p1, "KeyguardViewMediator.mViewMediatorCallback#keyguardDoneDrawing"

    .line 11
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator$4;->this$0:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 18
    const/16 p1, 0x8

    .line 20
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 22
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public getBackCallback()Landroid/window/OnBackAnimationCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mBackCallback:Lcom/android/keyguard/KeyguardSecurityContainer$2;

    .line 2
    return-object p0
    .line 4
.end method

.method public getMode()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mCurrentMode:I

    .line 2
    return p0
    .line 4
.end method

.method public getSecurityAlignSideLogStateForEnter()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 2
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 4
    if-nez v0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return p0

    .line 9
    :cond_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 10
    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    .line 12
    const/4 v0, 0x2

    .line 14
    if-ne p0, v0, :cond_1

    .line 15
    return v0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_2

    .line 19
    return v0

    .line 21
    :cond_2
    const/4 p0, 0x3

    .line 22
    return p0
    .line 23
.end method

.method public getSecurityAlignSideLogStateForShow()I
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 2
    instance-of v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 4
    const/4 v1, 0x2

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;

    .line 10
    iget p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$OneHandedViewMode;->mCurrentSide:I

    .line 12
    if-ne p0, v1, :cond_1

    .line 14
    const/4 p0, 0x4

    .line 16
    return p0

    .line 17
    :cond_1
    const/4 v0, 0x1

    .line 18
    if-ne p0, v0, :cond_2

    .line 19
    const/4 p0, 0x3

    .line 21
    return p0

    .line 22
    :cond_2
    const/4 p0, 0x7

    .line 23
    return p0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getTitle()Ljava/lang/CharSequence;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public handleDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 6
    invoke-interface {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->handleDoubleTap(Landroid/view/MotionEvent;)V

    .line 8
    const/4 p0, 0x1

    .line 11
    return p0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0
    .line 14
.end method

.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    const v1, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 13
    move-result v0

    .line 16
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    .line 17
    move-result v1

    .line 20
    if-eq v1, v0, :cond_0

    .line 21
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 23
    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 25
    move-result-object v1

    .line 28
    check-cast v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 29
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 33
    invoke-virtual {p0, v1}, Landroid/widget/ViewFlipper;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 38
    invoke-virtual {p1, p0, p0, p0, v0}, Landroid/view/WindowInsets;->inset(IIII)Landroid/view/WindowInsets;

    .line 39
    move-result-object p0

    .line 42
    return-object p0
    .line 43
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 5
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->updateSecurityViewLocation()V

    .line 7
    return-void
    .line 10
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/view/ViewGroup;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a59    # @id/view_flipper

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 14
    return-void
    .line 16
.end method

.method public final onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsInteractable:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    .line 8
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 10
    move-result-object v0

    .line 13
    new-instance v2, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;

    .line 14
    invoke-direct {v2, p1, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;I)V

    .line 16
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 19
    move-result v0

    .line 22
    const/4 v2, 0x0

    .line 23
    if-nez v0, :cond_2

    .line 24
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    move v0, v2

    .line 33
    goto :goto_1

    .line 34
    :cond_2
    :goto_0
    move v0, v1

    .line 35
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 36
    move-result v3

    .line 39
    if-eqz v3, :cond_8

    .line 40
    if-eq v3, v1, :cond_7

    .line 42
    const/4 v4, 0x2

    .line 44
    if-eq v3, v4, :cond_3

    .line 45
    const/4 p1, 0x3

    .line 47
    if-eq v3, p1, :cond_7

    .line 48
    goto :goto_2

    .line 50
    :cond_3
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 51
    if-eqz v3, :cond_4

    .line 53
    return v1

    .line 55
    :cond_4
    iget-boolean v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSwipeUpToRetry:Z

    .line 56
    if-nez v3, :cond_5

    .line 58
    return v2

    .line 60
    :cond_5
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 61
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    .line 63
    move-result-object v3

    .line 66
    if-eqz v3, :cond_6

    .line 67
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 69
    invoke-virtual {v3}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    .line 71
    move-result-object v3

    .line 74
    invoke-virtual {v3, p1}, Lcom/android/keyguard/KeyguardInputView;->disallowInterceptTouch(Landroid/view/MotionEvent;)Z

    .line 75
    move-result v3

    .line 78
    if-eqz v3, :cond_6

    .line 79
    return v2

    .line 81
    :cond_6
    iget v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 82
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 84
    move-result v2

    .line 87
    iget-object v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewConfiguration:Landroid/view/ViewConfiguration;

    .line 88
    invoke-virtual {v3}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 90
    move-result v3

    .line 93
    int-to-float v3, v3

    .line 94
    const/high16 v4, 0x40800000    # 4.0f

    .line 95
    mul-float/2addr v3, v4

    .line 97
    const/4 v4, -0x1

    .line 98
    if-eq v2, v4, :cond_9

    .line 99
    iget v4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 101
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    .line 103
    move-result p1

    .line 106
    sub-float/2addr v4, p1

    .line 107
    cmpl-float p1, v4, v3

    .line 108
    if-lez p1, :cond_9

    .line 110
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 112
    return v1

    .line 114
    :cond_7
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 115
    goto :goto_2

    .line 117
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    .line 118
    move-result v1

    .line 121
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getY(I)F

    .line 122
    move-result v3

    .line 125
    iput v3, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mStartTouchY:F

    .line 126
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 128
    move-result p1

    .line 131
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mActivePointerId:I

    .line 132
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 134
    invoke-virtual {p1}, Landroid/view/VelocityTracker;->clear()V

    .line 136
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 139
    :cond_9
    :goto_2
    return v0
    .line 141
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroidx/constraintlayout/widget/ConstraintLayout;->onLayout(ZIIII)V

    .line 2
    sub-int/2addr p4, p2

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWidth:I

    .line 8
    if-eq p1, p4, :cond_0

    .line 10
    iput p4, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mWidth:I

    .line 12
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMode:Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;

    .line 14
    invoke-interface {p0}, Lcom/android/keyguard/KeyguardSecurityContainer$ViewMode;->updateSecurityViewLocation()V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x1

    .line 7
    if-eq v0, v2, :cond_0

    .line 8
    const/4 v3, 0x3

    .line 10
    if-ne v0, v3, :cond_1

    .line 11
    :cond_0
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsDragging:Z

    .line 13
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mMotionEventListeners:Ljava/util/List;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    .line 17
    move-result-object v0

    .line 20
    new-instance v3, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;

    .line 21
    invoke-direct {v3, p1, v1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda0;-><init>(Landroid/view/MotionEvent;I)V

    .line 23
    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    .line 26
    move-result v0

    .line 29
    if-nez v0, :cond_2

    .line 30
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 32
    move-result v0

    .line 35
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mDoubleTapDetector:Landroid/view/GestureDetector;

    .line 36
    invoke-virtual {p0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 38
    return v2
    .line 41
.end method

.method public setInteractable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mIsInteractable:Z

    .line 2
    return-void
    .line 4
.end method

.method public setViewMediatorCallback(Lcom/android/keyguard/ViewMediatorCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mViewMediatorCallback:Lcom/android/keyguard/ViewMediatorCallback;

    .line 2
    return-void
    .line 4
.end method

.method public final showAlmostAtWipeDialog(III)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p3, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p3, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p3, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 18
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 19
    move-result-object p2

    .line 22
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 23
    move-result-object p1

    .line 26
    const p2, 0x7f13060d    # @string/kg_failed_attempts_almost_at_erase_user 'You have incorrectly attempted to unlock the phone %1$d times. After %2$d more unsuccessful attempts ...'

    .line 27
    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 35
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 37
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 39
    move-result-object p3

    .line 42
    check-cast p3, Landroid/app/admin/DevicePolicyManager;

    .line 43
    invoke-virtual {p3}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 45
    move-result-object p3

    .line 48
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;

    .line 49
    invoke-direct {v0, p0, p1, p2}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;II)V

    .line 51
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 58
    move-result-object p2

    .line 61
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 62
    move-result-object p1

    .line 65
    const-string p2, "SystemUi.KEYGUARD_DIALOG_FAILED_ATTEMPTS_ALMOST_ERASING_PROFILE"

    .line 66
    invoke-virtual {p3, p2, v0, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    goto :goto_0

    .line 72
    :cond_2
    iget-object p3, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 73
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object p1

    .line 78
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 79
    move-result-object p2

    .line 82
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 83
    move-result-object p1

    .line 86
    const p2, 0x7f13060f    # @string/kg_failed_attempts_almost_at_wipe 'You have incorrectly attempted to unlock the phone %1$d times. After %2$d more unsuccessful attempts ...'

    .line 87
    invoke-virtual {p3, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    move-result-object p1

    .line 93
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;)V

    .line 94
    return-void
    .line 97
.end method

.method public final showDialog(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 6
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 9
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 13
    const/4 v1, 0x0

    .line 16
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 21
    move-result-object p1

    .line 24
    const/4 v0, 0x0

    .line 25
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 26
    move-result-object p1

    .line 29
    const v0, 0x7f1308a7    # @string/ok '@android:string/ok'

    .line 30
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 33
    move-result-object p1

    .line 36
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 37
    move-result-object p1

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 41
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 43
    instance-of v0, v0, Landroid/app/Activity;

    .line 45
    if-nez v0, :cond_1

    .line 47
    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 49
    move-result-object p1

    .line 52
    const/16 v0, 0x7d9

    .line 53
    invoke-virtual {p1, v0}, Landroid/view/Window;->setType(I)V

    .line 55
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer;->mAlertDialog:Landroid/app/AlertDialog;

    .line 58
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 60
    return-void
.end method

.method public final showWipeDialog(II)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_2

    .line 3
    const/4 v0, 0x2

    .line 5
    if-eq p2, v0, :cond_1

    .line 6
    const/4 v0, 0x3

    .line 8
    if-eq p2, v0, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 15
    move-result-object p1

    .line 18
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 19
    move-result-object p1

    .line 22
    const v0, 0x7f130611    # @string/kg_failed_attempts_now_erasing_user 'You have incorrectly attempted to unlock the phone %d times. This user will be removed, which will d ...'

    .line 23
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 26
    move-result-object p1

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 31
    const-class v0, Landroid/app/admin/DevicePolicyManager;

    .line 33
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p2

    .line 38
    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    .line 39
    invoke-virtual {p2}, Landroid/app/admin/DevicePolicyManager;->getResources()Landroid/app/admin/DevicePolicyResourcesManager;

    .line 41
    move-result-object p2

    .line 44
    new-instance v0, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;

    .line 45
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/KeyguardSecurityContainer;I)V

    .line 47
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 50
    move-result-object p1

    .line 53
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 54
    move-result-object p1

    .line 57
    const-string v1, "SystemUi.KEYGUARD_DIALOG_FAILED_ATTEMPTS_ERASING_PROFILE"

    .line 58
    invoke-virtual {p2, v1, v0, p1}, Landroid/app/admin/DevicePolicyResourcesManager;->getString(Ljava/lang/String;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/lang/String;

    .line 60
    move-result-object p1

    .line 63
    goto :goto_0

    .line 64
    :cond_2
    iget-object p2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 65
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object p1

    .line 70
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 74
    const v0, 0x7f130612    # @string/kg_failed_attempts_now_wiping 'You have incorrectly attempted to unlock the phone %d times. This phone will be reset, which will de ...'

    .line 75
    invoke-virtual {p2, v0, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 78
    move-result-object p1

    .line 81
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainer;->showDialog(Ljava/lang/String;)V

    .line 82
    return-void
    .line 85
.end method

.method public final updateChildren(FI)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 3
    move-result v1

    .line 6
    if-ge v0, v1, :cond_0

    .line 7
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object v1

    .line 12
    int-to-float v2, p2

    .line 13
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    invoke-virtual {v1, p1}, Landroid/view/View;->setAlpha(F)V

    .line 17
    add-int/lit8 v0, v0, 0x1

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    return-void
    .line 23
.end method
