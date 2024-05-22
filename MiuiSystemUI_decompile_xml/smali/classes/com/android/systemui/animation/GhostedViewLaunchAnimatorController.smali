.class public Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;


# instance fields
.field public final background:Landroid/graphics/drawable/Drawable;

.field public backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

.field public final backgroundInsets$delegate:Lkotlin/Lazy;

.field public backgroundView:Landroid/widget/FrameLayout;

.field public final cujType:Ljava/lang/Integer;

.field public ghostView:Landroid/view/GhostView;

.field public final ghostViewMatrix:Landroid/graphics/Matrix;

.field public final ghostedView:Landroid/view/View;

.field public final ghostedViewLocation:[I

.field public final ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

.field public final initialGhostViewMatrixValues:[F

.field public final interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public launchContainer:Landroid/view/ViewGroup;

.field public final launchContainerLocation:[I

.field public startBackgroundAlpha:I


# direct methods
.method public constructor <init>(Landroid/view/View;Ljava/lang/Integer;I)V
    .locals 10

    .line 1
    and-int/lit8 v0, p3, 0x2

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move-object p2, v1

    .line 7
    :cond_0
    and-int/lit8 p3, p3, 0x4

    .line 8
    if-eqz p3, :cond_1

    .line 10
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 12
    move-result-object p3

    .line 15
    goto :goto_0

    .line 16
    :cond_1
    move-object p3, v1

    .line 17
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 21
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getRootView()Landroid/view/View;

    .line 27
    move-result-object p1

    .line 30
    check-cast p1, Landroid/view/ViewGroup;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 33
    const/4 p1, 0x2

    .line 35
    new-array p2, p1, [I

    .line 36
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    .line 38
    const/16 p2, 0x9

    .line 40
    new-array p3, p2, [F

    .line 42
    const/4 v0, 0x0

    .line 44
    move v2, v0

    .line 45
    :goto_1
    if-ge v2, p2, :cond_2

    .line 46
    const/4 v3, 0x0

    .line 48
    aput v3, p3, v2

    .line 49
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    iput-object p3, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 54
    new-instance p2, Landroid/graphics/Matrix;

    .line 56
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 61
    new-instance p2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;

    .line 63
    invoke-direct {p2, p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$backgroundInsets$2;-><init>(Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    .line 65
    invoke-static {p2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 68
    move-result-object p2

    .line 71
    iput-object p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 72
    const/16 p2, 0xff

    .line 74
    iput p2, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 76
    new-array p1, p1, [I

    .line 78
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    .line 80
    new-instance p1, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 82
    const/4 v3, 0x0

    .line 84
    const/4 v4, 0x0

    .line 85
    const/4 v5, 0x0

    .line 86
    const/4 v6, 0x0

    .line 87
    const/4 v7, 0x0

    .line 88
    const/4 v8, 0x0

    .line 89
    const/16 v9, 0x3f

    .line 90
    move-object v2, p1

    .line 92
    invoke-direct/range {v2 .. v9}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFI)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 96
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 98
    instance-of p2, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 100
    if-eqz p2, :cond_7

    .line 102
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object p2

    .line 107
    if-eqz p2, :cond_3

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object v1

    .line 113
    goto :goto_3

    .line 114
    :cond_3
    new-instance p2, Ljava/util/LinkedList;

    .line 115
    invoke-direct {p2}, Ljava/util/LinkedList;-><init>()V

    .line 117
    invoke-virtual {p2, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_4
    invoke-interface {p2}, Ljava/util/Collection;->isEmpty()Z

    .line 123
    move-result p1

    .line 126
    xor-int/lit8 p1, p1, 0x1

    .line 127
    if-eqz p1, :cond_6

    .line 129
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 131
    move-result-object p1

    .line 134
    check-cast p1, Landroid/view/View;

    .line 135
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 137
    move-result-object p3

    .line 140
    if-eqz p3, :cond_5

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 143
    move-result-object v1

    .line 146
    goto :goto_3

    .line 147
    :cond_5
    instance-of p3, p1, Landroid/view/ViewGroup;

    .line 148
    if-eqz p3, :cond_4

    .line 150
    check-cast p1, Landroid/view/ViewGroup;

    .line 152
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    .line 154
    move-result p3

    .line 157
    move v2, v0

    .line 158
    :goto_2
    if-ge v2, p3, :cond_4

    .line 159
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    .line 161
    move-result-object v3

    .line 164
    invoke-virtual {p2, v3}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 165
    add-int/lit8 v2, v2, 0x1

    .line 168
    goto :goto_2

    .line 170
    :cond_6
    :goto_3
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 171
    return-void

    .line 173
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 174
    const-string p1, "A GhostedViewLaunchAnimatorController was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 176
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    throw p0
    .line 181
.end method


# virtual methods
.method public final createAnimatorState()Lcom/android/systemui/animation/LaunchAnimator$State;
    .locals 9

    .line 1
    new-instance v8, Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentTopCornerRadius()F

    .line 8
    move-result v5

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->getCurrentBottomCornerRadius()F

    .line 12
    move-result v6

    .line 15
    const/16 v7, 0xf

    .line 16
    move-object v0, v8

    .line 18
    invoke-direct/range {v0 .. v7}, Lcom/android/systemui/animation/LaunchAnimator$State;-><init>(IIIIFFI)V

    .line 19
    invoke-virtual {p0, v8}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 22
    return-object v8
    .line 25
.end method

.method public final fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewLocation:[I

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 9
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Landroid/graphics/Insets;

    .line 15
    const/4 v2, 0x1

    .line 17
    aget v2, v1, v2

    .line 18
    iget v3, p0, Landroid/graphics/Insets;->top:I

    .line 20
    add-int/2addr v3, v2

    .line 22
    iput v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 23
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    .line 25
    move-result v3

    .line 28
    int-to-float v3, v3

    .line 29
    invoke-virtual {v0}, Landroid/view/View;->getScaleY()F

    .line 30
    move-result v4

    .line 33
    mul-float/2addr v4, v3

    .line 34
    invoke-static {v4}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 35
    move-result v3

    .line 38
    add-int/2addr v3, v2

    .line 39
    iget v2, p0, Landroid/graphics/Insets;->bottom:I

    .line 40
    sub-int/2addr v3, v2

    .line 42
    iput v3, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 43
    const/4 v2, 0x0

    .line 45
    aget v1, v1, v2

    .line 46
    iget v2, p0, Landroid/graphics/Insets;->left:I

    .line 48
    add-int/2addr v2, v1

    .line 50
    iput v2, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 51
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    .line 53
    move-result v2

    .line 56
    int-to-float v2, v2

    .line 57
    invoke-virtual {v0}, Landroid/view/View;->getScaleX()F

    .line 58
    move-result v0

    .line 61
    mul-float/2addr v0, v2

    .line 62
    invoke-static {v0}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 63
    move-result v0

    .line 66
    add-int/2addr v0, v1

    .line 67
    iget p0, p0, Landroid/graphics/Insets;->right:I

    .line 68
    sub-int/2addr v0, p0

    .line 70
    iput v0, p1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 71
    return-void
    .line 73
.end method

.method public getCurrentBottomCornerRadius()F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    const/4 v1, 0x4

    .line 21
    aget v0, v0, v1

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 25
    move-result v0

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 31
    move-result p0

    .line 34
    mul-float/2addr p0, v0

    .line 35
    return p0
    .line 36
.end method

.method public getCurrentTopCornerRadius()F
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 3
    if-nez v1, :cond_0

    .line 5
    return v0

    .line 7
    :cond_0
    invoke-static {v1}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$Companion;->findGradientDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/GradientDrawable;

    .line 8
    move-result-object v1

    .line 11
    if-nez v1, :cond_1

    .line 12
    return v0

    .line 14
    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadii()[F

    .line 15
    move-result-object v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    const/4 v1, 0x0

    .line 21
    aget v0, v0, v1

    .line 22
    goto :goto_0

    .line 24
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    .line 25
    move-result v0

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 29
    invoke-virtual {p0}, Landroid/view/View;->getScaleX()F

    .line 31
    move-result p0

    .line 34
    mul-float/2addr p0, v0

    .line 35
    return p0
    .line 36
.end method

.method public final getLaunchContainer()Landroid/view/ViewGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onLaunchAnimationEnd(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 7
    if-eqz p1, :cond_1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    .line 11
    move-result p1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 20
    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    const/4 p1, 0x0

    .line 27
    :goto_0
    if-nez p1, :cond_3

    .line 28
    goto :goto_1

    .line 30
    :cond_3
    iget v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 31
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 33
    :goto_1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 36
    invoke-static {p1}, Landroid/view/GhostView;->removeGhost(Landroid/view/View;)V

    .line 38
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 41
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 43
    move-result-object v0

    .line 46
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 47
    invoke-virtual {v0, p0}, Landroid/view/ViewGroupOverlay;->remove(Landroid/view/View;)V

    .line 49
    instance-of p0, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 52
    const/4 v0, 0x0

    .line 54
    if-eqz p0, :cond_4

    .line 55
    check-cast p1, Lcom/android/systemui/animation/LaunchableView;

    .line 57
    invoke-interface {p1, v0}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 59
    goto :goto_2

    .line 62
    :cond_4
    const/4 p0, 0x4

    .line 63
    invoke-virtual {p1, p0}, Landroid/view/View;->setVisibility(I)V

    .line 64
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 67
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 70
    :goto_2
    return-void
    .line 73
.end method

.method public final onLaunchAnimationProgress(Lcom/android/systemui/animation/LaunchAnimator$State;FF)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 6
    if-nez v2, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 11
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    iget-boolean v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->visible:Z

    .line 16
    const/4 v5, 0x4

    .line 18
    iget-object v6, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 19
    if-eqz v4, :cond_5

    .line 21
    invoke-virtual {v6}, Landroid/view/View;->isAttachedToWindow()Z

    .line 23
    move-result v4

    .line 26
    if-nez v4, :cond_1

    .line 27
    goto/16 :goto_0

    .line 29
    :cond_1
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    .line 31
    move-result v4

    .line 34
    const/4 v7, 0x0

    .line 35
    if-ne v4, v5, :cond_2

    .line 36
    invoke-virtual {v2, v7}, Landroid/view/GhostView;->setVisibility(I)V

    .line 38
    invoke-virtual {v3, v7}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 41
    :cond_2
    iget-object v4, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedViewState:Lcom/android/systemui/animation/LaunchAnimator$State;

    .line 44
    invoke-virtual {v0, v4}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->fillGhostedViewState(Lcom/android/systemui/animation/LaunchAnimator$State;)V

    .line 46
    iget v8, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 49
    iget v9, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 51
    sub-int v10, v8, v9

    .line 53
    iget v11, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 55
    iget v12, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 57
    sub-int v13, v11, v12

    .line 59
    iget v14, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 61
    iget v15, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 63
    sub-int v16, v14, v15

    .line 65
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 67
    iget v7, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 69
    sub-int v17, v5, v7

    .line 71
    sub-int/2addr v11, v8

    .line 73
    int-to-float v8, v11

    .line 74
    sub-int/2addr v12, v9

    .line 75
    int-to-float v9, v12

    .line 76
    div-float/2addr v8, v9

    .line 77
    sub-int/2addr v5, v14

    .line 78
    int-to-float v5, v5

    .line 79
    sub-int/2addr v7, v15

    .line 80
    int-to-float v7, v7

    .line 81
    div-float/2addr v5, v7

    .line 82
    invoke-static {v8, v5}, Ljava/lang/Math;->min(FF)F

    .line 83
    move-result v5

    .line 86
    invoke-virtual {v6}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 87
    move-result-object v7

    .line 90
    instance-of v7, v7, Landroid/view/ViewGroup;

    .line 91
    iget-object v8, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostViewMatrix:Landroid/graphics/Matrix;

    .line 93
    if-eqz v7, :cond_3

    .line 95
    iget-object v7, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 97
    invoke-static {v6, v7, v8}, Landroid/view/GhostView;->calculateMatrix(Landroid/view/View;Landroid/view/ViewGroup;Landroid/graphics/Matrix;)V

    .line 99
    :cond_3
    iget-object v6, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 102
    iget-object v7, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainerLocation:[I

    .line 104
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->getLocationOnScreen([I)V

    .line 106
    iget v6, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 109
    int-to-float v9, v6

    .line 111
    iget v11, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 112
    sub-int/2addr v11, v6

    .line 114
    int-to-float v6, v11

    .line 115
    const/high16 v11, 0x40000000    # 2.0f

    .line 116
    div-float/2addr v6, v11

    .line 118
    add-float/2addr v6, v9

    .line 119
    const/4 v9, 0x0

    .line 120
    aget v12, v7, v9

    .line 121
    int-to-float v9, v12

    .line 123
    sub-float/2addr v6, v9

    .line 124
    iget v9, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 125
    int-to-float v12, v9

    .line 127
    iget v4, v4, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 128
    sub-int/2addr v4, v9

    .line 130
    int-to-float v4, v4

    .line 131
    div-float/2addr v4, v11

    .line 132
    add-float/2addr v4, v12

    .line 133
    const/4 v9, 0x1

    .line 134
    aget v12, v7, v9

    .line 135
    int-to-float v12, v12

    .line 137
    sub-float/2addr v4, v12

    .line 138
    invoke-virtual {v8, v5, v5, v6, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 139
    add-int/2addr v10, v13

    .line 142
    int-to-float v4, v10

    .line 143
    div-float/2addr v4, v11

    .line 144
    add-int v5, v16, v17

    .line 145
    int-to-float v5, v5

    .line 147
    div-float/2addr v5, v11

    .line 148
    invoke-virtual {v8, v4, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 149
    invoke-virtual {v2, v8}, Landroid/view/GhostView;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 152
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundInsets$delegate:Lkotlin/Lazy;

    .line 155
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 157
    move-result-object v2

    .line 160
    check-cast v2, Landroid/graphics/Insets;

    .line 161
    iget v4, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->top:I

    .line 163
    iget v5, v2, Landroid/graphics/Insets;->top:I

    .line 165
    sub-int/2addr v4, v5

    .line 167
    iget v5, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->left:I

    .line 168
    iget v6, v2, Landroid/graphics/Insets;->left:I

    .line 170
    sub-int/2addr v5, v6

    .line 172
    iget v6, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->right:I

    .line 173
    iget v8, v2, Landroid/graphics/Insets;->right:I

    .line 175
    add-int/2addr v6, v8

    .line 177
    iget v8, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottom:I

    .line 178
    iget v2, v2, Landroid/graphics/Insets;->bottom:I

    .line 180
    add-int/2addr v8, v2

    .line 182
    aget v2, v7, v9

    .line 183
    sub-int/2addr v4, v2

    .line 185
    invoke-virtual {v3, v4}, Landroid/widget/FrameLayout;->setTop(I)V

    .line 186
    aget v2, v7, v9

    .line 189
    sub-int/2addr v8, v2

    .line 191
    invoke-virtual {v3, v8}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 192
    const/4 v2, 0x0

    .line 195
    aget v4, v7, v2

    .line 196
    sub-int/2addr v5, v4

    .line 198
    invoke-virtual {v3, v5}, Landroid/widget/FrameLayout;->setLeft(I)V

    .line 199
    aget v4, v7, v2

    .line 202
    sub-int/2addr v6, v4

    .line 204
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setRight(I)V

    .line 205
    iget-object v2, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 208
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 210
    iget-object v2, v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->wrapped:Landroid/graphics/drawable/Drawable;

    .line 213
    if-eqz v2, :cond_4

    .line 215
    iget v2, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->topCornerRadius:F

    .line 217
    iget v1, v1, Lcom/android/systemui/animation/LaunchAnimator$State;->bottomCornerRadius:F

    .line 219
    iget-object v0, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 221
    if-eqz v0, :cond_4

    .line 223
    iget-object v3, v0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;->cornerRadii:[F

    .line 225
    const/4 v4, 0x0

    .line 227
    aput v2, v3, v4

    .line 228
    aput v2, v3, v9

    .line 230
    const/4 v4, 0x2

    .line 232
    aput v2, v3, v4

    .line 233
    const/4 v4, 0x3

    .line 235
    aput v2, v3, v4

    .line 236
    const/4 v2, 0x4

    .line 238
    aput v1, v3, v2

    .line 239
    const/4 v2, 0x5

    .line 241
    aput v1, v3, v2

    .line 242
    const/4 v2, 0x6

    .line 244
    aput v1, v3, v2

    .line 245
    const/4 v2, 0x7

    .line 247
    aput v1, v3, v2

    .line 248
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 250
    :cond_4
    return-void

    .line 253
    :cond_5
    :goto_0
    invoke-virtual {v2}, Landroid/view/GhostView;->getVisibility()I

    .line 254
    move-result v0

    .line 257
    if-nez v0, :cond_6

    .line 258
    const/4 v0, 0x4

    .line 260
    invoke-virtual {v2, v0}, Landroid/view/GhostView;->setVisibility(I)V

    .line 261
    invoke-virtual {v6, v0}, Landroid/view/View;->setTransitionVisibility(I)V

    .line 264
    invoke-virtual {v3, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 267
    :cond_6
    return-void
    .line 270
.end method

.method public final onLaunchAnimationStart(Z)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostedView:Landroid/view/View;

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 4
    move-result-object v0

    .line 7
    instance-of v0, v0, Landroid/view/ViewGroup;

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-string p0, "GhostedViewLaunchAnimatorController"

    .line 12
    const-string p1, "Skipping animation as ghostedView is not attached to a ViewGroup"

    .line 14
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    new-instance v0, Landroid/widget/FrameLayout;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 22
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 27
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 31
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 33
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getOverlay()Landroid/view/ViewGroupOverlay;

    .line 35
    move-result-object v0

    .line 38
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v0, v1}, Landroid/view/ViewGroupOverlay;->add(Landroid/view/View;)V

    .line 41
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->background:Landroid/graphics/drawable/Drawable;

    .line 44
    if-eqz v0, :cond_1

    .line 46
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    .line 48
    move-result v1

    .line 51
    goto :goto_0

    .line 52
    :cond_1
    const/16 v1, 0xff

    .line 53
    :goto_0
    iput v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->startBackgroundAlpha:I

    .line 55
    new-instance v1, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 57
    invoke-direct {v1, v0}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 59
    iput-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundDrawable:Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController$WrappedDrawable;

    .line 62
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->backgroundView:Landroid/widget/FrameLayout;

    .line 64
    if-nez v0, :cond_2

    .line 66
    goto :goto_1

    .line 68
    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 69
    :goto_1
    instance-of v0, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 72
    if-eqz v0, :cond_3

    .line 74
    move-object v0, p1

    .line 76
    check-cast v0, Lcom/android/systemui/animation/LaunchableView;

    .line 77
    goto :goto_2

    .line 79
    :cond_3
    const/4 v0, 0x0

    .line 80
    :goto_2
    if-eqz v0, :cond_4

    .line 81
    const/4 v1, 0x1

    .line 83
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchableView;->setShouldBlockVisibilityChanges(Z)V

    .line 84
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 87
    invoke-static {p1, v0}, Landroid/view/GhostView;->addGhost(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/GhostView;

    .line 89
    move-result-object v0

    .line 92
    iput-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->ghostView:Landroid/view/GhostView;

    .line 93
    if-eqz v0, :cond_5

    .line 95
    invoke-virtual {v0}, Landroid/view/GhostView;->getAnimationMatrix()Landroid/graphics/Matrix;

    .line 97
    move-result-object v0

    .line 100
    if-nez v0, :cond_6

    .line 101
    :cond_5
    sget-object v0, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    .line 103
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->initialGhostViewMatrixValues:[F

    .line 105
    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->getValues([F)V

    .line 107
    iget-object v0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->cujType:Ljava/lang/Integer;

    .line 110
    if-eqz v0, :cond_7

    .line 112
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 114
    move-result v0

    .line 117
    iget-object p0, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->interactionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 118
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 120
    :cond_7
    return-void
    .line 123
.end method

.method public final setLaunchContainer(Landroid/view/ViewGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;->launchContainer:Landroid/view/ViewGroup;

    .line 2
    return-void
    .line 4
.end method
