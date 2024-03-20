.class public Lcom/android/settings/development/FiveGNrcaConfigController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "FiveGNrcaConfigController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mNrcaReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/development/FiveGNrcaConfigController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->updateState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Lcom/android/settings/development/FiveGNrcaConfigController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGNrcaConfigController$1;-><init>(Lcom/android/settings/development/FiveGNrcaConfigController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 33
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 35
    :cond_0
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mContext:Landroid/content/Context;

    return-void
.end method

.method private isDisable(Landroid/content/Context;)Z
    .locals 2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string p1, "airplane_mode_on"

    const/4 v0, -0x1

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move p0, v0

    goto :goto_0

    :cond_0
    move p0, p1

    .line 96
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-eqz v1, :cond_1

    if-eqz p0, :cond_2

    :cond_1
    move p1, v0

    :cond_2
    return p1
.end method

.method private static isNrCaSupported()Z
    .locals 6

    const/4 v0, 0x0

    :try_start_0
    const-string/jumbo v1, "miui.telephony.TelephonyManagerEx"

    .line 109
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDefault"

    const/4 v3, 0x0

    .line 110
    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const/4 v4, 0x1

    .line 111
    invoke-virtual {v2, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 112
    invoke-virtual {v2, v3, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "isNrCaSupported"

    new-array v5, v0, [Ljava/lang/Class;

    .line 113
    invoke-virtual {v1, v3, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 114
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    new-array v3, v0, [Ljava/lang/Object;

    .line 115
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v1

    .line 117
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    return v0
.end method

.method public static isSearchable(Landroid/content/Context;)Z
    .locals 4

    .line 101
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, -0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    .line 103
    :goto_0
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Lmiui/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    .line 104
    invoke-static {}, Lcom/android/settings/development/FiveGNrcaConfigController;->isNrCaSupported()Z

    move-result v3

    if-eqz v3, :cond_1

    if-nez p0, :cond_1

    if-eqz v2, :cond_1

    move v0, v1

    :cond_1
    return v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 79
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 80
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private updateState()V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaConfigController;->isDisable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    goto :goto_0

    .line 89
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsEnabled()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "new_radio_carrier_aggregation"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 40
    invoke-static {}, Lcom/android/settings/development/FiveGNrcaConfigController;->isNrCaSupported()Z

    move-result p0

    return p0
.end method

.method public onPause()V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaConfigController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->registerBroadcastReceiver()V

    .line 52
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->updateState()V

    :cond_0
    return-void
.end method
