.class public final Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final applyColor:Lkotlin/jvm/functions/Function1;

.field public final argbEvaluator:Landroid/animation/ArgbEvaluator;

.field public currentColor:I

.field public final sourceColor:I

.field public final targetColor:I


# direct methods
.method public constructor <init>(ILkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->applyColor:Lkotlin/jvm/functions/Function1;

    .line 5
    new-instance v0, Landroid/animation/ArgbEvaluator;

    .line 7
    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->buildAnimator()Landroid/animation/ValueAnimator;

    .line 14
    iput p1, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->sourceColor:I

    .line 17
    iput p1, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->currentColor:I

    .line 19
    iput p1, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->targetColor:I

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    invoke-interface {p2, p0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    return-void
    .line 30
.end method


# virtual methods
.method public buildAnimator()Landroid/animation/ValueAnimator;
    .locals 3

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [F

    .line 3
    fill-array-data v0, :array_0

    .line 5
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 8
    move-result-object v0

    .line 11
    const-wide/16 v1, 0x14d

    .line 12
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 14
    invoke-virtual {v0, p0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 17
    return-object v0

    .line 20
    nop

    .line 21
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 22
.end method

.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 4
    move-result p1

    .line 7
    iget v1, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->sourceColor:I

    .line 8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 10
    move-result-object v1

    .line 13
    iget v2, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->targetColor:I

    .line 14
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    move-result-object v2

    .line 19
    invoke-virtual {v0, p1, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    check-cast p1, Ljava/lang/Integer;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 26
    move-result p1

    .line 29
    iput p1, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->currentColor:I

    .line 30
    iget-object p0, p0, Lcom/android/systemui/media/controls/ui/AnimatingColorTransition;->applyColor:Lkotlin/jvm/functions/Function1;

    .line 32
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 34
    move-result-object p1

    .line 37
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    return-void
    .line 41
.end method
