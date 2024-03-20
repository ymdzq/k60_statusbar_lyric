.class public final Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
.super Landroid/animation/ValueAnimator;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mEndBounds:Landroid/graphics/Rect;

.field public final mRectEvaluator:Landroid/animation/RectEvaluator;

.field public final mStartBounds:Landroid/graphics/Rect;

.field public final mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mView:Landroid/view/View;

    .line 5
    new-instance p3, Landroid/graphics/Rect;

    .line 7
    invoke-direct {p3, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 9
    iput-object p3, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mStartBounds:Landroid/graphics/Rect;

    .line 12
    iput-object p2, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mEndBounds:Landroid/graphics/Rect;

    .line 14
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [F

    .line 17
    fill-array-data p1, :array_0

    .line 19
    invoke-virtual {p0, p1}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 22
    new-instance p1, Landroid/animation/RectEvaluator;

    .line 25
    new-instance p2, Landroid/graphics/Rect;

    .line 27
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 29
    invoke-direct {p1, p2}, Landroid/animation/RectEvaluator;-><init>(Landroid/graphics/Rect;)V

    .line 32
    iput-object p1, p0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->mRectEvaluator:Landroid/animation/RectEvaluator;

    .line 35
    return-void

    .line 37
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 38
.end method

.method public static getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    iget v1, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 6
    mul-int/lit8 v2, v0, 0x2

    .line 8
    sub-int/2addr v1, v2

    .line 10
    iget v3, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 11
    sub-int/2addr v3, v2

    .line 13
    new-instance v2, Landroid/graphics/Rect;

    .line 14
    int-to-float v4, v0

    .line 16
    int-to-float v1, v1

    .line 17
    const v5, 0x3c75c28f    # 0.015f

    .line 18
    mul-float/2addr v1, v5

    .line 21
    sub-float v6, v4, v1

    .line 22
    float-to-int v6, v6

    .line 24
    int-to-float v3, v3

    .line 25
    mul-float/2addr v3, v5

    .line 26
    sub-float/2addr v4, v3

    .line 27
    float-to-int v4, v4

    .line 28
    iget v5, p0, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 29
    sub-int/2addr v5, v0

    .line 31
    int-to-float v5, v5

    .line 32
    add-float/2addr v5, v1

    .line 33
    float-to-int v1, v5

    .line 34
    iget p0, p0, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 35
    sub-int/2addr p0, v0

    .line 37
    int-to-float p0, p0

    .line 38
    add-float/2addr p0, v3

    .line 39
    float-to-int p0, p0

    .line 40
    invoke-direct {v2, v6, v4, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 41
    return-object v2
    .line 44
.end method

.method public static setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$$ExternalSyntheticLambda0;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 7
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator$1;-><init>(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 12
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 15
    const-wide/16 v0, 0xc8

    .line 18
    invoke-virtual {p0, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 20
    return-void
    .line 23
.end method

.method public static toFullscreenAnimatorWithAnimatedBounds(Landroid/view/View;Lcom/android/wm/shell/common/DisplayLayout;)Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/android/wm/shell/common/DisplayLayout;->mStableInsets:Landroid/graphics/Rect;

    .line 2
    iget v0, v0, Landroid/graphics/Rect;->top:I

    .line 4
    new-instance v1, Landroid/graphics/Rect;

    .line 6
    iget v2, p1, Lcom/android/wm/shell/common/DisplayLayout;->mWidth:I

    .line 8
    sub-int/2addr v2, v0

    .line 10
    iget v3, p1, Lcom/android/wm/shell/common/DisplayLayout;->mHeight:I

    .line 11
    sub-int/2addr v3, v0

    .line 13
    invoke-direct {v1, v0, v0, v2, v3}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 14
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 21
    new-instance v0, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;

    .line 24
    invoke-static {p1}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->getMaxBounds(Lcom/android/wm/shell/common/DisplayLayout;)Landroid/graphics/Rect;

    .line 26
    move-result-object p1

    .line 29
    invoke-direct {v0, v1, p1, p0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;-><init>(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/View;)V

    .line 30
    new-instance p0, Landroid/view/animation/DecelerateInterpolator;

    .line 33
    invoke-direct {p0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 35
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 38
    invoke-static {v0}, Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;->setupIndicatorAnimation(Lcom/android/wm/shell/desktopmode/DesktopModeVisualIndicator$VisualIndicatorAnimator;)V

    .line 41
    return-object v0
    .line 44
.end method
