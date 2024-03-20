.class public final synthetic Lcom/android/systemui/toast/sub/ScanCircle$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/toast/sub/ScanCircle;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/toast/sub/ScanCircle;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/toast/sub/ScanCircle$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/sub/ScanCircle;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/sub/ScanCircle$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/toast/sub/ScanCircle;

    .line 2
    iget v0, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mTarget:F

    .line 4
    iget v1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mScanAngle:F

    .line 6
    const/high16 v2, 0x41200000    # 10.0f

    .line 8
    mul-float/2addr v1, v2

    .line 10
    add-float/2addr v1, v0

    .line 11
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 12
    move-result-object p1

    .line 15
    check-cast p1, Ljava/lang/Float;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 18
    move-result p1

    .line 21
    mul-float/2addr p1, v1

    .line 22
    iput p1, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    .line 23
    new-instance p1, Ljava/lang/StringBuilder;

    .line 25
    const-string v0, "mAngle :"

    .line 27
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 29
    iget v0, p0, Lcom/android/systemui/toast/sub/ScanCircle;->mAngle:F

    .line 32
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    const-string v0, "ScanCircle"

    .line 41
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 46
    return-void
    .line 49
.end method
