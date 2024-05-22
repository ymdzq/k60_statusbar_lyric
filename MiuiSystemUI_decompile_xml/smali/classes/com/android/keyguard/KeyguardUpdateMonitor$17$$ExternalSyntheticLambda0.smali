.class public final synthetic Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$17;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardUpdateMonitor$17;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x2

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ALL_AUTHENTICATORS_REGISTERED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 16
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 18
    return-void

    .line 21
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardUpdateMonitor$17;

    .line 22
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    sget-object v0, Lcom/android/keyguard/FaceAuthUiEvent;->FACE_AUTH_TRIGGERED_ENROLLMENTS_CHANGED:Lcom/android/keyguard/FaceAuthUiEvent;

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardUpdateMonitor$17;->this$0:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->updateBiometricListeningState(ILcom/android/keyguard/FaceAuthUiEvent;)V

    .line 31
    return-void

    .line 34
    nop

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
