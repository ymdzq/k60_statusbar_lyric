.class public abstract Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
.super Landroid/animation/ValueAnimator;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field private mCurrentValue:F

.field private mEndValue:F

.field private final mLeash:Landroid/view/SurfaceControl;

.field private final mOneHandedAnimationCallbacks:Ljava/util/List;

.field private mStartValue:F

.field private mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

.field private mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

.field private final mToken:Landroid/window/WindowContainerToken;

.field private mTransitionDirection:I


# direct methods
.method public static synthetic $r8$lambda$47phGL2bsk5RbK0byEizentJS2o(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$7K-ApSndDWliZBt3dB6Yg0QOfOY(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$LUO065grrAzgGQcpF0FbdqxA_i0(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationUpdate$3(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$nscYw7HOV3rxY0bMsQMIdxBx3zY(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->lambda$onAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V

    .line 2
    return-void
    .line 5
.end method

.method private constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FF)V
    .locals 1

    .line 2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 4
    iput-object p2, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 5
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mToken:Landroid/window/WindowContainerToken;

    .line 6
    iput p3, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:F

    .line 7
    iput p4, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 8
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 9
    invoke-virtual {p0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 10
    new-instance p1, Lcom/android/wm/shell/onehanded/BackgroundWindowManager$$ExternalSyntheticLambda0;

    invoke-direct {p1}, Lcom/android/wm/shell/onehanded/BackgroundWindowManager$$ExternalSyntheticLambda0;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    const/4 p1, 0x0

    .line 11
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFI)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FF)V

    return-void
.end method

.method private synthetic lambda$onAnimationCancel$2(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationCancel(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$onAnimationEnd$1(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-interface {p2, p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationEnd(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$onAnimationStart$0(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onOneHandedAnimationStart(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;)V

    .line 2
    return-void
    .line 5
.end method

.method private synthetic lambda$onAnimationUpdate$3(Landroid/view/SurfaceControl$Transaction;Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:F

    .line 3
    invoke-interface {p2, p1, v0, p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;->onAnimationUpdate(Landroid/view/SurfaceControl$Transaction;FF)V

    .line 5
    return-void
    .line 8
.end method

.method public static ofYOffset(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 7

    .line 1
    new-instance v6, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;

    .line 2
    move-object v0, v6

    .line 4
    move-object v1, p0

    .line 5
    move-object v2, p1

    .line 6
    move v3, p2

    .line 7
    move v4, p3

    .line 8
    move-object v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$1;-><init>(Landroid/window/WindowContainerToken;Landroid/view/SurfaceControl;FFLandroid/graphics/Rect;)V

    .line 10
    return-object v6
    .line 13
.end method


# virtual methods
.method public addOneHandedAnimationCallback(Lcom/android/wm/shell/onehanded/OneHandedAnimationCallback;)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 4
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    return-object p0
    .line 9
.end method

.method public abstract applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V
.end method

.method public getDestinationOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 2
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:F

    .line 4
    sub-float/2addr v0, p0

    .line 6
    return v0
    .line 7
.end method

.method public getEndValue()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 2
    return p0
    .line 4
.end method

.method public getStartValue()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:F

    .line 2
    return p0
    .line 4
.end method

.method public getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 2
    return-object p0
    .line 4
.end method

.method public getToken()Landroid/window/WindowContainerToken;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mToken:Landroid/window/WindowContainerToken;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTransitionDirection()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    .line 2
    return p0
    .line 4
.end method

.method public newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceControlTransactionFactory:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;

    .line 2
    invoke-interface {p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper$SurfaceControlTransactionFactory;->getTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 2
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:F

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;

    .line 8
    const/4 v1, 0x1

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;I)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 17
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 19
    return-void
    .line 22
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 2
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:F

    .line 4
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 6
    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 10
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 15
    new-instance v1, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda1;

    .line 17
    const/4 v2, 0x0

    .line 19
    invoke-direct {v1, p0, p1, v2}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;I)V

    .line 20
    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 26
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 28
    return-void
    .line 31
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mStartValue:F

    .line 2
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:F

    .line 4
    iget-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 6
    new-instance v0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;I)V

    .line 11
    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    return-void
    .line 17
.end method

.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->newSurfaceControlTransaction()Landroid/view/SurfaceControl$Transaction;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mOneHandedAnimationCallbacks:Ljava/util/List;

    .line 6
    new-instance v2, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda1;

    .line 8
    const/4 v3, 0x1

    .line 10
    invoke-direct {v2, p0, v0, v3}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator$$ExternalSyntheticLambda1;-><init>(Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;Landroid/view/SurfaceControl$Transaction;I)V

    .line 11
    invoke-interface {v1, v2}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 14
    iget-object v1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mLeash:Landroid/view/SurfaceControl;

    .line 17
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 19
    move-result p1

    .line 22
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->applySurfaceControlTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;F)V

    .line 23
    return-void
    .line 26
.end method

.method public onEndTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onStartTransaction(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setCurrentValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mCurrentValue:F

    .line 2
    return-void
    .line 4
.end method

.method public setSurfaceTransactionHelper(Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mSurfaceTransactionHelper:Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 2
    return-void
    .line 4
.end method

.method public setTransitionDirection(I)Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mTransitionDirection:I

    .line 2
    return-object p0
    .line 4
.end method

.method public updateCornerRadius()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->getSurfaceTransactionHelper()Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/android/wm/shell/onehanded/OneHandedSurfaceTransactionHelper;->updateCornerRadius()V

    .line 6
    return-void
    .line 9
.end method

.method public updateEndValue(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/onehanded/OneHandedAnimationController$OneHandedTransitionAnimator;->mEndValue:F

    .line 2
    return-void
    .line 4
.end method
