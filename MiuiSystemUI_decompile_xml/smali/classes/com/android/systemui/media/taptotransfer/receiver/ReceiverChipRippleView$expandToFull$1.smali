.class public final Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $startingPercentage:F

.field public final synthetic this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;F)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 2
    iput p2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->$startingPercentage:F

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getCurrentPlayTime()J

    .line 2
    move-result-wide v0

    .line 5
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 6
    move-result-object p1

    .line 9
    check-cast p1, Ljava/lang/Float;

    .line 10
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 12
    move-result p1

    .line 15
    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 16
    sget v3, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;->$r8$clinit:I

    .line 18
    invoke-virtual {v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 20
    move-result-object v2

    .line 23
    iget v3, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->$startingPercentage:F

    .line 24
    const/4 v4, 0x1

    .line 26
    int-to-float v4, v4

    .line 27
    sub-float v5, v4, v3

    .line 28
    mul-float/2addr v5, p1

    .line 30
    add-float/2addr v5, v3

    .line 31
    invoke-virtual {v2, v5}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    .line 32
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 35
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 37
    move-result-object p1

    .line 40
    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 41
    invoke-virtual {v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 43
    move-result-object v2

    .line 46
    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    .line 47
    sub-float v2, v4, v2

    .line 49
    invoke-virtual {p1, v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setDistortionStrength(F)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 54
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 56
    move-result-object p1

    .line 59
    iget-object v2, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 60
    invoke-virtual {v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 62
    move-result-object v2

    .line 65
    iget v2, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->rawProgress:F

    .line 66
    sub-float/2addr v4, v2

    .line 68
    invoke-virtual {p1, v4}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setPixelDensity(F)V

    .line 69
    iget-object p1, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 72
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 74
    move-result-object p1

    .line 77
    long-to-float v0, v0

    .line 78
    const-string v1, "in_time"

    .line 79
    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 81
    iget-object p0, p0, Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView$expandToFull$1;->this$0:Lcom/android/systemui/media/taptotransfer/receiver/ReceiverChipRippleView;

    .line 84
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 86
    return-void
    .line 89
.end method
