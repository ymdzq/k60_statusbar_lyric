.class public final synthetic Lcom/android/systemui/toast/sub/CircleProgressView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/sub/CircleProgressView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/sub/CircleProgressView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/sub/CircleProgressView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/sub/CircleProgressView;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/sub/CircleProgressView$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/sub/CircleProgressView;

    .line 2
    sget v0, Lcom/android/systemui/toast/sub/CircleProgressView;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 9
    move-result-object p1

    .line 12
    check-cast p1, Ljava/lang/Float;

    .line 13
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 15
    move-result p1

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    .line 19
    const-string v1, "progress :"

    .line 21
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    const-string v1, "CircleProgressView"

    .line 33
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v0, p0, Lcom/android/systemui/toast/sub/CircleProgressView;->mProgress:F

    .line 38
    iget v1, p0, Lcom/android/systemui/toast/sub/CircleProgressView;->mMax:I

    .line 40
    int-to-float v1, v1

    .line 42
    div-float/2addr v0, v1

    .line 43
    cmpl-float v0, v0, p1

    .line 44
    if-ltz v0, :cond_0

    .line 46
    mul-float/2addr v1, p1

    .line 48
    iput v1, p0, Lcom/android/systemui/toast/sub/CircleProgressView;->mAngle:F

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    :cond_0
    return-void
    .line 54
.end method
