.class public final Lcom/android/systemui/assist/AssistManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

.field public final mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

.field public final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public final mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mSysUiState:Ldagger/Lazy;

.field public final mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;Landroid/content/Context;Lcom/android/internal/app/AssistUtils;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/assist/PhoneStateMonitor;Lcom/android/systemui/recents/OverviewProxyService;Ldagger/Lazy;Lcom/android/systemui/assist/ui/DefaultUiController;Lcom/android/systemui/assist/AssistLogger;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/settings/DisplayTracker;Lcom/android/systemui/util/settings/SecureSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 9
    iput-object p3, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 11
    new-instance p1, Lcom/android/systemui/assist/AssistDisclosure;

    .line 13
    invoke-direct {p1, p2, p10}, Lcom/android/systemui/assist/AssistDisclosure;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 18
    iput-object p5, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 20
    iput-object p9, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 22
    iput-object p11, p0, Lcom/android/systemui/assist/AssistManager;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 24
    iput-object p12, p0, Lcom/android/systemui/assist/AssistManager;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 26
    iput-object p13, p0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 28
    new-instance p1, Lcom/android/systemui/assist/AssistManager$2;

    .line 30
    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistManager$2;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 32
    invoke-virtual {p3, p1}, Lcom/android/internal/app/AssistUtils;->registerVoiceInteractionSessionListener(Lcom/android/internal/app/IVoiceInteractionSessionListener;)V

    .line 35
    iput-object p8, p0, Lcom/android/systemui/assist/AssistManager;->mUiController:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 38
    iput-object p7, p0, Lcom/android/systemui/assist/AssistManager;->mSysUiState:Ldagger/Lazy;

    .line 40
    new-instance p1, Lcom/android/systemui/assist/AssistManager$1;

    .line 42
    invoke-direct {p1, p0}, Lcom/android/systemui/assist/AssistManager$1;-><init>(Lcom/android/systemui/assist/AssistManager;)V

    .line 44
    invoke-virtual {p6, p1}, Lcom/android/systemui/recents/OverviewProxyService;->addCallback(Lcom/android/systemui/recents/OverviewProxyService$OverviewProxyListener;)V

    .line 47
    return-void
    .line 50
.end method


# virtual methods
.method public final startAssist(Landroid/os/Bundle;)V
    .locals 8

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/android/internal/app/AssistUtils;->getActiveServiceComponentName()Landroid/content/ComponentName;

    .line 15
    move-result-object v1

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    .line 19
    move-result v1

    .line 22
    if-nez p1, :cond_1

    .line 23
    new-instance p1, Landroid/os/Bundle;

    .line 25
    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 27
    :cond_1
    move-object v3, p1

    .line 30
    const-string p1, "invocation_type"

    .line 31
    const/4 v2, 0x0

    .line 33
    invoke-virtual {v3, p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    .line 34
    move-result p1

    .line 37
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mPhoneStateMonitor:Lcom/android/systemui/assist/PhoneStateMonitor;

    .line 38
    invoke-virtual {v4}, Lcom/android/systemui/assist/PhoneStateMonitor;->getPhoneState()I

    .line 40
    move-result v4

    .line 43
    const-string v5, "invocation_phone_state"

    .line 44
    invoke-virtual {v3, v5, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 46
    const-string v5, "invocation_time_ms"

    .line 49
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 51
    move-result-wide v6

    .line 54
    invoke-virtual {v3, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 55
    iget-object v5, p0, Lcom/android/systemui/assist/AssistManager;->mAssistLogger:Lcom/android/systemui/assist/AssistLogger;

    .line 58
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    move-result-object v6

    .line 63
    const/4 v7, 0x1

    .line 64
    invoke-virtual {v5, p1, v7, v0, v6}, Lcom/android/systemui/assist/AssistLogger;->reportAssistantInvocationEventFromLegacy(IZLandroid/content/ComponentName;Ljava/lang/Integer;)V

    .line 65
    new-instance v5, Landroid/metrics/LogMaker;

    .line 68
    const/16 v6, 0x6b4

    .line 70
    invoke-direct {v5, v6}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 72
    invoke-virtual {v5, v7}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    .line 75
    move-result-object v5

    .line 78
    shl-int/2addr p1, v7

    .line 79
    or-int/2addr p1, v2

    .line 80
    shl-int/lit8 v4, v4, 0x4

    .line 81
    or-int/2addr p1, v4

    .line 83
    invoke-virtual {v5, p1}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    .line 84
    move-result-object p1

    .line 87
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 88
    iget-object p1, p0, Lcom/android/systemui/assist/AssistManager;->mContext:Landroid/content/Context;

    .line 91
    if-eqz v1, :cond_2

    .line 93
    iget-object v2, p0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 95
    const/4 v4, 0x4

    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    .line 98
    move-result-object v5

    .line 101
    const/4 v6, 0x0

    .line 102
    const/4 v7, 0x0

    .line 103
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/app/AssistUtils;->showSessionForActiveService(Landroid/os/Bundle;ILjava/lang/String;Lcom/android/internal/app/IVoiceInteractionSessionShowCallback;Landroid/os/IBinder;)Z

    .line 104
    goto/16 :goto_0

    .line 107
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mDeviceProvisionedController:Lcom/android/systemui/statusbar/policy/DeviceProvisionedController;

    .line 109
    check-cast v1, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 111
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isDeviceProvisioned()Z

    .line 113
    move-result v1

    .line 116
    if-nez v1, :cond_3

    .line 117
    goto :goto_0

    .line 119
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/assist/AssistManager;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 120
    const/4 v4, 0x3

    .line 122
    invoke-virtual {v1, v4, v2}, Lcom/android/systemui/statusbar/CommandQueue;->animateCollapsePanels(IZ)V

    .line 123
    const-string v1, "assist_structure_enabled"

    .line 126
    iget-object v4, p0, Lcom/android/systemui/assist/AssistManager;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 128
    const/4 v5, -0x2

    .line 130
    invoke-interface {v4, v7, v5, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 131
    move-result v1

    .line 134
    if-eqz v1, :cond_4

    .line 135
    move v2, v7

    .line 137
    :cond_4
    const-string/jumbo v1, "search"

    .line 138
    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 141
    move-result-object v1

    .line 144
    check-cast v1, Landroid/app/SearchManager;

    .line 145
    if-nez v1, :cond_5

    .line 147
    goto :goto_0

    .line 149
    :cond_5
    invoke-virtual {v1, v2}, Landroid/app/SearchManager;->getAssistIntent(Z)Landroid/content/Intent;

    .line 150
    move-result-object v1

    .line 153
    if-nez v1, :cond_6

    .line 154
    goto :goto_0

    .line 156
    :cond_6
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 157
    invoke-virtual {v1, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 160
    if-eqz v2, :cond_7

    .line 163
    invoke-static {p1}, Lcom/android/internal/app/AssistUtils;->isDisclosureEnabled(Landroid/content/Context;)Z

    .line 165
    move-result v0

    .line 168
    if-eqz v0, :cond_7

    .line 169
    iget-object v0, p0, Lcom/android/systemui/assist/AssistManager;->mAssistDisclosure:Lcom/android/systemui/assist/AssistDisclosure;

    .line 171
    iget-object v2, v0, Lcom/android/systemui/assist/AssistDisclosure;->mShowRunnable:Lcom/android/systemui/assist/AssistDisclosure$1;

    .line 173
    iget-object v0, v0, Lcom/android/systemui/assist/AssistDisclosure;->mHandler:Landroid/os/Handler;

    .line 175
    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 177
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 180
    :cond_7
    const v0, 0x7f010219    # @anim/search_launch_enter 'res/anim/search_launch_enter.xml'

    .line 183
    const v2, 0x7f01021a    # @anim/search_launch_exit 'res/anim/search_launch_exit.xml'

    .line 186
    :try_start_0
    invoke-static {p1, v0, v2}, Landroid/app/ActivityOptions;->makeCustomAnimation(Landroid/content/Context;II)Landroid/app/ActivityOptions;

    .line 189
    move-result-object p1

    .line 192
    const/high16 v0, 0x10000000

    .line 193
    invoke-virtual {v1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 195
    new-instance v0, Lcom/android/systemui/assist/AssistManager$3;

    .line 198
    invoke-direct {v0, p0, v1, p1}, Lcom/android/systemui/assist/AssistManager$3;-><init>(Lcom/android/systemui/assist/AssistManager;Landroid/content/Intent;Landroid/app/ActivityOptions;)V

    .line 200
    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 206
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 207
    const-string p1, "Activity not found for "

    .line 209
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 211
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 214
    move-result-object p1

    .line 217
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object p0

    .line 224
    const-string p1, "AssistManager"

    .line 225
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    :goto_0
    return-void
    .line 230
.end method
