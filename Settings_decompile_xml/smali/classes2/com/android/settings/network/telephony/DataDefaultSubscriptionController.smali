.class public Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;
.super Lcom/android/settings/network/telephony/DefaultSubscriptionController;
.source "DataDefaultSubscriptionController.java"


# static fields
.field private static final SETTING_USER_PREF_DATA_SUB:Ljava/lang/String; = "user_preferred_data_sub"


# instance fields
.field private mHasAnyOngoingCallOnDevice:Z

.field private mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;)V

    const/4 p2, 0x0

    .line 35
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mHasAnyOngoingCallOnDevice:Z

    .line 41
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method private hasAnyOngoingCallOnDevice()Z
    .locals 0

    .line 104
    iget-boolean p0, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mHasAnyOngoingCallOnDevice:Z

    return p0
.end method

.method private isSmartDdsEnabled()Z
    .locals 2

    .line 128
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "smart_dds_switch"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method private setUserPrefDataSubIdInDb(I)V
    .locals 1

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_preferred_data_sub"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method protected getDefaultSubscriptionId()I
    .locals 5

    .line 46
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 47
    iget-object v1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 48
    invoke-virtual {v2}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v3

    .line 49
    iget-boolean v4, v2, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isActiveSubscriptionId:Z

    if-eqz v4, :cond_0

    if-ne v3, v0, :cond_0

    .line 50
    iput-object v2, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    return v3

    :cond_1
    const/4 p0, -0x1

    return p0
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

.method public getSummary()Ljava/lang/CharSequence;
    .locals 4

    .line 66
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->isSmartDdsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->dds_preference_smart_dds_switch_is_on:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->isRtlMode()Z

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/4 v2, 0x1

    iget-object p0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mSubInfoEntityList:Ljava/util/List;

    const/4 v3, 0x0

    invoke-static {v0, v1, v3, v2, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getPreferredStatus(ZLandroid/content/Context;ZZLjava/util/List;)Ljava/lang/CharSequence;

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

.method protected isAskEverytimeSupported()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

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

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAirplaneModeChanged(Z)V

    return-void
.end method

.method public bridge synthetic onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAllMobileNetworkInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public onAnyOngoingCallOnDevice(Z)V
    .locals 0

    .line 92
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mHasAnyOngoingCallOnDevice:Z

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 94
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onAvailableSubInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAvailableSubInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onCallStateChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onCallStateChanged(I)V

    return-void
.end method

.method public bridge synthetic onDataRoamingChanged(IZ)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onDataRoamingChanged(IZ)V

    return-void
.end method

.method public onDefaultDataChanged(I)V
    .locals 0

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->updateEntries()V

    .line 82
    iget-object p1, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mPreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->refreshSummary(Landroidx/preference/Preference;)V

    return-void
.end method

.method public bridge synthetic onDefaultSubInfoChanged(I)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/DefaultSubscriptionReceiver$DefaultSubscriptionListener;->onDefaultSubInfoChanged(I)V

    return-void
.end method

.method public onResume()V
    .locals 1

    .line 99
    invoke-super {p0}, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->onResume()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->isAnyOngoingCallOnDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mHasAnyOngoingCallOnDevice:Z

    return-void
.end method

.method protected setDefaultSubscription(I)V
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/network/telephony/DefaultSubscriptionController;->mManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->setUserPrefDataSubIdInDb(I)V

    return-void
.end method

.method protected updatePreferenceState(Landroidx/preference/Preference;)V
    .locals 3

    if-eqz p1, :cond_3

    .line 110
    iget-object v0, p0, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getEmergencyCallbackMode()Z

    move-result v0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->isSmartDdsEnabled()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 116
    invoke-direct {p0}, Lcom/android/settings/network/telephony/DataDefaultSubscriptionController;->hasAnyOngoingCallOnDevice()Z

    move-result v1

    if-nez v1, :cond_1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 118
    invoke-static {v0}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidyFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->allowUsertoSetDDS(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    :cond_0
    const/4 v2, 0x1

    .line 116
    :cond_1
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_0

    .line 121
    :cond_2
    invoke-virtual {p1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_3
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
