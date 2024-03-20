.class public Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FiveGNrcaMDBPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;
    }
.end annotation


# static fields
.field private static final CATEGORY_NRCA_PROPERTY_KEY:Ljava/lang/String; = "nrca_property"

.field private static final NRCA_SWITCH_KEY:Ljava/lang/String; = "nrca_switch"

.field private static final PREF_NRCA_TYPE_KEY:Ljava/lang/String; = "nrca_type"

.field private static final SIM_NRCA_CATEGORY_KEY:Ljava/lang/String; = "_nrca_category_key"

.field private static final TAG:Ljava/lang/String; = "FiveGNrcaMDBPreferenceController"


# instance fields
.field private mAirplaneMode:Z

.field private mContext:Landroid/content/Context;

.field private mDataSubId:I

.field private mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

.field private final mNrcaReceiver:Landroid/content/BroadcastReceiver;

.field private mNrcaSwitchView:Lcom/android/settings/development/NrcaMDBSwitchView;

.field private mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

.field private mSwitchCategory:Landroidx/preference/PreferenceCategory;

.field private mTelephonyCallback:Landroid/telephony/TelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAirplaneMode(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mAirplaneMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAirplaneMode(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mAirplaneMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateDefaultDataSubId(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updateDefaultDataSubId()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateNrcaState(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreference(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 43
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    .line 44
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaSwitchView:Lcom/android/settings/development/NrcaMDBSwitchView;

    .line 45
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

    .line 46
    iput-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 p2, 0x0

    .line 48
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mAirplaneMode:Z

    .line 51
    sget v0, Lmiui/telephony/SubscriptionManager;->INVALID_SUBSCRIPTION_ID:I

    iput v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mDataSubId:I

    .line 52
    new-instance v0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$ServiceStateTelephonyCallback;-><init>(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    .line 106
    new-instance v0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController$1;-><init>(Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    .line 64
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "airplane_mode_on"

    const/4 v1, -0x1

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    move p2, v0

    :cond_0
    iput-boolean p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mAirplaneMode:Z

    .line 66
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    .line 67
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 68
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {p1}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mDataSubId:I

    .line 69
    iget-object p2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private getDataNetworkType(Landroid/telephony/ServiceState;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 179
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private getPhoneCount()I
    .locals 0

    .line 175
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    return p0
.end method

.method private getSubscriptionInfoBySlot(I)Lmiui/telephony/SubscriptionInfo;
    .locals 3

    .line 162
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/SubscriptionManager;->getAvailableSubscriptionInfoList()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 166
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/telephony/SubscriptionInfo;

    .line 167
    invoke-virtual {v1}, Lmiui/telephony/SubscriptionInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_1

    return-object v1

    :cond_2
    return-object v0
.end method

.method private registerBroadcastReceiver()V
    .locals 3

    .line 154
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    .line 155
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    .line 156
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {v1, p0, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    const-string p0, "FiveGNrcaMDBPreferenceController"

    const-string/jumbo v0, "register broadcastreceiver"

    .line 158
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDefaultDataSubId()V
    .locals 3

    .line 146
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSubscriptionManager:Lmiui/telephony/SubscriptionManager;

    invoke-virtual {v0}, Lmiui/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mDataSubId:I

    .line 147
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mDataSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 149
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private updateNrcaState(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 136
    invoke-direct {p0, p1}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->getDataNetworkType(Landroid/telephony/ServiceState;)I

    move-result v0

    const/16 v1, 0x14

    if-ne v0, v1, :cond_0

    if-eqz p1, :cond_0

    .line 138
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->isUsingCarrierAggregation()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget p1, Lcom/android/settings/R$string;->nrca_registered:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    sget p1, Lcom/android/settings/R$string;->nrca_unregistered:I

    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :goto_0
    return-void
.end method

.method private updatePreference()V
    .locals 3

    .line 124
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v0

    .line 125
    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 126
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updatePreference: isSimInsert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FiveGNrcaMDBPreferenceController"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    .line 128
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaSwitchView:Lcom/android/settings/development/NrcaMDBSwitchView;

    if-nez v0, :cond_0

    .line 129
    new-instance v0, Lcom/android/settings/development/NrcaMDBSwitchView;

    iget-object v1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/development/NrcaMDBSwitchView;-><init>(Landroidx/preference/PreferenceGroup;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaSwitchView:Lcom/android/settings/development/NrcaMDBSwitchView;

    .line 131
    :cond_0
    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaSwitchView:Lcom/android/settings/development/NrcaMDBSwitchView;

    invoke-virtual {p0}, Lcom/android/settings/development/NrcaMDBSwitchView;->updateNrcaButtonUI()V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 3

    .line 79
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string/jumbo v0, "sim_nrca_category_key"

    .line 80
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    .line 81
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 82
    new-instance v1, Landroidx/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroidx/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 83
    sget v2, Lcom/android/settings/R$string;->nrca_switch_title:I

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setTitle(I)V

    const-string/jumbo v2, "nrca_switch"

    .line 84
    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 86
    iput-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mSwitchCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "nrca_property"

    .line 88
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaPropertyCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "nrca_type"

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaTypePref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 0

    .line 0
    const/4 p0, 0x0

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

.method public onPause()V
    .locals 2

    const-string v0, "FiveGNrcaMDBPreferenceController"

    const-string/jumbo v1, "onPause"

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 95
    invoke-virtual {p0, v0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->setListening(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2

    const-string v0, "FiveGNrcaMDBPreferenceController"

    const-string/jumbo v1, "onResume"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->setListening(Z)V

    .line 102
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updatePreference()V

    .line 103
    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->updateNrcaState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method public setListening(Z)V
    .locals 1

    if-eqz p1, :cond_0

    .line 185
    invoke-direct {p0}, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->registerBroadcastReceiver()V

    .line 186
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p1, v0, p0}, Landroid/telephony/TelephonyManager;->registerTelephonyCallback(Ljava/util/concurrent/Executor;Landroid/telephony/TelephonyCallback;)V

    goto :goto_0

    .line 188
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mNrcaReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 189
    iget-object p1, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p0, p0, Lcom/android/settings/development/FiveGNrcaMDBPreferenceController;->mTelephonyCallback:Landroid/telephony/TelephonyCallback;

    invoke-virtual {p1, p0}, Landroid/telephony/TelephonyManager;->unregisterTelephonyCallback(Landroid/telephony/TelephonyCallback;)V

    :goto_0
    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
