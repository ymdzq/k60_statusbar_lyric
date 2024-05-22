.class public final synthetic Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/keyguard/KeyguardSecurityViewFlipperController$OnViewInflatedCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onViewInflated(Lcom/android/keyguard/KeyguardInputViewController;)V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;->$r8$classId:I

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$$ExternalSyntheticLambda8;->f$0:Ljava/lang/Object;

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    check-cast p0, Lcom/android/keyguard/KeyguardSecurityContainerController$11;

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainerController$11;->this$0:Lcom/android/keyguard/KeyguardSecurityContainerController;

    .line 12
    invoke-static {p0, p1}, Lcom/android/keyguard/KeyguardSecurityContainerController;->-$$Nest$mhandleFingerprintStateChanged(Lcom/android/keyguard/KeyguardSecurityContainerController;Lcom/android/keyguard/KeyguardInputViewController;)V

    .line 14
    return-void

    .line 17
    :pswitch_1
    check-cast p0, Ljava/lang/Runnable;

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardInputViewController;->startDisappearAnimation(Ljava/lang/Runnable;)Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_0

    .line 24
    if-eqz p0, :cond_0

    .line 26
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 28
    :cond_0
    return-void

    .line 31
    :goto_0
    check-cast p0, Ljava/lang/String;

    .line 32
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardInputViewController;->getKeyguardMessageAreaController()Lcom/android/keyguard/KeyguardMessageAreaController;

    .line 34
    move-result-object p1

    .line 37
    if-eqz p1, :cond_1

    .line 38
    const/4 v0, 0x1

    .line 40
    invoke-virtual {p1, p0, v0}, Lcom/android/keyguard/KeyguardMessageAreaController;->setMessage(Ljava/lang/CharSequence;Z)V

    .line 41
    :cond_1
    return-void

    .line 44
    nop

    .line 45
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 46
.end method
