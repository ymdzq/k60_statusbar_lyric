.class public final Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/surfaceeffects/ripple/RippleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

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
    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 16
    invoke-virtual {v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v2, p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setRawProgress(F)V

    .line 22
    iget-object v2, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 25
    invoke-virtual {v2}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 27
    move-result-object v2

    .line 30
    const/4 v3, 0x1

    .line 31
    int-to-float v3, v3

    .line 32
    sub-float/2addr v3, p1

    .line 33
    invoke-virtual {v2, v3}, Lcom/android/systemui/surfaceeffects/ripple/RippleShader;->setDistortionStrength(F)V

    .line 34
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/surfaceeffects/ripple/RippleView;->getRippleShader()Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 39
    move-result-object p1

    .line 42
    long-to-float v0, v0

    .line 43
    const-string v1, "in_time"

    .line 44
    invoke-virtual {p1, v1, v0}, Landroid/graphics/RuntimeShader;->setFloatUniform(Ljava/lang/String;F)V

    .line 46
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/RippleView$startRipple$1;->this$0:Lcom/android/systemui/surfaceeffects/ripple/RippleView;

    .line 49
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 51
    return-void
    .line 54
.end method
