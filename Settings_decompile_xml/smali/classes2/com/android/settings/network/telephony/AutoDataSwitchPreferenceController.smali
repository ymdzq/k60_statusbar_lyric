.class public Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "AutoDataSwitchPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AutoDataSwitchPrefCtrl"


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mManager:Landroid/telephony/TelephonyManager;

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$zIXJ2gtFg9ounmCrrKoSEAiN4Ys(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 90
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    new-instance p2, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$1;-><init>(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-void
.end method

.method private getActiveSubscriptionIdList()[I
    .locals 0

    .line 270
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/ProxySubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/network/ProxySubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object p0

    return-object p0
.end method

.method private getOtherSubId([I)I
    .locals 4

    .line 146
    array-length v0, p1

    const/4 v1, 0x1

    if-le v0, v1, :cond_1

    .line 147
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p1, v1

    .line 148
    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq v2, v3, :cond_0

    return v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method private isCrossSimCallingAllowedByPlatform(Landroid/content/Context;I)Z
    .locals 1

    .line 184
    new-instance v0, Lcom/android/settings/network/ims/WifiCallingQueryImsState;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v0}, Lcom/android/settings/network/ims/WifiCallingQueryImsState;->isWifiCallingSupported()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 185
    invoke-virtual {p0, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string p1, "carrier_cross_sim_ims_available_bool"

    .line 186
    invoke-virtual {p0, p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method private isEnabled(I)Z
    .locals 2

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 160
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 161
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-eqz p0, :cond_1

    const/4 p1, 0x3

    .line 162
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->refreshPreference()V

    return-void
.end method

.method private trySetCrossSimCalling(Landroid/content/Context;[IZ)V
    .locals 4

    .line 208
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v2, 0x720

    invoke-virtual {v0, v1, v2, p3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 210
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget v2, p2, v1

    .line 211
    invoke-direct {p0, p1, v2}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->isCrossSimCallingAllowedByPlatform(Landroid/content/Context;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 212
    invoke-direct {p0, p1, v2, p3}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->trySetCrossSimCallingPerSub(Landroid/content/Context;IZ)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private trySetCrossSimCallingPerSub(Landroid/content/Context;IZ)V
    .locals 1

    .line 200
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->getImsMmTelManager(Landroid/content/Context;I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    invoke-virtual {p0, p3}, Landroid/telephony/ims/ImsMmTelManager;->setCrossSimCallingEnabled(Z)V
    :try_end_0
    .catch Landroid/telephony/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 202
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "failed to change cross SIM calling configuration to "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p3, " for subID "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo p2, "with exception: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "AutoDataSwitchPrefCtrl"

    invoke-static {p2, p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 134
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 136
    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 219
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_5

    .line 220
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq v0, p1, :cond_5

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->hasMobileData()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    if-nez p1, :cond_1

    return v1

    .line 228
    :cond_1
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 227
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 229
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-nez p1, :cond_2

    return v1

    .line 236
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidyFeatureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 238
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 237
    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidySimCard(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_3

    return v1

    .line 244
    :cond_3
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSmartDdsSwitchFeatureAvailable()Z

    move-result p0

    if-eqz p0, :cond_4

    const-string p0, "AutoDataSwitchPrefCtrl"

    const-string p1, "Smart DDS switch feature is available"

    .line 245
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_4
    const/4 p0, 0x0

    return p0

    :cond_5
    :goto_0
    return v1
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getImsMmTelManager(Landroid/content/Context;I)Landroid/telephony/ims/ImsMmTelManager;
    .locals 0

    .line 194
    const-class p0, Landroid/telephony/ims/ImsManager;

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/ims/ImsManager;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {p0, p2}, Landroid/telephony/ims/ImsManager;->getImsMmTelManager(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public bridge synthetic getIntentFilter()Landroid/content/IntentFilter;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected hasMobileData()Z
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method init(I)V
    .locals 2

    .line 95
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 1

    .line 141
    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isMobileDataPolicyEnabled(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    .line 122
    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 124
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-eqz v0, :cond_1

    .line 125
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;->unRegister(Landroid/content/Context;)V

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 128
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_2
    return-void
.end method

.method public onResume()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-nez v0, :cond_0

    .line 102
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-nez v0, :cond_1

    .line 106
    new-instance v0, Lcom/android/settings/network/MobileDataContentObserver;

    new-instance v1, Landroid/os/Handler;

    .line 107
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    .line 108
    new-instance v1, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;->setOnMobileDataChangedListener(Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;)V

    .line 110
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileDataContentObserver;->register(Landroid/content/Context;I)V

    .line 111
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 112
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq v0, v1, :cond_2

    .line 113
    iget-object v1, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/network/MobileDataContentObserver;->register(Landroid/content/Context;I)V

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 266
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public refreshPreference()V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 278
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_auto_data_switch_enables_cross_sim_calling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .line 281
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->getOtherSubId([I)I

    move-result v2

    invoke-direct {p0, v2}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->isEnabled(I)Z

    move-result v2

    invoke-direct {p0, v1, v0, v2}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->trySetCrossSimCalling(Landroid/content/Context;[IZ)V

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_1

    .line 284
    invoke-super {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setMobileDataPolicyEnabled(IZ)V

    .line 171
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_auto_data_switch_enables_cross_sim_calling:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 173
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->getActiveSubscriptionIdList()[I

    move-result-object v1

    invoke-direct {p0, v0, v1, p1}, Lcom/android/settings/network/telephony/AutoDataSwitchPreferenceController;->trySetCrossSimCalling(Landroid/content/Context;[IZ)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 254
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setVisible(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
