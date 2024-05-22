.class public final Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mDismissCallback:Lcom/android/systemui/accessibility/floatingmenu/MenuViewLayer$$ExternalSyntheticLambda3;

.field public final mFadeOutAnimator:Landroid/animation/ValueAnimator;

.field public final mHandler:Landroid/os/Handler;

.field public mIsFadeEffectEnabled:Z

.field public final mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

.field final mPositionAnimations:Ljava/util/HashMap;

.field public mSpringAnimationsEndAction:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/accessibility/floatingmenu/MenuView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mPositionAnimations:Ljava/util/HashMap;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 12
    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 16
    move-result-object v1

    .line 19
    const-string v2, "looper must not be null"

    .line 20
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 25
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mHandler:Landroid/os/Handler;

    .line 28
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 30
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 32
    iput-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 35
    const-wide/16 v1, 0x3e8

    .line 37
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 39
    new-instance p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda3;

    .line 42
    invoke-direct {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuView;)V

    .line 44
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 47
    return-void
    .line 50
.end method


# virtual methods
.method public final cancelAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mPositionAnimations:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mPositionAnimations:Ljava/util/HashMap;

    .line 11
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 17
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->cancel()V

    .line 19
    return-void
    .line 22
.end method

.method public final constrainPositionAndUpdate(Landroid/graphics/PointF;)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->getMenuDraggableBoundsWith(Z)Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 11
    neg-int v2, v2

    .line 13
    int-to-float v2, v2

    .line 14
    iget v3, v0, Landroid/graphics/Rect;->top:I

    .line 15
    neg-int v3, v3

    .line 17
    int-to-float v3, v3

    .line 18
    invoke-virtual {p1, v2, v3}, Landroid/graphics/PointF;->offset(FF)V

    .line 19
    iget v2, p1, Landroid/graphics/PointF;->x:F

    .line 22
    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    cmpg-float v2, v2, v3

    .line 29
    const/high16 v3, 0x3f800000    # 1.0f

    .line 31
    const/4 v4, 0x0

    .line 33
    if-gez v2, :cond_0

    .line 34
    move v2, v4

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v2, v3

    .line 38
    :goto_0
    iget v5, p1, Landroid/graphics/PointF;->y:F

    .line 39
    cmpg-float v5, v5, v4

    .line 41
    if-ltz v5, :cond_2

    .line 43
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 45
    move-result v5

    .line 48
    if-nez v5, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :cond_1
    iget p1, p1, Landroid/graphics/PointF;->y:F

    .line 52
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    .line 54
    move-result v0

    .line 57
    int-to-float v0, v0

    .line 58
    div-float/2addr p1, v0

    .line 59
    invoke-static {v3, p1}, Ljava/lang/Math;->min(FF)F

    .line 60
    move-result v4

    .line 63
    :cond_2
    :goto_1
    new-instance p1, Lcom/android/systemui/accessibility/floatingmenu/Position;

    .line 64
    invoke-direct {p1, v2, v4}, Lcom/android/systemui/accessibility/floatingmenu/Position;-><init>(FF)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewModel:Lcom/android/systemui/accessibility/floatingmenu/MenuViewModel;

    .line 69
    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuViewModel;->mInfoRepository:Lcom/android/systemui/accessibility/floatingmenu/MenuInfoRepository;

    .line 71
    iput-object p1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuInfoRepository;->mPercentagePosition:Lcom/android/systemui/accessibility/floatingmenu/Position;

    .line 73
    invoke-virtual {p1}, Lcom/android/systemui/accessibility/floatingmenu/Position;->toString()Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 78
    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuInfoRepository;->mContext:Landroid/content/Context;

    .line 79
    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 81
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 85
    move-result-object v0

    .line 88
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 89
    move-result-object v0

    .line 92
    const-string v1, "AccessibilityFloatingMenuPosition"

    .line 93
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 95
    move-result-object v0

    .line 98
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 99
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->setPercentagePosition(Lcom/android/systemui/accessibility/floatingmenu/Position;)V

    .line 104
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->onEdgeChangedIfNeeded()V

    .line 107
    return-void
    .line 110
.end method

.method public createFlingAnimation(Lcom/android/systemui/accessibility/floatingmenu/MenuView;Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;)Landroidx/dynamicanimation/animation/FlingAnimation;
    .locals 0

    .line 1
    new-instance p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 2
    invoke-direct {p0, p2, p1}, Landroidx/dynamicanimation/animation/FlingAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final fadeInNowIfEnabled()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mIsFadeEffectEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mHandler:Landroid/os/Handler;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 18
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 22
    return-void
    .line 25
.end method

.method public final fadeOutIfEnabled()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mIsFadeEffectEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mFadeOutAnimator:Landroid/animation/ValueAnimator;

    .line 7
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mHandler:Landroid/os/Handler;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 15
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    new-instance v1, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda1;

    .line 21
    invoke-direct {v1, v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda1;-><init>(Landroid/animation/ValueAnimator;)V

    .line 23
    const-wide/16 v2, 0xbb8

    .line 26
    invoke-virtual {p0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 28
    return-void
    .line 31
.end method

.method public final flingThenSpringMenuWith(Landroidx/dynamicanimation/animation/DynamicAnimation$1;FLandroidx/dynamicanimation/animation/SpringForce;Ljava/lang/Float;)V
    .locals 9

    .line 1
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 4
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;->mProperty:Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 9
    invoke-virtual {v1, v2}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v2}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->getMenuDraggableBounds()Landroid/graphics/Rect;

    .line 15
    move-result-object v3

    .line 18
    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 19
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 21
    move-result v5

    .line 24
    if-eqz v5, :cond_0

    .line 25
    iget v5, v3, Landroid/graphics/Rect;->left:I

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    iget v5, v3, Landroid/graphics/Rect;->top:I

    .line 30
    :goto_0
    int-to-float v5, v5

    .line 32
    invoke-virtual {p1, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result v4

    .line 36
    if-eqz v4, :cond_1

    .line 37
    iget v3, v3, Landroid/graphics/Rect;->right:I

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    .line 42
    :goto_1
    int-to-float v4, v3

    .line 44
    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->createFlingAnimation(Lcom/android/systemui/accessibility/floatingmenu/MenuView;Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;)Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 45
    move-result-object v7

    .line 48
    const v0, 0x3ff33333    # 1.9f

    .line 49
    invoke-virtual {v7, v0}, Landroidx/dynamicanimation/animation/FlingAnimation;->setFriction(F)V

    .line 52
    iput p2, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 55
    invoke-static {v1, v5}, Ljava/lang/Math;->min(FF)F

    .line 57
    move-result v0

    .line 60
    iput v0, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 61
    invoke-static {v1, v4}, Ljava/lang/Math;->max(FF)F

    .line 63
    move-result v0

    .line 66
    iput v0, v7, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 67
    new-instance v8, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;

    .line 69
    move-object v0, v8

    .line 71
    move-object v1, p0

    .line 72
    move-object v2, p4

    .line 73
    move v3, v5

    .line 74
    move-object v5, p1

    .line 75
    move-object v6, p3

    .line 76
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;Ljava/lang/Float;FFLandroidx/dynamicanimation/animation/DynamicAnimation$1;Landroidx/dynamicanimation/animation/SpringForce;)V

    .line 77
    invoke-virtual {v7, v8}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 80
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->cancelAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 83
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mPositionAnimations:Ljava/util/HashMap;

    .line 86
    invoke-virtual {v0, p1, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    invoke-virtual {v7}, Landroidx/dynamicanimation/animation/DynamicAnimation;->start()V

    .line 91
    return-void
    .line 94
.end method

.method public final isOnLeftSide()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTranslationX()F

    .line 4
    move-result v0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->getMenuDraggableBounds()Landroid/graphics/Rect;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/graphics/Rect;->centerX()I

    .line 12
    move-result p0

    .line 15
    int-to-float p0, p0

    .line 16
    cmpg-float p0, v0, p0

    .line 17
    if-gez p0, :cond_0

    .line 19
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 23
    :goto_0
    return p0
.end method

.method public final moveAndPersistPosition(Landroid/graphics/PointF;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 2
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 6
    invoke-virtual {v1, v2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Ljava/lang/Object;F)V

    .line 8
    iget v0, p1, Landroid/graphics/PointF;->y:F

    .line 11
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 13
    invoke-virtual {v1, v2, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Ljava/lang/Object;F)V

    .line 15
    iget v0, p1, Landroid/graphics/PointF;->x:F

    .line 18
    float-to-int v0, v0

    .line 20
    iget v1, p1, Landroid/graphics/PointF;->y:F

    .line 21
    float-to-int v1, v1

    .line 23
    iget-object v2, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mBoundsInParent:Landroid/graphics/Rect;

    .line 24
    invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 26
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->constrainPositionAndUpdate(Landroid/graphics/PointF;)V

    .line 29
    return-void
    .line 32
.end method

.method public final moveToEdgeAndHide()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->updateMenuMoveToTucked(Z)V

    .line 5
    iget-object v1, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->getMenuPosition()Landroid/graphics/PointF;

    .line 10
    move-result-object v1

    .line 13
    iget-object v2, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mMenuViewAppearance:Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;

    .line 14
    iget v3, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSizeType:I

    .line 16
    if-nez v3, :cond_0

    .line 18
    iget v4, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallPadding:I

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    iget v4, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargePadding:I

    .line 23
    :goto_0
    mul-int/lit8 v4, v4, 0x2

    .line 25
    if-nez v3, :cond_1

    .line 27
    iget v2, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mSmallIconSize:I

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    iget v2, v2, Lcom/android/systemui/accessibility/floatingmenu/MenuViewAppearance;->mLargeIconSize:I

    .line 32
    :goto_1
    add-int/2addr v2, v4

    .line 34
    int-to-float v2, v2

    .line 35
    const/high16 v3, 0x40000000    # 2.0f

    .line 36
    div-float/2addr v2, v3

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->isOnLeftSide()Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_2

    .line 43
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 45
    sub-float/2addr v3, v2

    .line 47
    goto :goto_2

    .line 48
    :cond_2
    iget v3, v1, Landroid/graphics/PointF;->x:F

    .line 49
    add-float/2addr v3, v2

    .line 51
    :goto_2
    new-instance v2, Landroid/graphics/PointF;

    .line 52
    iget v4, v1, Landroid/graphics/PointF;->y:F

    .line 54
    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 56
    iget v3, v2, Landroid/graphics/PointF;->x:F

    .line 59
    sget-object v4, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 61
    invoke-virtual {v4, v0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Ljava/lang/Object;F)V

    .line 63
    iget v2, v2, Landroid/graphics/PointF;->y:F

    .line 66
    sget-object v3, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 68
    invoke-virtual {v3, v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;->setValue(Ljava/lang/Object;F)V

    .line 70
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 73
    float-to-int v2, v2

    .line 75
    iget v1, v1, Landroid/graphics/PointF;->y:F

    .line 76
    float-to-int v1, v1

    .line 78
    iget-object v0, v0, Lcom/android/systemui/accessibility/floatingmenu/MenuView;->mBoundsInParent:Landroid/graphics/Rect;

    .line 79
    invoke-virtual {v0, v2, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->fadeOutIfEnabled()V

    .line 84
    return-void
    .line 87
.end method

.method public springMenuWith(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;Landroidx/dynamicanimation/animation/SpringForce;FF)V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$MenuPositionProperty;-><init>(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 4
    new-instance v1, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mMenuView:Lcom/android/systemui/accessibility/floatingmenu/MenuView;

    .line 9
    invoke-direct {v1, v0, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V

    .line 11
    iput-object p2, v1, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 14
    new-instance p2, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda0;

    .line 16
    invoke-direct {p2, p0, p4}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;F)V

    .line 18
    invoke-virtual {v1, p2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V

    .line 21
    iput p3, v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->cancelAnimation(Landroidx/dynamicanimation/animation/DynamicAnimation$ViewProperty;)V

    .line 26
    iget-object p0, p0, Lcom/android/systemui/accessibility/floatingmenu/MenuAnimationController;->mPositionAnimations:Ljava/util/HashMap;

    .line 29
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    invoke-virtual {v1, p4}, Landroidx/dynamicanimation/animation/SpringAnimation;->animateToFinalPosition(F)V

    .line 34
    return-void
    .line 37
.end method
