.class public final Lcom/airbnb/lottie/LottieDrawable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/airbnb/lottie/LottieDrawable;


# direct methods
.method public constructor <init>(Lcom/airbnb/lottie/LottieDrawable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable$1;->this$0:Lcom/airbnb/lottie/LottieDrawable;

    .line 2
    iget-object p1, p0, Lcom/airbnb/lottie/LottieDrawable;->compositionLayer:Lcom/airbnb/lottie/model/layer/CompositionLayer;

    .line 4
    if-eqz p1, :cond_1

    .line 6
    iget-object p0, p0, Lcom/airbnb/lottie/LottieDrawable;->animator:Lcom/airbnb/lottie/utils/LottieValueAnimator;

    .line 8
    iget-object v0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->composition:Lcom/airbnb/lottie/LottieComposition;

    .line 10
    if-nez v0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget p0, p0, Lcom/airbnb/lottie/utils/LottieValueAnimator;->frame:F

    .line 16
    iget v1, v0, Lcom/airbnb/lottie/LottieComposition;->startFrame:F

    .line 18
    sub-float/2addr p0, v1

    .line 20
    iget v0, v0, Lcom/airbnb/lottie/LottieComposition;->endFrame:F

    .line 21
    sub-float/2addr v0, v1

    .line 23
    div-float/2addr p0, v0

    .line 24
    :goto_0
    invoke-virtual {p1, p0}, Lcom/airbnb/lottie/model/layer/CompositionLayer;->setProgress(F)V

    .line 25
    :cond_1
    return-void
    .line 28
.end method
