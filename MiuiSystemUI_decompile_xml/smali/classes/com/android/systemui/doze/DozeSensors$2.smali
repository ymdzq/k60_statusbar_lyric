.class public final Lcom/android/systemui/doze/DozeSensors$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthController$Callback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/doze/DozeSensors;


# direct methods
.method public constructor <init>(Lcom/android/systemui/doze/DozeSensors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAllAuthenticatorsRegistered(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    .line 5
    :cond_0
    return-void
    .line 8
.end method

.method public final onEnrollmentsChanged(I)V
    .locals 1

    .line 1
    const/4 v0, 0x2

    .line 2
    if-ne p1, v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/android/systemui/doze/DozeSensors$2;->updateUdfpsEnrolled()V

    .line 5
    :cond_0
    return-void
    .line 8
.end method

.method public final updateUdfpsEnrolled()V
    .locals 9

    .line 1
    iget-object p0, p0, Lcom/android/systemui/doze/DozeSensors$2;->this$0:Lcom/android/systemui/doze/DozeSensors;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mAuthController:Lcom/android/systemui/biometrics/AuthController;

    .line 4
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/android/systemui/biometrics/AuthController;->isUdfpsEnrolled(I)Z

    .line 10
    move-result v0

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 14
    iget-object v0, p0, Lcom/android/systemui/doze/DozeSensors;->mTriggerSensors:[Lcom/android/systemui/doze/DozeSensors$TriggerSensor;

    .line 16
    array-length v1, v0

    .line 18
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    if-ge v3, v1, :cond_7

    .line 21
    aget-object v4, v0, v3

    .line 23
    iget v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mPulseReason:I

    .line 25
    const/16 v6, 0xb

    .line 27
    const/4 v7, 0x1

    .line 29
    iget-object v8, p0, Lcom/android/systemui/doze/DozeSensors;->mConfig:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 30
    if-ne v6, v5, :cond_2

    .line 32
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 34
    if-eqz v5, :cond_0

    .line 36
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 38
    move-result v5

    .line 41
    invoke-virtual {v8, v5}, Landroid/hardware/display/AmbientDisplayConfiguration;->quickPickupSensorEnabled(I)Z

    .line 42
    move-result v5

    .line 45
    if-eqz v5, :cond_0

    .line 46
    goto :goto_1

    .line 48
    :cond_0
    move v7, v2

    .line 49
    :goto_1
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 50
    if-ne v5, v7, :cond_1

    .line 52
    goto :goto_3

    .line 54
    :cond_1
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 55
    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 57
    goto :goto_3

    .line 60
    :cond_2
    const/16 v6, 0xa

    .line 61
    if-ne v6, v5, :cond_6

    .line 63
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUdfpsEnrolled:Z

    .line 65
    if-eqz v5, :cond_3

    .line 67
    iget-object v5, p0, Lcom/android/systemui/doze/DozeSensors;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 69
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 71
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 73
    move-result v5

    .line 76
    invoke-virtual {v8, v5}, Landroid/hardware/display/AmbientDisplayConfiguration;->alwaysOnEnabled(I)Z

    .line 77
    move-result v5

    .line 80
    if-nez v5, :cond_4

    .line 81
    iget-boolean v5, p0, Lcom/android/systemui/doze/DozeSensors;->mScreenOffUdfpsEnabled:Z

    .line 83
    if-eqz v5, :cond_3

    .line 85
    goto :goto_2

    .line 87
    :cond_3
    move v7, v2

    .line 88
    :cond_4
    :goto_2
    iget-boolean v5, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 89
    if-ne v5, v7, :cond_5

    .line 91
    goto :goto_3

    .line 93
    :cond_5
    iput-boolean v7, v4, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->mConfigured:Z

    .line 94
    invoke-virtual {v4}, Lcom/android/systemui/doze/DozeSensors$TriggerSensor;->updateListening()V

    .line 96
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    .line 99
    goto :goto_0

    .line 101
    :cond_7
    return-void
    .line 102
.end method
