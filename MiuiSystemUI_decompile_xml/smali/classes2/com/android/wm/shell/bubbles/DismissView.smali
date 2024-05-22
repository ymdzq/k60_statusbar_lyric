.class public final Lcom/android/wm/shell/bubbles/DismissView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final DISMISS_SCRIM_FADE_MS:J

.field public final GRADIENT_ALPHA:Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

.field public final animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

.field public circle:Lcom/android/wm/shell/common/DismissCircleView;

.field public final gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field public isShowing:Z

.field public final spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

.field public targetSizeResId:I

.field public final wm:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/wm/shell/common/DismissCircleView;

    .line 5
    invoke-direct {v0, p1}, Lcom/android/wm/shell/common/DismissCircleView;-><init>(Landroid/content/Context;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 10
    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 12
    invoke-static {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 14
    move-result-object v0

    .line 17
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 18
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 20
    const/high16 v1, 0x43480000    # 200.0f

    .line 22
    const/high16 v2, 0x3f400000    # 0.75f

    .line 24
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 26
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 29
    const-wide/16 v0, 0xc8

    .line 31
    iput-wide v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    .line 33
    const-string/jumbo v0, "window"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p1

    .line 41
    check-cast p1, Landroid/view/WindowManager;

    .line 42
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->wm:Landroid/view/WindowManager;

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 53
    const v0, 0x1060028    # @android:color/system_neutral1_900

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    move-result p1

    .line 60
    const v0, 0x43328000    # 178.5f

    .line 61
    float-to-int v0, v0

    .line 64
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    .line 65
    move-result v1

    .line 68
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    .line 69
    move-result v2

    .line 72
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    .line 73
    move-result p1

    .line 76
    invoke-static {v0, v1, v2, p1}, Landroid/graphics/Color;->argb(IIII)I

    .line 77
    move-result p1

    .line 80
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 81
    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->BOTTOM_TOP:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 83
    const/4 v2, 0x0

    .line 85
    filled-new-array {p1, v2}, [I

    .line 86
    move-result-object p1

    .line 89
    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 90
    const/4 p1, 0x1

    .line 93
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setDither(Z)V

    .line 94
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/GradientDrawable;->setAlpha(I)V

    .line 97
    iput-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 100
    new-instance p1, Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

    .line 102
    invoke-direct {p1}, Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;-><init>()V

    .line 104
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

    .line 107
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 109
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 111
    move-result-object v1

    .line 114
    const v3, 0x7f070348    # @dimen/floating_dismiss_gradient_height '548.0dp'

    .line 115
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 118
    move-result v1

    .line 121
    const/16 v4, 0x50

    .line 122
    const/4 v5, -0x1

    .line 124
    invoke-direct {p1, v5, v1, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 125
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->updatePadding()V

    .line 131
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipToPadding(Z)V

    .line 134
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 137
    const/4 p1, 0x4

    .line 140
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 141
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const p1, 0x7f0702cc    # @dimen/dismiss_circle_size '96.0dp'

    .line 147
    iput p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->targetSizeResId:I

    .line 150
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 152
    move-result-object p1

    .line 155
    iget v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->targetSizeResId:I

    .line 156
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 158
    move-result p1

    .line 161
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 162
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 164
    const/16 v2, 0x51

    .line 166
    invoke-direct {v1, p1, p1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 168
    invoke-virtual {p0, v0, v1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 171
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 174
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 176
    move-result-object p0

    .line 179
    invoke-virtual {p0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 180
    move-result p0

    .line 183
    int-to-float p0, p0

    .line 184
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 185
    return-void
    .line 188
.end method


# virtual methods
.method public final getCircle()Lcom/android/wm/shell/common/DismissCircleView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getTargetSizeResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->targetSizeResId:I

    .line 2
    return p0
    .line 4
.end method

.method public final hide()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 10
    iget-object v2, p0, Lcom/android/wm/shell/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    .line 14
    move-result v3

    .line 17
    filled-new-array {v3, v0}, [I

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v1, v2, v0}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 22
    move-result-object v0

    .line 25
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    .line 26
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 28
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 31
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 34
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 36
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 38
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    iget-object v3, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 43
    const/4 v4, 0x0

    .line 45
    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 46
    new-instance v1, Lcom/android/wm/shell/bubbles/DismissView$hide$1;

    .line 49
    invoke-direct {v1, p0}, Lcom/android/wm/shell/bubbles/DismissView$hide$1;-><init>(Lcom/android/wm/shell/bubbles/DismissView;)V

    .line 51
    filled-new-array {v1}, [Lkotlin/jvm/functions/Function0;

    .line 54
    move-result-object p0

    .line 57
    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->endActions:Ljava/util/ArrayList;

    .line 58
    invoke-static {p0}, Lkotlin/collections/ArraysKt___ArraysKt;->filterNotNull([Ljava/lang/Object;)Ljava/util/List;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 64
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 67
    return-void
    .line 70
.end method

.method public final setCircle(Lcom/android/wm/shell/common/DismissCircleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 2
    return-void
    .line 4
.end method

.method public final setShowing(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 2
    return-void
    .line 4
.end method

.method public final setTargetSizeResId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/DismissView;->targetSizeResId:I

    .line 2
    return-void
    .line 4
.end method

.method public final show()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->isShowing:Z

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->gradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->GRADIENT_ALPHA:Lcom/android/wm/shell/bubbles/DismissView$GRADIENT_ALPHA$1;

    .line 16
    invoke-virtual {v0}, Landroid/graphics/drawable/GradientDrawable;->getAlpha()I

    .line 18
    move-result v2

    .line 21
    const/16 v3, 0xff

    .line 22
    filled-new-array {v2, v3}, [I

    .line 24
    move-result-object v2

    .line 27
    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Landroid/util/Property;[I)Landroid/animation/ObjectAnimator;

    .line 28
    move-result-object v0

    .line 31
    iget-wide v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->DISMISS_SCRIM_FADE_MS:J

    .line 32
    invoke-virtual {v0, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 34
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 40
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->cancel()V

    .line 42
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->animator:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 45
    sget-object v1, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->spring:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-virtual {v0, v1, v2, v2, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 52
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 55
    return-void
    .line 58
.end method

.method public final updatePadding()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/DismissView;->wm:Landroid/view/WindowManager;

    .line 2
    invoke-interface {v0}, Landroid/view/WindowManager;->getCurrentWindowMetrics()Landroid/view/WindowMetrics;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/WindowMetrics;->getWindowInsets()Landroid/view/WindowInsets;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 12
    move-result v1

    .line 15
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->getInsetsIgnoringVisibility(I)Landroid/graphics/Insets;

    .line 16
    move-result-object v0

    .line 19
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v1

    .line 25
    const v2, 0x7f070347    # @dimen/floating_dismiss_bottom_margin '50.0dp'

    .line 26
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 29
    move-result v1

    .line 32
    add-int/2addr v1, v0

    .line 33
    const/4 v0, 0x0

    .line 34
    invoke-virtual {p0, v0, v0, v0, v1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 35
    return-void
    .line 38
.end method

.method public final updateResources()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/bubbles/DismissView;->updatePadding()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v1

    .line 12
    const v2, 0x7f070348    # @dimen/floating_dismiss_gradient_height '548.0dp'

    .line 13
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v1

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v0

    .line 25
    iget v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->targetSizeResId:I

    .line 26
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 28
    move-result v0

    .line 31
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 32
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v1

    .line 37
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 38
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 40
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 42
    move-result-object v1

    .line 45
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 46
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/DismissView;->circle:Lcom/android/wm/shell/common/DismissCircleView;

    .line 48
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 50
    return-void
    .line 53
.end method
