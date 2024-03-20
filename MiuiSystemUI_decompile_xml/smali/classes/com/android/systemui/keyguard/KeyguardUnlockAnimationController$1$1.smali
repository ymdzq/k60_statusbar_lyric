.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 8
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 10
    move-result-object p1

    .line 13
    check-cast p1, Ljava/lang/Float;

    .line 14
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 16
    move-result p1

    .line 19
    iput p1, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 20
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 22
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->updateSurfaceBehindAppearAmount()V

    .line 24
    return-void

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 28
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/Float;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result v1

    .line 39
    iput v1, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 40
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$1;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 42
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Ljava/lang/Float;

    .line 48
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 53
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 58
.end method
