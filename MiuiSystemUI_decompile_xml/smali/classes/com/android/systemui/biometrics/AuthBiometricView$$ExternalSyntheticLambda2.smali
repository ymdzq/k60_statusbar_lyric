.class public final synthetic Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 8
    sget v0, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 10
    const/4 v0, 0x2

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 13
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterHelp()V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 19
    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 21
    return-void

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 25
    sget v0, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->getStateForAfterError()I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->handleResetAfterError()V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 39
    invoke-static {v0, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 41
    return-void

    .line 44
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 45
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 47
    const/4 v0, 0x1

    .line 49
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 50
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 52
    return-void

    .line 55
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 56
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 58
    const/16 v0, 0x8

    .line 60
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 64
    return-void

    .line 67
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 68
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 70
    const/4 v0, 0x5

    .line 72
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 73
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 75
    return-void

    .line 78
    nop

    .line 79
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 80
.end method
