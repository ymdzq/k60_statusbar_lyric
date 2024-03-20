.class public final synthetic Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

.field public final synthetic f$1:Ljava/lang/String;

.field public final synthetic f$2:Ljava/lang/String;

.field public final synthetic f$3:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    iput p5, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 6
    iput-object p3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 8
    iput-object p4, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 10
    iget-object v4, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 12
    iget-object v5, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 14
    const-string v2, "face_action_show_reenroll_dialog"

    .line 16
    const/4 v6, 0x1

    .line 18
    invoke-virtual/range {v1 .. v6}, Lcom/android/systemui/biometrics/BiometricNotificationService;->showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 19
    return-void

    .line 22
    :goto_0
    iget-object v7, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 23
    iget-object v9, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    .line 25
    iget-object v10, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$2:Ljava/lang/String;

    .line 27
    iget-object v11, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;->f$3:Ljava/lang/String;

    .line 29
    const-string v8, "fingerprint_action_show_reenroll_dialog"

    .line 31
    const/4 v12, 0x2

    .line 33
    invoke-virtual/range {v7 .. v12}, Lcom/android/systemui/biometrics/BiometricNotificationService;->showNotification(Ljava/lang/String;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;I)V

    .line 34
    return-void

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 38
.end method
