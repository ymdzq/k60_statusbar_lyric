.class public Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "DataDuringCallsPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# static fields
.field private static final TAG:Ljava/lang/String; = "DataDuringCalls"


# instance fields
.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private final mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

.field private mManager:Landroid/telephony/TelephonyManager;

.field private mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

.field private mPreference:Landroidx/preference/SwitchPreference;

.field private mScreen:Landroidx/preference/PreferenceScreen;


# direct methods
.method public static synthetic $r8$lambda$diO9ggd4IX9ShYZCVmfb94EG708(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->lambda$onResume$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)Landroidx/preference/SwitchPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 54
    new-instance p1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$1;-><init>(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 0

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->refreshPreference()V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 139
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_3

    .line 140
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    if-eq v0, p1, :cond_3

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->hasMobileData()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    .line 145
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 144
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 146
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 153
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidyFeatureEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 155
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p0

    .line 154
    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidySimCard(Landroid/content/Context;I)Z

    move-result p0

    if-nez p0, :cond_2

    return v1

    :cond_2
    const/4 p0, 0x0

    return p0

    :cond_3
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

    .line 134
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/datausage/DataUsageUtils;->hasMobileData(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method init(I)V
    .locals 2

    .line 70
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 71
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

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

    .line 96
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 99
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-eqz v0, :cond_1

    .line 100
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;->unRegister(Landroid/content/Context;)V

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 103
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

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 80
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Lcom/android/settings/network/MobileDataContentObserver;

    new-instance v1, Landroid/os/Handler;

    .line 82
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;-><init>(Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    .line 83
    new-instance v1, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/network/MobileDataContentObserver;->setOnMobileDataChangedListener(Lcom/android/settings/network/MobileDataContentObserver$OnMobileDataChangedListener;)V

    .line 85
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/MobileDataContentObserver;->register(Landroid/content/Context;I)V

    .line 86
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 87
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq v0, v1, :cond_2

    .line 88
    iget-object v1, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mMobileDataContentObserver:Lcom/android/settings/network/MobileDataContentObserver;

    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/network/MobileDataContentObserver;->register(Landroid/content/Context;I)V

    .line 90
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mDefaultDataChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 1

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public refreshPreference()V
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 187
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDuringCallsPreferenceController;->mScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 188
    invoke-super {p0, v0}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 164
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
