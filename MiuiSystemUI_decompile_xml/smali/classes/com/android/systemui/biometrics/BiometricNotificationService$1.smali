.class public final Lcom/android/systemui/biometrics/BiometricNotificationService$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/KeyguardStateController$Callback;


# instance fields
.field public mIsShowing:Z

.field public final synthetic this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/BiometricNotificationService;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final onKeyguardShowingChanged()V
    .locals 12

    .line 1
    iget-object v6, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->this$0:Lcom/android/systemui/biometrics/BiometricNotificationService;

    .line 2
    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 4
    move-object v1, v0

    .line 6
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 7
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 9
    if-nez v1, :cond_4

    .line 11
    move-object v1, v0

    .line 13
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 14
    iget-boolean v1, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 16
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    .line 18
    if-ne v1, v2, :cond_0

    .line 20
    goto/16 :goto_1

    .line 22
    :cond_0
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 24
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 26
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    .line 28
    iget-object p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 30
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 35
    move-result-object p0

    .line 38
    const-string v0, "face_unlock_re_enroll"

    .line 39
    const/4 v1, -0x2

    .line 41
    const/4 v7, 0x0

    .line 42
    invoke-static {p0, v0, v7, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 43
    move-result p0

    .line 46
    const/4 v8, 0x1

    .line 47
    if-ne p0, v8, :cond_1

    .line 48
    move p0, v8

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move p0, v7

    .line 52
    :goto_0
    const-wide/16 v9, 0x1388

    .line 53
    const v11, 0x7f1301a7    # @string/biometric_re_enroll_notification_content 'This is required to improve security and performance'

    .line 55
    if-eqz p0, :cond_2

    .line 58
    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    .line 60
    if-nez p0, :cond_2

    .line 62
    iput-boolean v8, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFaceNotificationQueued:Z

    .line 64
    const p0, 0x7f1303fb    # @string/face_re_enroll_notification_title 'Set up Face Unlock again'

    .line 66
    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v2

    .line 74
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v3

    .line 78
    const p0, 0x7f1303fa    # @string/face_re_enroll_notification_name 'Face Unlock'

    .line 79
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v4

    .line 85
    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;

    .line 86
    const/4 v5, 0x0

    .line 88
    move-object v0, p0

    .line 89
    move-object v1, v6

    .line 90
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 91
    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    .line 94
    invoke-virtual {v0, p0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 96
    :cond_2
    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReenrollRequired:Z

    .line 99
    if-eqz p0, :cond_3

    .line 101
    iget-boolean p0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    .line 103
    if-nez p0, :cond_3

    .line 105
    iput-boolean v7, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintReenrollRequired:Z

    .line 107
    iput-boolean v8, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mFingerprintNotificationQueued:Z

    .line 109
    const p0, 0x7f130434    # @string/fingerprint_re_enroll_notification_title 'Set up Fingerprint Unlock again'

    .line 111
    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mContext:Landroid/content/Context;

    .line 114
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {v0, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 120
    move-result-object v3

    .line 123
    const p0, 0x7f130433    # @string/fingerprint_re_enroll_notification_name 'Fingerprint Unlock'

    .line 124
    invoke-virtual {v0, p0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 130
    new-instance p0, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;

    .line 131
    const/4 v5, 0x1

    .line 133
    move-object v0, p0

    .line 134
    move-object v1, v6

    .line 135
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/BiometricNotificationService$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/BiometricNotificationService;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 136
    iget-object v0, v6, Lcom/android/systemui/biometrics/BiometricNotificationService;->mHandler:Landroid/os/Handler;

    .line 139
    invoke-virtual {v0, p0, v9, v10}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 141
    :cond_3
    return-void

    .line 144
    :cond_4
    :goto_1
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 145
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 147
    iput-boolean v0, p0, Lcom/android/systemui/biometrics/BiometricNotificationService$1;->mIsShowing:Z

    .line 149
    return-void
    .line 151
.end method
