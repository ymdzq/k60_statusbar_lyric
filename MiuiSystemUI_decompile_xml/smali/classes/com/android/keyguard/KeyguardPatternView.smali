.class public Lcom/android/keyguard/KeyguardPatternView;
.super Lcom/android/keyguard/KeyguardInputView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAppearAnimating:Z

.field public final mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

.field public mBottomSpaceForFod:Landroid/view/View;

.field public mDisappearAnimatePending:Z

.field public final mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public final mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

.field public mDisappearFinishRunnable:Ljava/lang/Runnable;

.field public final mDisappearYTranslation:I

.field public mEcaView:Landroid/view/View;

.field public mEmergencyCallButton:Landroid/view/View;

.field public mLastPokeTime:J

.field public final mLockPatternScreenBounds:Landroid/graphics/Rect;

.field public mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public final mTempRect:Landroid/graphics/Rect;

.field public final mTmpPosition:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardConstants;->DEBUG:Z

    .line 2
    return-void
    .line 4
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/KeyguardPatternView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    .line 2
    invoke-direct/range {p0 .. p2}, Lcom/android/keyguard/KeyguardInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 3
    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    const-wide/16 v1, -0x1b58

    .line 6
    iput-wide v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 7
    new-instance v1, Lcom/android/settingslib/animation/AppearAnimationUtils;

    const-wide/16 v5, 0xdc

    const/high16 v7, 0x3fc00000    # 1.5f

    const/high16 v8, 0x40000000    # 2.0f

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000e    # @android:interpolator/linear_out_slow_in

    .line 8
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v9

    move-object v3, v1

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 9
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v12, 0x7d

    const v14, 0x3f99999a    # 1.2f

    const v15, 0x3f19999a    # 0.6f

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const v3, 0x10c000f    # @android:interpolator/fast_out_linear_in

    .line 10
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v16

    move-object v10, v1

    move-object/from16 v11, p1

    invoke-direct/range {v10 .. v16}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 11
    new-instance v1, Lcom/android/settingslib/animation/DisappearAnimationUtils;

    const-wide/16 v6, 0xbb

    const v8, 0x3f99999a    # 1.2f

    const v9, 0x3f19999a    # 0.6f

    iget-object v2, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 12
    invoke-static {v2, v3}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v10

    move-object v4, v1

    move-object/from16 v5, p1

    invoke-direct/range {v4 .. v10}, Lcom/android/settingslib/animation/DisappearAnimationUtils;-><init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V

    iput-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 13
    invoke-virtual/range {p0 .. p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0702ca    # @dimen/disappear_y_translation '-240.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    return-void
.end method


# virtual methods
.method public final createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    move-object v2, p1

    .line 3
    check-cast v2, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 4
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 6
    const/high16 v3, 0x3f800000    # 1.0f

    .line 8
    const/4 v4, 0x0

    .line 10
    if-eqz p7, :cond_0

    .line 11
    move v5, v3

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v5, v4

    .line 15
    :goto_0
    if-eqz p7, :cond_1

    .line 16
    move/from16 v6, p6

    .line 18
    goto :goto_1

    .line 20
    :cond_1
    move v6, v4

    .line 21
    :goto_1
    if-eqz p7, :cond_2

    .line 22
    move v7, v4

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    move/from16 v7, p6

    .line 26
    :goto_2
    if-eqz p7, :cond_3

    .line 28
    move v8, v4

    .line 30
    goto :goto_3

    .line 31
    :cond_3
    move v8, v3

    .line 32
    :goto_3
    move v3, v5

    .line 33
    move v4, v6

    .line 34
    move v5, v7

    .line 35
    move v6, v8

    .line 36
    move-wide v7, p2

    .line 37
    move-wide/from16 v9, p4

    .line 38
    move-object/from16 v11, p8

    .line 40
    move-object/from16 v12, p9

    .line 42
    invoke-virtual/range {v1 .. v12}, Lcom/android/keyguard/widget/MiuiLockPatternView;->startCellStateAnimation(Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;FFFFJJLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 44
    if-eqz p9, :cond_4

    .line 47
    iget-object v1, v0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 49
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 51
    const/4 v8, 0x0

    .line 53
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    move-wide v1, p2

    .line 57
    move-wide/from16 v3, p4

    .line 58
    move/from16 v5, p6

    .line 60
    move/from16 v6, p7

    .line 62
    move-object/from16 v7, p8

    .line 64
    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 66
    :cond_4
    return-void
    .line 69
.end method

.method public final disallowInterceptTouch(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/widget/MiuiLockPatternView;->mPattern:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    .line 12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 14
    move-result v0

    .line 17
    float-to-int v0, v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 19
    move-result p1

    .line 22
    float-to-int p1, p1

    .line 23
    invoke-virtual {p0, v0, p1}, Landroid/graphics/Rect;->contains(II)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 33
    :goto_1
    return p0
    .line 34
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x10404ff    # @android:string/lockscreen_sound_on_label

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final handleOrientationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSmallestWidthDpChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayoutParams()V

    .line 2
    return-void
    .line 5
.end method

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    const v0, 0x7f0a0158    # @id/bouncer_message_area

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/keyguard/widget/MiuiBouncerKeyguardMessageArea;

    .line 12
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updatePositionForFod()V

    .line 14
    return-void
    .line 17
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/KeyguardInputView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updatePositionForFod()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardInputView;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a050f    # @id/lockPatternView

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 14
    const v0, 0x7f0a0499    # @id/keyguard_selector_fade_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 23
    const v0, 0x7f0a06f7    # @id/pattern_fod_bottom_distance

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomSpaceForFod:Landroid/view/View;

    .line 32
    const v0, 0x7f0a031b    # @id/emergency_call_button

    .line 34
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCallButton:Landroid/view/View;

    .line 41
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updatePositionForFod()V

    .line 43
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardPatternView;->updateLayoutParams()V

    .line 46
    return-void
    .line 49
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 5
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 7
    invoke-virtual {p1, p2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternScreenBounds:Landroid/graphics/Rect;

    .line 12
    iget-object p2, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 14
    const/4 p3, 0x0

    .line 16
    aget p3, p2, p3

    .line 17
    add-int/lit8 p4, p3, -0x28

    .line 19
    const/4 p5, 0x1

    .line 21
    aget p2, p2, p5

    .line 22
    add-int/lit8 p2, p2, -0x28

    .line 24
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 26
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 28
    move-result v0

    .line 31
    add-int/2addr v0, p3

    .line 32
    add-int/lit8 v0, v0, 0x28

    .line 33
    iget-object p3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTmpPosition:[I

    .line 35
    aget p3, p3, p5

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 39
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 41
    move-result p0

    .line 44
    add-int/2addr p0, p3

    .line 45
    add-int/lit8 p0, p0, 0x28

    .line 46
    invoke-virtual {p1, p4, p2, v0, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 48
    return-void
    .line 51
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 2
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 6
    move-result-wide v1

    .line 9
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 10
    sub-long/2addr v1, v3

    .line 12
    if-eqz v0, :cond_0

    .line 13
    const-wide/16 v3, 0x1af4

    .line 15
    cmp-long v1, v1, v3

    .line 17
    if-lez v1, :cond_0

    .line 19
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 21
    move-result-wide v1

    .line 24
    iput-wide v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLastPokeTime:J

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 27
    const/4 v2, 0x0

    .line 29
    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/graphics/Rect;->set(IIII)V

    .line 30
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 33
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 35
    invoke-virtual {p0, v1, v3}, Landroid/widget/LinearLayout;->offsetRectIntoDescendantCoords(Landroid/view/View;Landroid/graphics/Rect;)V

    .line 37
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 40
    iget v3, v1, Landroid/graphics/Rect;->left:I

    .line 42
    int-to-float v3, v3

    .line 44
    iget v1, v1, Landroid/graphics/Rect;->top:I

    .line 45
    int-to-float v1, v1

    .line 47
    invoke-virtual {p1, v3, v1}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 51
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 53
    move-result v1

    .line 56
    if-nez v1, :cond_1

    .line 57
    if-eqz v0, :cond_2

    .line 59
    :cond_1
    const/4 v2, 0x1

    .line 61
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mTempRect:Landroid/graphics/Rect;

    .line 62
    iget v0, p0, Landroid/graphics/Rect;->left:I

    .line 64
    neg-int v0, v0

    .line 66
    int-to-float v0, v0

    .line 67
    iget p0, p0, Landroid/graphics/Rect;->top:I

    .line 68
    neg-int p0, p0

    .line 70
    int-to-float p0, p0

    .line 71
    invoke-virtual {p1, v0, p0}, Landroid/view/MotionEvent;->offsetLocation(FF)V

    .line 72
    return v2
    .line 75
.end method

.method public final startAppearAnimation()V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 3
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 7
    const/4 v2, 0x1

    .line 10
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimating:Z

    .line 11
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimatePending:Z

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v2

    .line 18
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 19
    move-result-object v2

    .line 22
    iget v2, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 23
    div-int/lit8 v2, v2, 0x2

    .line 25
    int-to-float v2, v2

    .line 27
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 28
    new-instance v2, Lcom/miui/utils/animation/PhysicBasedInterpolator;

    .line 31
    const v3, 0x3f7d70a4    # 0.99f

    .line 33
    const v4, 0x3e99999a    # 0.3f

    .line 36
    invoke-direct {v2, v3, v4}, Lcom/miui/utils/animation/PhysicBasedInterpolator;-><init>(FF)V

    .line 39
    const-wide/16 v3, 0x1f4

    .line 42
    invoke-static {p0, v3, v4, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 44
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 47
    new-instance v2, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;

    .line 49
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPatternView;I)V

    .line 51
    invoke-virtual {v1, v2}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 54
    return-void
    .line 57
.end method

.method public final startDisappearAnimation(Ljava/lang/Runnable;)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimating:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimatePending:Z

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    .line 9
    return-void

    .line 11
    :cond_0
    sget-object v0, Lcom/miui/utils/BoostHelper;->sInjector:Lcom/miui/utils/BoostHelper;

    .line 12
    const-wide/16 v2, 0x1f4

    .line 14
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/utils/BoostHelper;->boost(IJLandroid/view/View;)V

    .line 16
    invoke-static {}, Lcom/miui/utils/CpuBoostUtil;->getInstance()Lcom/miui/utils/CpuBoostUtil;

    .line 19
    move-result-object v0

    .line 22
    const/16 v1, 0x12c

    .line 23
    invoke-virtual {v0, v1}, Lcom/miui/utils/CpuBoostUtil;->boostCpuToMax(I)V

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 28
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 30
    if-eqz v0, :cond_1

    .line 32
    const/high16 v0, 0x3fc00000    # 1.5f

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 39
    invoke-virtual {v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->resetPattern()V

    .line 41
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 45
    const/4 v2, 0x0

    .line 48
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTranslationY(F)V

    .line 49
    const/high16 v2, 0x43af0000    # 350.0f

    .line 52
    mul-float/2addr v0, v2

    .line 54
    float-to-long v2, v0

    .line 55
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearYTranslation:I

    .line 56
    int-to-float v0, v0

    .line 58
    new-instance v4, Lmiuix/view/animation/SineEaseInOutInterpolator;

    .line 59
    invoke-direct {v4}, Lmiuix/view/animation/SineEaseInOutInterpolator;-><init>()V

    .line 61
    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JFLandroid/view/animation/Interpolator;)V

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 67
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 69
    if-eqz v0, :cond_2

    .line 71
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtilsLocked:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 73
    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimationUtils:Lcom/android/settingslib/animation/DisappearAnimationUtils;

    .line 76
    :goto_1
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 78
    invoke-virtual {v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 80
    move-result-object v2

    .line 83
    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$1;

    .line 84
    invoke-direct {v3, p0, p1}, Lcom/android/keyguard/KeyguardPatternView$1;-><init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V

    .line 86
    invoke-virtual {v0, v2, v3, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 89
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEmergencyCallButton:Landroid/view/View;

    .line 92
    if-eqz p0, :cond_3

    .line 94
    invoke-virtual {p0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 96
    :cond_3
    return-void
    .line 99
.end method

.method public final updateLayoutParams()V
    .locals 8

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v1

    .line 13
    const v2, 0x7f0708c1    # @dimen/miui_keyguard_pattern_view_pattern_view_width '290.0dp'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 17
    move-result v1

    .line 20
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 21
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 23
    move-result-object v1

    .line 26
    const v2, 0x7f0708bd    # @dimen/miui_keyguard_pattern_view_pattern_view_height '290.0dp'

    .line 27
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 30
    move-result v1

    .line 33
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 34
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_FOLD:Z

    .line 36
    if-eqz v1, :cond_2

    .line 38
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v1

    .line 43
    const v2, 0x7f07080e    # @dimen/miui_face_unlock_view_top_fold '35.44dp'

    .line 44
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result v2

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v1

    .line 54
    const v3, 0x7f0708be    # @dimen/miui_keyguard_pattern_view_pattern_view_height_width '290.0dp'

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 58
    move-result v4

    .line 61
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 62
    move-result-object v1

    .line 65
    const v3, 0x7f0708c0    # @dimen/miui_keyguard_pattern_view_pattern_view_margin_bottom_fold '-17.5dp'

    .line 66
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 69
    move-result v5

    .line 72
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 73
    move-result-object v1

    .line 76
    const v3, 0x7f0708b7    # @dimen/miui_keyguard_pattern_view_eca_margin_bottom_fold '35.33dp'

    .line 77
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 80
    move-result v6

    .line 83
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v1

    .line 87
    const v3, 0x7f0708b9    # @dimen/miui_keyguard_pattern_view_eca_margin_top_fold '0.0dp'

    .line 88
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 91
    move-result v7

    .line 94
    move-object v1, p0

    .line 95
    move-object v3, v0

    .line 96
    invoke-virtual/range {v1 .. v7}, Lcom/android/keyguard/KeyguardPatternView;->updatePatternViewLayoutParams(ILandroid/widget/LinearLayout$LayoutParams;IIII)V

    .line 97
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 100
    invoke-virtual {v1}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 102
    move-result-object v1

    .line 105
    const/4 v2, 0x0

    .line 106
    move v3, v2

    .line 107
    :goto_0
    const/4 v4, 0x3

    .line 108
    if-ge v3, v4, :cond_1

    .line 109
    move v5, v2

    .line 111
    :goto_1
    if-ge v5, v4, :cond_0

    .line 112
    aget-object v6, v1, v3

    .line 114
    aget-object v6, v6, v5

    .line 116
    iget-object v7, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 118
    iget v7, v7, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 120
    div-int/lit8 v7, v7, 0x2

    .line 122
    int-to-float v7, v7

    .line 124
    iput v7, v6, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->radius:F

    .line 125
    iput v3, v6, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->row:I

    .line 127
    iput v5, v6, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->col:I

    .line 129
    add-int/lit8 v5, v5, 0x1

    .line 131
    goto :goto_1

    .line 133
    :cond_0
    add-int/lit8 v3, v3, 0x1

    .line 134
    goto :goto_0

    .line 136
    :cond_1
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 137
    invoke-virtual {v1}, Landroid/view/View;->invalidate()V

    .line 139
    :cond_2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 142
    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 147
    if-eqz v0, :cond_3

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 151
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 153
    move-result-object v0

    .line 156
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 157
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 159
    move-result-object v1

    .line 162
    const v2, 0x7f0708b6    # @dimen/miui_keyguard_pattern_view_eca_margin_bottom '45.33dp'

    .line 163
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 166
    move-result v1

    .line 169
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 170
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 172
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 174
    goto :goto_2

    .line 177
    :catch_0
    move-exception p0

    .line 178
    const-string v0, "SecurityPatternView"

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 181
    move-result-object p0

    .line 184
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    :cond_3
    :goto_2
    return-void
    .line 188
.end method

.method public final updatePatternViewLayoutParams(ILandroid/widget/LinearLayout$LayoutParams;IIII)V
    .locals 2

    .line 1
    const v0, 0x7f0a05d0    # @id/miui_keyguard_face_unlock_view

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Lcom/miui/keyguard/biometrics/faceunlock/MiuiKeyguardFaceUnlockView;

    .line 9
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 11
    move-result-object v1

    .line 14
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 15
    iput p1, v1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 19
    iget-object p1, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 24
    move-result-object v0

    .line 27
    const v1, 0x7f0705ef    # @dimen/lock_pattern_dot_size '8.0dp'

    .line 28
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 31
    move-result v0

    .line 34
    iput v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView;->mDotSize:I

    .line 35
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 37
    iput p3, p2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 39
    iput p4, p2, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 41
    const p1, 0x7f0a0499    # @id/keyguard_selector_fade_container

    .line 43
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object p0

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 50
    move-result-object p1

    .line 53
    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 54
    iput p3, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 56
    iput p5, p1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 58
    iput p6, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 60
    invoke-virtual {p0, p1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 62
    return-void
    .line 65
.end method

.method public final updatePositionForFod()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 10
    move-result-object v0

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 14
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    const/4 v2, 0x0

    .line 22
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 29
    move-result-object v3

    .line 32
    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 33
    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 39
    move-result v3

    .line 42
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v4

    .line 50
    const v5, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 51
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 54
    move-result v4

    .line 57
    sub-int/2addr v3, v4

    .line 58
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 59
    sub-int/2addr v3, v4

    .line 61
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 62
    move-result v2

    .line 65
    iget-object v3, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomSpaceForFod:Landroid/view/View;

    .line 66
    if-eqz v3, :cond_0

    .line 68
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object v3

    .line 73
    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 74
    if-eq v4, v2, :cond_0

    .line 76
    iput v2, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 78
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mBottomSpaceForFod:Landroid/view/View;

    .line 80
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 82
    :cond_0
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 85
    if-eqz v2, :cond_1

    .line 87
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v2

    .line 92
    iget v3, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 93
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    .line 95
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 97
    sub-int v5, v4, v0

    .line 99
    if-eq v3, v5, :cond_1

    .line 101
    sub-int/2addr v4, v0

    .line 103
    iput v4, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 104
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 106
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 108
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView;->mEcaView:Landroid/view/View;

    .line 111
    invoke-virtual {p0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 113
    :cond_2
    return-void
    .line 116
.end method
