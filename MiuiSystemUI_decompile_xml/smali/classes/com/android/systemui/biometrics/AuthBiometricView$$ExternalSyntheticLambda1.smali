.class public final synthetic Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/biometrics/AuthBiometricView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/AuthBiometricView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 4

    .line 1
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const/4 v0, 0x5

    .line 4
    const/4 v1, 0x3

    .line 5
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x6

    .line 7
    packed-switch p1, :pswitch_data_0

    .line 8
    goto :goto_0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 12
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 14
    if-ne p1, v0, :cond_0

    .line 16
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 18
    :cond_0
    return-void

    .line 21
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 22
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 24
    if-ne p1, v0, :cond_1

    .line 26
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 28
    :cond_1
    return-void

    .line 31
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 32
    sget p1, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 34
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 36
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 39
    const/4 v0, 0x4

    .line 41
    check-cast p1, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 42
    invoke-virtual {p1, v0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mTryAgainButton:Landroid/widget/Button;

    .line 47
    const/16 v0, 0x8

    .line 49
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    .line 51
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mAccessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 54
    invoke-static {p1, p0}, Lcom/android/systemui/biometrics/Utils;->notifyAccessibilityContentChanged(Landroid/view/accessibility/AccessibilityManager;Landroid/view/ViewGroup;)V

    .line 56
    return-void

    .line 59
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 60
    sget p1, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 62
    invoke-virtual {p0, v3}, Lcom/android/systemui/biometrics/AuthBiometricView;->updateState(I)V

    .line 64
    return-void

    .line 67
    :pswitch_4
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 68
    sget p1, Lcom/android/systemui/biometrics/AuthBiometricView;->$r8$clinit:I

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthBiometricView;->startTransitionToCredentialUI()V

    .line 72
    return-void

    .line 75
    :pswitch_5
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 76
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 78
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 80
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 82
    return-void

    .line 85
    :pswitch_6
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 86
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 88
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 90
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 92
    return-void

    .line 95
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 96
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mState:I

    .line 98
    const-string v0, "AuthBiometricView"

    .line 100
    if-ne p1, v3, :cond_2

    .line 102
    const-string p0, "Ignoring background click after authenticated"

    .line 104
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    goto :goto_1

    .line 109
    :cond_2
    iget p1, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mSize:I

    .line 110
    const/4 v3, 0x1

    .line 112
    if-ne p1, v3, :cond_3

    .line 113
    const-string p0, "Ignoring background click during small dialog"

    .line 115
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    goto :goto_1

    .line 120
    :cond_3
    if-ne p1, v1, :cond_4

    .line 121
    const-string p0, "Ignoring background click during large dialog"

    .line 123
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    goto :goto_1

    .line 128
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 129
    check-cast p0, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 131
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;->onAction(I)V

    .line 133
    :goto_1
    return-void

    .line 136
    nop

    .line 137
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 138
.end method
