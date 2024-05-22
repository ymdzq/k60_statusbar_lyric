.class public Lcom/google/android/material/appbar/AppBarLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/coordinatorlayout/widget/CoordinatorLayout$AttachedBehavior;


# instance fields
.field public behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

.field public currentOffset:I

.field public downPreScrollRange:I

.field public downScrollRange:I

.field public elevationOverlayAnimator:Landroid/animation/ValueAnimator;

.field public haveChildWithInterpolator:Z

.field public lastInsets:Landroidx/core/view/WindowInsetsCompat;

.field public liftOnScroll:Z

.field public final liftOnScrollListeners:Ljava/util/List;

.field public liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

.field public liftOnScrollTargetViewId:I

.field public liftable:Z

.field public liftableOverride:Z

.field public lifted:Z

.field public listeners:Ljava/util/List;

.field public pendingAction:I

.field public statusBarForeground:Landroid/graphics/drawable/Drawable;

.field public tmpStatesArray:[I

.field public totalScrollRange:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const v0, 0x7f040093    # @attr/appBarLayoutStyle

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/material/appbar/AppBarLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 14

    move-object v0, p0

    move-object/from16 v7, p2

    move/from16 v8, p3

    const v1, 0x7f1406a1    # @style/Widget.Design.AppBarLayout

    move-object v2, p1

    .line 3
    invoke-static {p1, v7, v8, v1}, Lcom/google/android/material/theme/overlay/MaterialThemeOverlay;->wrap(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {p0, v1, v7, v8}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v9, -0x1

    .line 4
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 5
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 6
    iput v9, v0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    const/4 v10, 0x0

    .line 7
    iput v10, v0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollListeners:Ljava/util/List;

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    const/4 v12, 0x1

    .line 10
    invoke-virtual {p0, v12}, Lcom/google/android/material/appbar/AppBarLayout;->setOrientation(I)V

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOutlineProvider()Landroid/view/ViewOutlineProvider;

    move-result-object v1

    sget-object v2, Landroid/view/ViewOutlineProvider;->BACKGROUND:Landroid/view/ViewOutlineProvider;

    if-ne v1, v2, :cond_0

    .line 12
    sget-object v1, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v1}, Landroid/view/View;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    :cond_0
    const v5, 0x7f1406a1    # @style/Widget.Design.AppBarLayout

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 14
    sget-object v3, Lcom/google/android/material/appbar/ViewUtilsLollipop;->STATE_LIST_ANIM_ATTRS:[I

    new-array v6, v10, [I

    move-object v1, v13

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 15
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 16
    :try_start_0
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v1, v10, v10}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    invoke-static {v13, v2}, Landroid/animation/AnimatorInflater;->loadStateListAnimator(Landroid/content/Context;I)Landroid/animation/StateListAnimator;

    move-result-object v2

    .line 18
    invoke-virtual {p0, v2}, Landroid/view/View;->setStateListAnimator(Landroid/animation/StateListAnimator;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_1
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 20
    sget-object v3, Lcom/google/android/material/R$styleable;->AppBarLayout:[I

    const v5, 0x7f1406a1    # @style/Widget.Design.AppBarLayout

    new-array v6, v10, [I

    move-object v1, v11

    move-object/from16 v2, p2

    move/from16 v4, p3

    .line 21
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 22
    invoke-virtual {v1, v10}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 23
    invoke-static {p0, v2}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    .line 24
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/ColorDrawable;

    .line 26
    new-instance v3, Lcom/google/android/material/shape/MaterialShapeDrawable;

    invoke-direct {v3}, Lcom/google/android/material/shape/MaterialShapeDrawable;-><init>()V

    .line 27
    invoke-virtual {v2}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/google/android/material/shape/MaterialShapeDrawable;->setFillColor(Landroid/content/res/ColorStateList;)V

    .line 28
    invoke-virtual {v3, v11}, Lcom/google/android/material/shape/MaterialShapeDrawable;->initializeElevationOverlay(Landroid/content/Context;)V

    .line 29
    invoke-static {p0, v3}, Landroidx/core/view/ViewCompat$Api16Impl;->setBackground(Landroid/view/View;Landroid/graphics/drawable/Drawable;)V

    :cond_2
    const/4 v2, 0x4

    .line 30
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_4

    .line 31
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v12

    goto :goto_0

    :cond_3
    move v2, v4

    :goto_0
    or-int/2addr v2, v10

    or-int/2addr v2, v10

    .line 32
    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    :cond_4
    const/4 v2, 0x3

    .line 34
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 35
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    int-to-float v2, v2

    .line 36
    invoke-static {v2, p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(FLandroid/view/View;)V

    .line 37
    :cond_5
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 38
    invoke-virtual {v1, v4, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 39
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setKeyboardNavigationCluster(Z)V

    .line 40
    :cond_6
    invoke-virtual {v1, v12}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 41
    invoke-virtual {v1, v12, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    .line 42
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setTouchscreenBlocksFocus(Z)V

    :cond_7
    const/4 v2, 0x5

    .line 43
    invoke-virtual {v1, v2, v10}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    const/4 v2, 0x6

    .line 44
    invoke-virtual {v1, v2, v9}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    const/4 v2, 0x7

    .line 45
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 46
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 47
    new-instance v1, Lcom/google/android/material/appbar/AppBarLayout$1;

    invoke-direct {v1, p0}, Lcom/google/android/material/appbar/AppBarLayout$1;-><init>(Lcom/google/android/material/appbar/AppBarLayout;)V

    .line 48
    invoke-static {p0, v1}, Landroidx/core/view/ViewCompat$Api21Impl;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void

    :catchall_0
    move-exception v0

    .line 49
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 50
    throw v0
.end method

.method public static generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;
    .locals 1

    .line 5
    instance-of v0, p0, Landroid/widget/LinearLayout$LayoutParams;

    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p0, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    return-object v0

    .line 7
    :cond_0
    instance-of v0, p0, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v0, :cond_1

    .line 8
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    return-object v0

    .line 9
    :cond_1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {v0, p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method


# virtual methods
.method public final checkLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 0

    .line 1
    instance-of p0, p1, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 2
    return p0
    .line 4
.end method

.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->draw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 9
    move-result v0

    .line 12
    if-lez v0, :cond_0

    .line 13
    const/4 v0, 0x1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    const/4 v0, 0x0

    .line 17
    :goto_0
    if-eqz v0, :cond_1

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 24
    neg-int v1, v1

    .line 26
    int-to-float v1, v1

    .line 27
    const/4 v2, 0x0

    .line 28
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 29
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 32
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 37
    :cond_1
    return-void
    .line 40
.end method

.method public final drawableStateChanged()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final generateDefaultLayoutParams()Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateDefaultLayoutParams()Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    new-instance p0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-direct {p0}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>()V

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .line 3
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public final generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .line 4
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0, p1}, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method public final bridge synthetic generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/google/android/material/appbar/AppBarLayout;->generateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    move-result-object p0

    return-object p0
.end method

.method public getBehavior()Landroidx/coordinatorlayout/widget/CoordinatorLayout$Behavior;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 2
    invoke-direct {v0}, Lcom/google/android/material/appbar/AppBarLayout$Behavior;-><init>()V

    .line 4
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 7
    return-object v0
    .line 9
.end method

.method public getDownNestedPreScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 8
    move-result v0

    .line 11
    add-int/lit8 v0, v0, -0x1

    .line 12
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ltz v0, :cond_7

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 18
    move-result-object v3

    .line 21
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    .line 22
    move-result v4

    .line 25
    const/16 v5, 0x8

    .line 26
    if-ne v4, v5, :cond_1

    .line 28
    goto :goto_3

    .line 30
    :cond_1
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v4

    .line 34
    check-cast v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 35
    invoke-virtual {v3}, Landroid/view/View;->getMeasuredHeight()I

    .line 37
    move-result v5

    .line 40
    iget v6, v4, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 41
    and-int/lit8 v7, v6, 0x5

    .line 43
    const/4 v8, 0x5

    .line 45
    if-ne v7, v8, :cond_5

    .line 46
    iget v7, v4, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 48
    iget v4, v4, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 50
    add-int/2addr v7, v4

    .line 52
    and-int/lit8 v4, v6, 0x8

    .line 53
    if-eqz v4, :cond_2

    .line 55
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 57
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 59
    move-result v4

    .line 62
    :goto_1
    add-int/2addr v4, v7

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    and-int/lit8 v4, v6, 0x2

    .line 65
    if-eqz v4, :cond_3

    .line 67
    sget-object v4, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 69
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 71
    move-result v4

    .line 74
    sub-int v4, v5, v4

    .line 75
    goto :goto_1

    .line 77
    :cond_3
    add-int v4, v7, v5

    .line 78
    :goto_2
    if-nez v0, :cond_4

    .line 80
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 82
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 84
    move-result v3

    .line 87
    if-eqz v3, :cond_4

    .line 88
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 90
    move-result v3

    .line 93
    sub-int/2addr v5, v3

    .line 94
    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    .line 95
    move-result v4

    .line 98
    :cond_4
    add-int/2addr v2, v4

    .line 99
    goto :goto_3

    .line 100
    :cond_5
    if-lez v2, :cond_6

    .line 101
    goto :goto_4

    .line 103
    :cond_6
    :goto_3
    add-int/lit8 v0, v0, -0x1

    .line 104
    goto :goto_0

    .line 106
    :cond_7
    :goto_4
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 107
    move-result v0

    .line 110
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 111
    return v0
    .line 113
.end method

.method public getDownNestedScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_3

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v5

    .line 24
    const/16 v6, 0x8

    .line 25
    if-ne v5, v6, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v6

    .line 39
    iget v7, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 40
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 42
    add-int/2addr v7, v8

    .line 44
    add-int/2addr v7, v6

    .line 45
    iget v5, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 46
    and-int/lit8 v6, v5, 0x1

    .line 48
    if-eqz v6, :cond_3

    .line 50
    add-int/2addr v3, v7

    .line 52
    and-int/lit8 v5, v5, 0x2

    .line 53
    if-eqz v5, :cond_2

    .line 55
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 57
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 59
    move-result v0

    .line 62
    sub-int/2addr v3, v0

    .line 63
    goto :goto_2

    .line 64
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 65
    goto :goto_0

    .line 67
    :cond_3
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 68
    move-result v0

    .line 71
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 72
    return v0
    .line 74
.end method

.method public getLiftOnScrollTargetViewId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 2
    return p0
    .line 4
.end method

.method public final getMinimumHeightForVisibleOverlappingContent()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 2
    move-result v0

    .line 5
    sget-object v1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 6
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x2

    .line 14
    add-int/2addr v1, v0

    .line 16
    return v1

    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 18
    move-result v1

    .line 21
    const/4 v2, 0x1

    .line 22
    if-lt v1, v2, :cond_1

    .line 23
    sub-int/2addr v1, v2

    .line 25
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 26
    move-result-object v1

    .line 29
    invoke-static {v1}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 30
    move-result v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/4 v1, 0x0

    .line 35
    :goto_1
    if-eqz v1, :cond_2

    .line 36
    goto :goto_0

    .line 38
    :cond_2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getHeight()I

    .line 39
    move-result p0

    .line 42
    div-int/lit8 p0, p0, 0x3

    .line 43
    return p0
    .line 45
.end method

.method public getPendingAction()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 2
    return p0
    .line 4
.end method

.method public getStatusBarForeground()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTargetElevation()F
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getTopInset()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 6
    move-result p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public final getTotalScrollRange()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 8
    move-result v0

    .line 11
    const/4 v1, 0x0

    .line 12
    move v2, v1

    .line 13
    move v3, v2

    .line 14
    :goto_0
    if-ge v2, v0, :cond_4

    .line 15
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 17
    move-result-object v4

    .line 20
    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    .line 21
    move-result v5

    .line 24
    const/16 v6, 0x8

    .line 25
    if-ne v5, v6, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v5

    .line 33
    check-cast v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 34
    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    .line 36
    move-result v6

    .line 39
    iget v7, v5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 40
    and-int/lit8 v8, v7, 0x1

    .line 42
    if-eqz v8, :cond_4

    .line 44
    iget v8, v5, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 46
    add-int/2addr v6, v8

    .line 48
    iget v5, v5, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 49
    add-int/2addr v6, v5

    .line 51
    add-int/2addr v6, v3

    .line 52
    if-nez v2, :cond_2

    .line 53
    sget-object v3, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 55
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 57
    move-result v3

    .line 60
    if-eqz v3, :cond_2

    .line 61
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 63
    move-result v3

    .line 66
    sub-int/2addr v6, v3

    .line 67
    :cond_2
    move v3, v6

    .line 68
    and-int/lit8 v5, v7, 0x2

    .line 69
    if-eqz v5, :cond_3

    .line 71
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 73
    invoke-static {v4}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 75
    move-result v0

    .line 78
    sub-int/2addr v3, v0

    .line 79
    goto :goto_2

    .line 80
    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 81
    goto :goto_0

    .line 83
    :cond_4
    :goto_2
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 84
    move-result v0

    .line 87
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 88
    return v0
    .line 90
.end method

.method public getUpNestedPreScrollRange()I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTotalScrollRange()I

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public final invalidateScrollRanges()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 7
    if-eq v2, v1, :cond_1

    .line 9
    iget v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 11
    if-eqz v2, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    sget-object v2, Landroidx/customview/view/AbsSavedState;->EMPTY_STATE:Landroidx/customview/view/AbsSavedState$1;

    .line 16
    invoke-virtual {v0, v2, p0}, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->saveScrollState(Landroid/os/Parcelable;Lcom/google/android/material/appbar/AppBarLayout;)Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 18
    move-result-object v0

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 23
    :goto_1
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->totalScrollRange:I

    .line 24
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downPreScrollRange:I

    .line 26
    iput v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->downScrollRange:I

    .line 28
    if-eqz v0, :cond_3

    .line 30
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->behavior:Lcom/google/android/material/appbar/AppBarLayout$Behavior;

    .line 32
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 34
    if-eqz v1, :cond_2

    .line 36
    goto :goto_2

    .line 38
    :cond_2
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior;->savedState:Lcom/google/android/material/appbar/AppBarLayout$BaseBehavior$SavedState;

    .line 39
    :cond_3
    :goto_2
    return-void
    .line 41
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    invoke-static {p0}, Lcom/google/android/material/shape/MaterialShapeUtils;->setParentAbsoluteElevation(Landroid/view/View;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onCreateDrawableState(I)[I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x4

    .line 6
    new-array v0, v0, [I

    .line 7
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->tmpStatesArray:[I

    .line 11
    array-length v1, v0

    .line 13
    add-int/2addr p1, v1

    .line 14
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onCreateDrawableState(I)[I

    .line 15
    move-result-object p1

    .line 18
    iget-boolean v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 19
    if-eqz v1, :cond_1

    .line 21
    const v2, 0x7f04070b    # @attr/state_liftable

    .line 23
    goto :goto_0

    .line 26
    :cond_1
    const v2, -0x7f04070b

    .line 27
    :goto_0
    const/4 v3, 0x0

    .line 30
    aput v2, v0, v3

    .line 31
    if-eqz v1, :cond_2

    .line 33
    iget-boolean v2, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 35
    if-eqz v2, :cond_2

    .line 37
    const v2, 0x7f04070c    # @attr/state_lifted

    .line 39
    goto :goto_1

    .line 42
    :cond_2
    const v2, -0x7f04070c

    .line 43
    :goto_1
    const/4 v3, 0x1

    .line 46
    aput v2, v0, v3

    .line 47
    if-eqz v1, :cond_3

    .line 49
    const v2, 0x7f040702    # @attr/state_collapsible

    .line 51
    goto :goto_2

    .line 54
    :cond_3
    const v2, -0x7f040702

    .line 55
    :goto_2
    const/4 v3, 0x2

    .line 58
    aput v2, v0, v3

    .line 59
    if-eqz v1, :cond_4

    .line 61
    iget-boolean p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 63
    if-eqz p0, :cond_4

    .line 65
    const p0, 0x7f040701    # @attr/state_collapsed

    .line 67
    goto :goto_3

    .line 70
    :cond_4
    const p0, -0x7f040701

    .line 71
    :goto_3
    const/4 v1, 0x3

    .line 74
    aput p0, v0, v1

    .line 75
    invoke-static {p1, v0}, Landroid/widget/LinearLayout;->mergeDrawableStates([I[I)[I

    .line 77
    move-result-object p0

    .line 80
    return-object p0
    .line 81
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 9
    :cond_0
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 13
    return-void
    .line 15
.end method

.method public final onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 5
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 7
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 20
    move-result p1

    .line 23
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 24
    move-result p3

    .line 27
    sub-int/2addr p3, p2

    .line 28
    :goto_0
    if-ltz p3, :cond_0

    .line 29
    invoke-virtual {p0, p3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 31
    move-result-object p4

    .line 34
    invoke-virtual {p4, p1}, Landroid/view/View;->offsetTopAndBottom(I)V

    .line 35
    add-int/lit8 p3, p3, -0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 41
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 45
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 47
    move-result p3

    .line 50
    move p4, p1

    .line 51
    :goto_1
    if-ge p4, p3, :cond_2

    .line 52
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 54
    move-result-object p5

    .line 57
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 58
    move-result-object p5

    .line 61
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 62
    iget-object p5, p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollInterpolator:Landroid/view/animation/Interpolator;

    .line 64
    if-eqz p5, :cond_1

    .line 66
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->haveChildWithInterpolator:Z

    .line 68
    goto :goto_2

    .line 70
    :cond_1
    add-int/lit8 p4, p4, 0x1

    .line 71
    goto :goto_1

    .line 73
    :cond_2
    :goto_2
    iget-object p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 74
    if-eqz p3, :cond_3

    .line 76
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 78
    move-result p4

    .line 81
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 82
    move-result p5

    .line 85
    invoke-virtual {p3, p1, p1, p4, p5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    :cond_3
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 89
    if-nez p3, :cond_9

    .line 91
    iget-boolean p3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 93
    if-nez p3, :cond_8

    .line 95
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 97
    move-result p3

    .line 100
    move p4, p1

    .line 101
    :goto_3
    if-ge p4, p3, :cond_6

    .line 102
    invoke-virtual {p0, p4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 104
    move-result-object p5

    .line 107
    invoke-virtual {p5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 108
    move-result-object p5

    .line 111
    check-cast p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;

    .line 112
    iget p5, p5, Lcom/google/android/material/appbar/AppBarLayout$LayoutParams;->scrollFlags:I

    .line 114
    and-int/lit8 v0, p5, 0x1

    .line 116
    if-ne v0, p2, :cond_4

    .line 118
    and-int/lit8 p5, p5, 0xa

    .line 120
    if-eqz p5, :cond_4

    .line 122
    move p5, p2

    .line 124
    goto :goto_4

    .line 125
    :cond_4
    move p5, p1

    .line 126
    :goto_4
    if-eqz p5, :cond_5

    .line 127
    move p3, p2

    .line 129
    goto :goto_5

    .line 130
    :cond_5
    add-int/lit8 p4, p4, 0x1

    .line 131
    goto :goto_3

    .line 133
    :cond_6
    move p3, p1

    .line 134
    :goto_5
    if-eqz p3, :cond_7

    .line 135
    goto :goto_6

    .line 137
    :cond_7
    move p2, p1

    .line 138
    :cond_8
    :goto_6
    iget-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 139
    if-eq p1, p2, :cond_9

    .line 141
    iput-boolean p2, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftable:Z

    .line 143
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 145
    :cond_9
    return-void
    .line 148
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    move-result p1

    .line 8
    const/high16 v0, 0x40000000    # 2.0f

    .line 9
    if-eq p1, v0, :cond_2

    .line 11
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->shouldOffsetFirstChild()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_2

    .line 25
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 27
    move-result v0

    .line 30
    const/high16 v1, -0x80000000

    .line 31
    if-eq p1, v1, :cond_1

    .line 33
    if-eqz p1, :cond_0

    .line 35
    goto :goto_0

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 38
    move-result p1

    .line 41
    add-int/2addr v0, p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 44
    move-result p1

    .line 47
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 48
    move-result v0

    .line 51
    add-int/2addr v0, p1

    .line 52
    const/4 p1, 0x0

    .line 53
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 54
    move-result p2

    .line 57
    invoke-static {v0, p1, p2}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 58
    move-result v0

    .line 61
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 62
    move-result p1

    .line 65
    invoke-virtual {p0, p1, v0}, Landroid/widget/LinearLayout;->setMeasuredDimension(II)V

    .line 66
    :cond_2
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->invalidateScrollRanges()V

    .line 69
    return-void
    .line 72
.end method

.method public final onOffsetChanged(I)V
    .locals 13

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->currentOffset:I

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->willNotDraw()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 10
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 15
    if-eqz v0, :cond_7

    .line 17
    check-cast v0, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    move v2, v1

    .line 26
    :goto_0
    if-ge v2, v0, :cond_7

    .line 27
    iget-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->listeners:Ljava/util/List;

    .line 29
    check-cast v3, Ljava/util/ArrayList;

    .line 31
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 33
    move-result-object v3

    .line 36
    check-cast v3, Lcom/google/android/material/appbar/AppBarLayout$BaseOnOffsetChangedListener;

    .line 37
    if-eqz v3, :cond_6

    .line 39
    check-cast v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;

    .line 41
    iget-object v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout$OffsetUpdateListener;->this$0:Lcom/google/android/material/appbar/CollapsingToolbarLayout;

    .line 43
    iput p1, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 45
    iget-object v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->lastInsets:Landroidx/core/view/WindowInsetsCompat;

    .line 47
    if-eqz v4, :cond_1

    .line 49
    invoke-virtual {v4}, Landroidx/core/view/WindowInsetsCompat;->getSystemWindowInsetTop()I

    .line 51
    move-result v4

    .line 54
    goto :goto_1

    .line 55
    :cond_1
    move v4, v1

    .line 56
    :goto_1
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 57
    move-result v5

    .line 60
    move v6, v1

    .line 61
    :goto_2
    if-ge v6, v5, :cond_4

    .line 62
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 64
    move-result-object v7

    .line 67
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 68
    move-result-object v8

    .line 71
    check-cast v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 72
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 74
    move-result-object v9

    .line 77
    iget v10, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->collapseMode:I

    .line 78
    const/4 v11, 0x1

    .line 80
    if-eq v10, v11, :cond_3

    .line 81
    const/4 v7, 0x2

    .line 83
    if-eq v10, v7, :cond_2

    .line 84
    goto :goto_3

    .line 86
    :cond_2
    neg-int v7, p1

    .line 87
    int-to-float v7, v7

    .line 88
    iget v8, v8, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;->parallaxMult:F

    .line 89
    mul-float/2addr v7, v8

    .line 91
    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    .line 92
    move-result v7

    .line 95
    invoke-virtual {v9, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 96
    goto :goto_3

    .line 99
    :cond_3
    neg-int v8, p1

    .line 100
    invoke-static {v7}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getViewOffsetHelper(Landroid/view/View;)Lcom/google/android/material/appbar/ViewOffsetHelper;

    .line 101
    move-result-object v10

    .line 104
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 105
    move-result-object v11

    .line 108
    check-cast v11, Lcom/google/android/material/appbar/CollapsingToolbarLayout$LayoutParams;

    .line 109
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 111
    move-result v12

    .line 114
    iget v10, v10, Lcom/google/android/material/appbar/ViewOffsetHelper;->layoutTop:I

    .line 115
    sub-int/2addr v12, v10

    .line 117
    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    .line 118
    move-result v7

    .line 121
    sub-int/2addr v12, v7

    .line 122
    iget v7, v11, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 123
    sub-int/2addr v12, v7

    .line 125
    invoke-static {v8, v1, v12}, Landroidx/core/math/MathUtils;->clamp(III)I

    .line 126
    move-result v7

    .line 129
    invoke-virtual {v9, v7}, Lcom/google/android/material/appbar/ViewOffsetHelper;->setTopAndBottomOffset(I)Z

    .line 130
    :goto_3
    add-int/lit8 v6, v6, 0x1

    .line 133
    goto :goto_2

    .line 135
    :cond_4
    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->updateScrimVisibility()V

    .line 136
    iget-object v5, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->statusBarScrim:Landroid/graphics/drawable/Drawable;

    .line 139
    if-eqz v5, :cond_5

    .line 141
    if-lez v4, :cond_5

    .line 143
    sget-object v5, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 145
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 147
    :cond_5
    invoke-virtual {v3}, Landroid/widget/FrameLayout;->getHeight()I

    .line 150
    move-result v5

    .line 153
    sget-object v6, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 154
    invoke-static {v3}, Landroidx/core/view/ViewCompat$Api16Impl;->getMinimumHeight(Landroid/view/View;)I

    .line 156
    move-result v6

    .line 159
    sub-int v6, v5, v6

    .line 160
    sub-int/2addr v6, v4

    .line 162
    invoke-virtual {v3}, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->getScrimVisibleHeightTrigger()I

    .line 163
    move-result v4

    .line 166
    sub-int/2addr v5, v4

    .line 167
    iget-object v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 168
    int-to-float v5, v5

    .line 170
    int-to-float v7, v6

    .line 171
    div-float/2addr v5, v7

    .line 172
    const/high16 v8, 0x3f800000    # 1.0f

    .line 173
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 175
    move-result v5

    .line 178
    iput v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeStartFraction:F

    .line 179
    const/high16 v9, 0x3f000000    # 0.5f

    .line 181
    invoke-static {v8, v5, v9, v5}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 183
    move-result v5

    .line 186
    iput v5, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->fadeModeThresholdFraction:F

    .line 187
    iget-object v4, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->collapsingTextHelper:Lcom/google/android/material/internal/CollapsingTextHelper;

    .line 189
    iget v3, v3, Lcom/google/android/material/appbar/CollapsingToolbarLayout;->currentOffset:I

    .line 191
    add-int/2addr v3, v6

    .line 193
    iput v3, v4, Lcom/google/android/material/internal/CollapsingTextHelper;->currentOffsetY:I

    .line 194
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 196
    move-result v3

    .line 199
    int-to-float v3, v3

    .line 200
    div-float/2addr v3, v7

    .line 201
    invoke-virtual {v4, v3}, Lcom/google/android/material/internal/CollapsingTextHelper;->setExpansionFraction(F)V

    .line 202
    :cond_6
    add-int/lit8 v2, v2, 0x1

    .line 205
    goto/16 :goto_0

    .line 207
    :cond_7
    return-void
    .line 209
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Lcom/google/android/material/shape/MaterialShapeUtils;->setElevation(Landroid/view/View;F)V

    .line 5
    return-void
    .line 8
.end method

.method public setExpanded(Z)V
    .locals 1

    .line 1
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 2
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api19Impl;->isLaidOut(Landroid/view/View;)Z

    move-result v0

    .line 3
    invoke-virtual {p0, p1, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setExpanded(ZZ)V

    return-void
.end method

.method public setExpanded(ZZ)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    if-eqz p2, :cond_1

    const/4 p2, 0x4

    goto :goto_1

    :cond_1
    const/4 p2, 0x0

    :goto_1
    or-int/2addr p1, p2

    or-int/lit8 p1, p1, 0x8

    .line 4
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->pendingAction:I

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestLayout()V

    return-void
.end method

.method public setLiftOnScroll(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 2
    return-void
    .line 4
.end method

.method public setLiftOnScrollTargetView(Landroid/view/View;)V
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 3
    if-nez p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 11
    :cond_0
    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    iput-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 23
    :goto_0
    return-void
    .line 25
.end method

.method public setLiftOnScrollTargetViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 2
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->clear()V

    .line 8
    :cond_0
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setLiftableOverrideEnabled(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setLiftedState(Z)Z
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftableOverride:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    xor-int/2addr v0, v1

    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v0, :cond_3

    .line 7
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 9
    if-eq v0, p1, :cond_3

    .line 11
    iput-boolean p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->lifted:Z

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->refreshDrawableState()V

    .line 15
    iget-boolean v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScroll:Z

    .line 18
    if-eqz v0, :cond_4

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 22
    move-result-object v0

    .line 25
    instance-of v0, v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 26
    if-eqz v0, :cond_4

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/google/android/material/shape/MaterialShapeDrawable;

    .line 34
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 36
    move-result-object v3

    .line 39
    const v4, 0x7f070285    # @dimen/design_appbar_elevation '4.0dp'

    .line 40
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 43
    move-result v3

    .line 46
    const/4 v4, 0x0

    .line 47
    if-eqz p1, :cond_0

    .line 48
    move v5, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v5, v3

    .line 52
    :goto_0
    if-eqz p1, :cond_1

    .line 53
    goto :goto_1

    .line 55
    :cond_1
    move v3, v4

    .line 56
    :goto_1
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 57
    if-eqz p1, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 61
    :cond_2
    const/4 p1, 0x2

    .line 64
    new-array p1, p1, [F

    .line 65
    aput v5, p1, v2

    .line 67
    aput v3, p1, v1

    .line 69
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 71
    move-result-object p1

    .line 74
    iput-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 75
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 77
    move-result-object v2

    .line 80
    const v3, 0x7f0b0009    # @integer/app_bar_elevation_anim_duration '150'

    .line 81
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 84
    move-result v2

    .line 87
    int-to-long v2, v2

    .line 88
    invoke-virtual {p1, v2, v3}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 89
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 92
    sget-object v2, Lcom/google/android/material/animation/AnimationUtils;->LINEAR_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 94
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 96
    iget-object p1, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 99
    new-instance v2, Lcom/google/android/material/appbar/AppBarLayout$2;

    .line 101
    invoke-direct {v2, p0, v0}, Lcom/google/android/material/appbar/AppBarLayout$2;-><init>(Lcom/google/android/material/appbar/AppBarLayout;Lcom/google/android/material/shape/MaterialShapeDrawable;)V

    .line 103
    invoke-virtual {p1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 106
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->elevationOverlayAnimator:Landroid/animation/ValueAnimator;

    .line 109
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 111
    goto :goto_2

    .line 114
    :cond_3
    move v1, v2

    .line 115
    :cond_4
    :goto_2
    return v1
    .line 116
.end method

.method public setOrientation(I)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 5
    return-void

    .line 8
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 9
    const-string p1, "AppBarLayout is always vertical and does not support horizontal orientation"

    .line 11
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    throw p0
    .line 16
.end method

.method public setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eq v0, p1, :cond_6

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 9
    :cond_0
    if-eqz p1, :cond_1

    .line 12
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object v1

    .line 17
    :cond_1
    iput-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 18
    const/4 p1, 0x0

    .line 20
    const/4 v0, 0x1

    .line 21
    if-eqz v1, :cond_4

    .line 22
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_2

    .line 28
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 30
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDrawableState()[I

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 39
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 41
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api17Impl;->getLayoutDirection(Landroid/view/View;)I

    .line 43
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Landroid/graphics/drawable/Drawable;->setLayoutDirection(I)Z

    .line 47
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 50
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 52
    move-result v2

    .line 55
    if-nez v2, :cond_3

    .line 56
    move v2, v0

    .line 58
    goto :goto_0

    .line 59
    :cond_3
    move v2, p1

    .line 60
    :goto_0
    invoke-virtual {v1, v2, p1}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 61
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 64
    invoke-virtual {v1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 66
    :cond_4
    iget-object v1, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 69
    if-eqz v1, :cond_5

    .line 71
    invoke-virtual {p0}, Lcom/google/android/material/appbar/AppBarLayout;->getTopInset()I

    .line 73
    move-result v1

    .line 76
    if-lez v1, :cond_5

    .line 77
    move p1, v0

    .line 79
    :cond_5
    xor-int/2addr p1, v0

    .line 80
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setWillNotDraw(Z)V

    .line 81
    sget-object p1, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 84
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->postInvalidateOnAnimation(Landroid/view/View;)V

    .line 86
    :cond_6
    return-void
    .line 89
.end method

.method public setStatusBarForegroundColor(I)V
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    .line 2
    invoke-direct {v0, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 7
    return-void
    .line 10
.end method

.method public setStatusBarForegroundResource(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {p1, v0}, Landroidx/appcompat/content/res/AppCompatResources;->getDrawable(ILandroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Lcom/google/android/material/appbar/AppBarLayout;->setStatusBarForeground(Landroid/graphics/drawable/Drawable;)V

    .line 10
    return-void
    .line 13
.end method

.method public setTargetElevation(F)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-static {p1, p0}, Lcom/google/android/material/appbar/ViewUtilsLollipop;->setDefaultAppBarLayoutStateListAnimator(FLandroid/view/View;)V

    .line 2
    return-void
    .line 5
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 2
    const/4 v0, 0x0

    .line 5
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move p1, v0

    .line 10
    :goto_0
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 11
    if-eqz p0, :cond_1

    .line 13
    invoke-virtual {p0, p1, v0}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    .line 15
    :cond_1
    return-void
    .line 18
.end method

.method public final shouldLift(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_2

    .line 6
    iget v0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 8
    if-eq v0, v1, :cond_2

    .line 10
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move-object v0, v2

    .line 19
    :goto_0
    if-nez v0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 22
    move-result-object v3

    .line 25
    instance-of v3, v3, Landroid/view/ViewGroup;

    .line 26
    if-eqz v3, :cond_1

    .line 28
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iget v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetViewId:I

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    :cond_1
    if-eqz v0, :cond_2

    .line 42
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 44
    invoke-direct {v3, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 46
    iput-object v3, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->liftOnScrollTargetView:Ljava/lang/ref/WeakReference;

    .line 51
    if-eqz p0, :cond_3

    .line 53
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    move-object v2, p0

    .line 59
    check-cast v2, Landroid/view/View;

    .line 60
    :cond_3
    if-nez v2, :cond_4

    .line 62
    goto :goto_1

    .line 64
    :cond_4
    move-object p1, v2

    .line 65
    :goto_1
    if-eqz p1, :cond_6

    .line 66
    invoke-virtual {p1, v1}, Landroid/view/View;->canScrollVertically(I)Z

    .line 68
    move-result p0

    .line 71
    if-nez p0, :cond_5

    .line 72
    invoke-virtual {p1}, Landroid/view/View;->getScrollY()I

    .line 74
    move-result p0

    .line 77
    if-lez p0, :cond_6

    .line 78
    :cond_5
    const/4 p0, 0x1

    .line 80
    goto :goto_2

    .line 81
    :cond_6
    const/4 p0, 0x0

    .line 82
    :goto_2
    return p0
    .line 83
.end method

.method public final shouldOffsetFirstChild()Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-lez v0, :cond_0

    .line 7
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 13
    move-result v0

    .line 16
    const/16 v2, 0x8

    .line 17
    if-eq v0, v2, :cond_0

    .line 19
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 21
    invoke-static {p0}, Landroidx/core/view/ViewCompat$Api16Impl;->getFitsSystemWindows(Landroid/view/View;)Z

    .line 23
    move-result p0

    .line 26
    if-nez p0, :cond_0

    .line 27
    const/4 v1, 0x1

    .line 29
    :cond_0
    return v1
    .line 30
.end method

.method public final verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object p0, p0, Lcom/google/android/material/appbar/AppBarLayout;->statusBarForeground:Landroid/graphics/drawable/Drawable;

    .line 8
    if-ne p1, p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method
