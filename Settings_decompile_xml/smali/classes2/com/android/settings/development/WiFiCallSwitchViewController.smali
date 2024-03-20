.class public Lcom/android/settings/development/WiFiCallSwitchViewController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WiFiCallSwitchViewController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final PHONE_COUNT:I


# instance fields
.field private final mCarrierReceiver:Landroid/content/BroadcastReceiver;

.field private final mContext:Landroid/content/Context;


# direct methods
.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/development/WiFiCallSwitchViewController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->updateState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 39
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    sput v0, Lcom/android/settings/development/WiFiCallSwitchViewController;->PHONE_COUNT:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 94
    new-instance v0, Lcom/android/settings/development/WiFiCallSwitchViewController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/WiFiCallSwitchViewController$1;-><init>(Lcom/android/settings/development/WiFiCallSwitchViewController;)V

    iput-object v0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mCarrierReceiver:Landroid/content/BroadcastReceiver;

    if-eqz p2, :cond_0

    .line 45
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 47
    :cond_0
    iput-object p1, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 1

    const-string v0, "carrier_config"

    .line 106
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    if-eqz p0, :cond_0

    .line 111
    invoke-virtual {p0, p2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 114
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 117
    :cond_1
    invoke-static {}, Landroid/telephony/CarrierConfigManager;->getDefaultConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public static isWfcAvailable(Landroid/content/Context;)Z
    .locals 4

    .line 122
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    move v0, v1

    .line 125
    :goto_0
    sget v2, Lcom/android/settings/development/WiFiCallSwitchViewController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 126
    invoke-static {v0}, Lcom/android/settings/PlatformUtils;->getSubId(I)J

    move-result-wide v2

    long-to-int v2, v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    const-string v3, "carrier_wfc_ims_available_bool_develop"

    .line 128
    invoke-static {p0, v3, v2}, Lcom/android/settings/development/WiFiCallSwitchViewController;->getBooleanCarrierConfig(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private isWfcEnableByUser()Z
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 137
    :goto_0
    sget v2, Lcom/android/settings/development/WiFiCallSwitchViewController;->PHONE_COUNT:I

    if-ge v0, v2, :cond_2

    .line 138
    iget-object v2, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    invoke-static {v2, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 140
    :cond_0
    invoke-static {v0}, Lcom/android/settings/PlatformUtils;->getSubId(I)J

    move-result-wide v3

    long-to-int v3, v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 142
    invoke-virtual {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method private recordOpenVoWiFiEvent(I)V
    .locals 6

    .line 157
    new-instance p0, Landroid/os/Bundle;

    invoke-direct {p0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v0, "phoneId"

    .line 158
    invoke-virtual {p0, v0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p1, "EVENT"

    const-string/jumbo v0, "vowifi_enable"

    .line 159
    invoke-virtual {p0, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string/jumbo p1, "miui.telephony.TelephonyManagerEx"

    .line 161
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    const-string v0, "getDefault"

    const/4 v1, 0x0

    .line 162
    invoke-virtual {p1, v0, v1}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v2, 0x1

    .line 163
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 164
    invoke-virtual {v0, v1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string/jumbo v1, "recordTelephonyEvent"

    new-array v3, v2, [Ljava/lang/Class;

    .line 165
    const-class v4, Landroid/os/Bundle;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    .line 166
    invoke-virtual {p1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 167
    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 169
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private registerBroadcastReceiver()V
    .locals 2

    .line 151
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    .line 152
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mCarrierReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method private updateState()V
    .locals 1

    .line 92
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    iget-object p0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->isWfcAvailable(Landroid/content/Context;)Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "button_wificall"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->isWfcAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 73
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x0

    .line 74
    :goto_0
    sget v0, Lcom/android/settings/development/WiFiCallSwitchViewController;->PHONE_COUNT:I

    if-ge p2, v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 76
    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 77
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    if-eqz p1, :cond_0

    .line 79
    invoke-direct {p0, p2}, Lcom/android/settings/development/WiFiCallSwitchViewController;->recordOpenVoWiFiEvent(I)V

    :cond_0
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->updateState()V

    return-void
.end method

.method public onStart()V
    .locals 1

    .line 62
    invoke-direct {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->registerBroadcastReceiver()V

    .line 63
    iget-object v0, p0, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->isWfcEnableByUser()Z

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/WiFiCallSwitchViewController;->mCarrierReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method
