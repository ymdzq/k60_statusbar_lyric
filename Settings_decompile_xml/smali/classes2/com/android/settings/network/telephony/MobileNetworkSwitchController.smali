.class public Lcom/android/settings/network/telephony/MobileNetworkSwitchController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "MobileNetworkSwitchController.java"

# interfaces
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "MobileNetworkSwitchCtrl"


# instance fields
.field private isReceiverRegistered:Z

.field private mCallState:I

.field private mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mContext:Landroid/content/Context;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSubId:I

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$aHZrZC5pece3EaKXSWeaHl9x7Gg(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;Landroid/widget/Switch;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->lambda$displayPreference$0(Landroid/widget/Switch;Z)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCallState(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSubId(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyManager(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdate(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 51
    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    const/4 p2, 0x0

    .line 54
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->isReceiverRegistered:Z

    .line 173
    new-instance p2, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$1;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 59
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    const/4 v0, -0x1

    .line 60
    iput v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    .line 61
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 62
    new-instance v0, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 63
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "phone"

    .line 64
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string v0, "android.intent.action.PHONE_STATE"

    .line 67
    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    const/4 p1, 0x1

    .line 69
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->isReceiverRegistered:Z

    .line 70
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Landroid/widget/Switch;Z)Z
    .locals 1

    .line 104
    iget p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    .line 105
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "displayPreference: mSubId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", mSubInfo="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MobileNetworkSwitchCtrl"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p1

    if-eq p1, p2, :cond_0

    .line 107
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-static {p1, p0, p2}, Lcom/android/settings/network/SubscriptionUtil;->startToggleSubscriptionDialogActivity(Landroid/content/Context;IZ)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private update()V
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v0

    const/4 v1, 0x1

    const-string v2, "MobileNetworkSwitchCtrl"

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 121
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->canDisablePhysicalSubscription()Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "update: Hide SIM option for 1.4 HAL in single sim"

    .line 122
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->hide()V

    return-void

    .line 127
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->getAvailableSubscriptions(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 128
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    iget v5, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    if-ne v4, v5, :cond_2

    .line 129
    iput-object v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 134
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    .line 137
    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    if-nez v3, :cond_4

    if-nez v0, :cond_4

    .line 142
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    goto :goto_0

    .line 138
    :cond_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "update: disable switchbar, isEcbmEnabled="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isScbmEnabled="

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", mCallState="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mCallState:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setSwitchBarEnabled(Z)V

    .line 147
    :goto_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_5

    .line 148
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->hide()V

    goto :goto_1

    .line 150
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->show()V

    .line 151
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update(): mSubId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isActiveSubscriptionId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    .line 153
    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    invoke-virtual {v1, p0}, Landroid/telephony/SubscriptionManager;->isActiveSubscriptionId(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setCheckedInternal(Z)V

    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/core/BasePreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SettingsMainSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSwitchBar:Lcom/android/settings/widget/SettingsMainSwitchPreference;

    .line 101
    new-instance v0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileNetworkSwitchController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SettingsMainSwitchPreference;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/SettingsMainSwitchBar$OnBeforeCheckedChangeListener;)V

    .line 112
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
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

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method init(I)V
    .locals 0

    .line 74
    iput p1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mSubId:I

    return-void
.end method

.method public bridge synthetic isPublicSlice()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isPublicSlice()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic isSliceable()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->isSliceable()Z

    move-result p0

    return p0
.end method

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_DESTROY:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->isReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    .line 92
    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->isReceiverRegistered:Z

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 0
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 85
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {p0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 79
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->mChangeListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 170
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileNetworkSwitchController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
