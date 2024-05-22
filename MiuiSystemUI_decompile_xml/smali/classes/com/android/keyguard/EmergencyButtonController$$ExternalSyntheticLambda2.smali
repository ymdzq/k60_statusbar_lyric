.class public final synthetic Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/keyguard/EmergencyButtonController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/EmergencyButtonController;ZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 5
    iput-boolean p2, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    iput-boolean p3, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$2:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$0:Lcom/android/keyguard/EmergencyButtonController;

    .line 2
    iget-boolean v1, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    iget-boolean p0, p0, Lcom/android/keyguard/EmergencyButtonController$$ExternalSyntheticLambda2;->f$2:Z

    .line 6
    iget-object v2, v0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 8
    check-cast v2, Lcom/android/keyguard/EmergencyButton;

    .line 10
    iget-object v3, v0, Lcom/android/keyguard/EmergencyButtonController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 12
    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    .line 14
    move-result v3

    .line 17
    iget-object v0, v0, Lcom/android/keyguard/EmergencyButtonController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    invoke-virtual {v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isSimPinSecure()Z

    .line 20
    move-result v0

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    const/4 v4, 0x0

    .line 27
    if-eqz v3, :cond_3

    .line 28
    const/4 v3, 0x1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    move p0, v3

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    if-eqz v0, :cond_1

    .line 35
    iget-boolean p0, v2, Lcom/android/keyguard/EmergencyButton;->mEnableEmergencyCallWhileSimLocked:Z

    .line 37
    :cond_1
    :goto_0
    sget-boolean v0, Lcom/miui/utils/configs/MiuiConfigs;->CN_CUSTOMIZATION_TEST:Z

    .line 39
    if-eqz v0, :cond_4

    .line 41
    if-eqz p0, :cond_2

    .line 43
    const-class p0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 45
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    check-cast p0, Lcom/android/keyguard/PhoneSignalControllerImpl;

    .line 51
    iget-boolean p0, p0, Lcom/android/keyguard/PhoneSignalControllerImpl;->mSignalAvailable:Z

    .line 53
    if-eqz p0, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    move v3, v4

    .line 58
    :goto_1
    move p0, v3

    .line 59
    goto :goto_2

    .line 60
    :cond_3
    move p0, v4

    .line 61
    :cond_4
    :goto_2
    if-eqz p0, :cond_6

    .line 62
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 64
    if-eqz v1, :cond_5

    .line 67
    const p0, 0x104057a    # @android:string/mediasize_na_ledger

    .line 69
    goto :goto_3

    .line 72
    :cond_5
    const p0, 0x7f1303d0    # @string/emergency_call_string 'Emergency'

    .line 73
    :goto_3
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setText(I)V

    .line 76
    goto :goto_4

    .line 79
    :cond_6
    const/4 p0, 0x4

    .line 80
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setVisibility(I)V

    .line 81
    :goto_4
    return-void
    .line 84
.end method
