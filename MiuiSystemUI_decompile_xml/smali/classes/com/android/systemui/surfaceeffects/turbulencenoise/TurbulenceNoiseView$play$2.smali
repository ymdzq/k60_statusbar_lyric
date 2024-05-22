.class public final Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $onAnimationEnd:Ljava/lang/Runnable;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;Ljava/lang/Runnable;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 9
    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->setCurrentAnimator(Landroid/animation/ValueAnimator;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 14
    if-eqz p0, :cond_0

    .line 16
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 18
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 22
    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->setCurrentAnimator(Landroid/animation/ValueAnimator;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 27
    if-eqz p0, :cond_1

    .line 29
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 31
    :cond_1
    return-void

    .line 34
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->this$0:Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;

    .line 35
    invoke-virtual {p1, v0}, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView;->setCurrentAnimator(Landroid/animation/ValueAnimator;)V

    .line 37
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/turbulencenoise/TurbulenceNoiseView$play$2;->$onAnimationEnd:Ljava/lang/Runnable;

    .line 40
    if-eqz p0, :cond_2

    .line 42
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 44
    :cond_2
    return-void

    .line 47
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method
