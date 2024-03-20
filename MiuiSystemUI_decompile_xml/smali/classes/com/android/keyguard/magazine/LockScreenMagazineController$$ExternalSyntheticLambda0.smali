.class public final synthetic Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mLockScreenMagazinePre:Lcom/android/keyguard/magazine/LockScreenMagazinePreView;

    .line 10
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
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazinePreView;->setFullScreenLayoutAlpha(F)V

    .line 22
    return-void

    .line 25
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineController$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 26
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 31
    move-result-object p1

    .line 34
    check-cast p1, Ljava/lang/Float;

    .line 35
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 37
    move-result p1

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineController;->setPanelViewAlpha(F)V

    .line 41
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 46
.end method
