.class public Lcom/android/wm/shell/onehanded/OneHandedAnimationController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final FRACTION_END:F = 1.0f

.field private static final FRACTION_START:F = 0.0f

.field private static final TAG:Ljava/lang/String; = "OneHandedAnimationController"

.field public static final TRANSITION_DIRECTION_EXIT:I = 0x2

.field public static final TRANSITION_DIRECTION_NONE:I = 0x0

.field public static final TRANSITION_DIRECTION_TRIGGER:I = 0x1


# instance fields
.field private final mAnimatorMap:Ljava/util/HashMap;

.field private final mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

.field private final mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 10
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 12
    invoke-direct {v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;-><init>(Landroid/content/Context;)V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 17
    new-instance p1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController;)V

    .line 21
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public dump(Ljava/io/PrintWriter;)V
    .locals 1

    .line 1
    const-string v0, "OneHandedAnimationControllerstates: "

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    const-string v0, "  mAnimatorMap="

    .line 7
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 12
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->dump(Ljava/io/PrintWriter;)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public getAnimator(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 8
    if-nez v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 12
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 26
    move-result v1

    .line 29
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v0, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->updateEndValue(F)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 36
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 39
    invoke-static {p1, p2, p3, p4, p5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 41
    move-result-object p2

    .line 44
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 45
    move-result-object p2

    .line 48
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 52
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    move-result-object p0

    .line 57
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 58
    return-object p0
    .line 60
.end method

.method public getAnimatorMap()Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 2
    return-object p0
    .line 4
.end method

.method public isAnimatorsConsumed()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0}, Ljava/util/HashMap;->isEmpty()Z

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public removeAnimator(Landroid/window/WindowContainerToken;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mAnimatorMap:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public setupOneHandedTransitionAnimator(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 2
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->setSurfaceTransactionHelper(Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;)V

    .line 4
    invoke-virtual {p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->updateCornerRadius()V

    .line 7
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController;->mInterpolator:Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedInterpolator;

    .line 10
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 12
    const/4 p0, 0x2

    .line 15
    new-array p0, p0, [F

    .line 16
    fill-array-data p0, :array_0

    .line 18
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setFloatValues([F)V

    .line 21
    return-object p1

    .line 24
    nop

    .line 25
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 26
.end method
