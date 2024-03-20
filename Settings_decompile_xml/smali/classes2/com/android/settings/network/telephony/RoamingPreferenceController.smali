.class public Lcom/android/settings/network/telephony/RoamingPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "RoamingPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"

.field private static final TAG:Ljava/lang/String; = "RoamingController"


# instance fields
.field private mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

.field mDialogType:I

.field mFragmentManager:Landroidx/fragment/app/FragmentManager;

.field protected mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

.field mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

.field private mMobileNetworkInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field protected mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

.field public mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$DvRo_3wCOtsBfh9FBSr1USmhME0(Lcom/android/settings/network/telephony/RoamingPreferenceController;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->lambda$onAllMobileNetworkInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$sEEWx6GsUzbnV360us_S1fABlGA(Lcom/android/settings/network/telephony/RoamingPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->lambda$init$0()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 72
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    .line 84
    iput p5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 85
    const-class p2, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 86
    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    .line 87
    iput-object p4, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_0

    .line 89
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$onAllMobileNetworkInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 2

    .line 286
    iget-object v0, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 287
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    .line 288
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    .line 289
    iget-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 270
    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 271
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v2

    .line 269
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/network/telephony/RoamingDialogFragment;->newInstance(Ljava/lang/String;IIZ)Lcom/android/settings/network/telephony/RoamingDialogFragment;

    move-result-object p1

    .line 273
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "MobileDataDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 157
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 160
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_2

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 164
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isDisallowed()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string/jumbo v0, "nDDS voice call in ongoing"

    const-string v1, "RoamingController"

    .line 165
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "Do not allow the user to turn off DDS data roaming"

    .line 168
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/RestrictedSwitchPreference;->setEnabled(Z)V

    .line 170
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    sget v0, Lcom/android/settings/R$string;->mobile_data_settings_summary_dds_roaming_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    :cond_2
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v0, "force_home_network_bool"

    .line 96
    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x2

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 128
    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p1, -0x1

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    :goto_0
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

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 1

    .line 245
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 246
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 247
    iput-object p3, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    .line 248
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 249
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 250
    iget p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_0

    return-void

    .line 253
    :cond_0
    iget-object p3, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 254
    invoke-virtual {p3, p1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    if-nez p1, :cond_1

    .line 256
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "fail to init in sub"

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p3, "RoamingController"

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    return-void

    .line 260
    :cond_1
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 262
    new-instance p1, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object p2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance v0, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;)V

    invoke-direct {p1, p2, p3, v0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 240
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    if-nez p0, :cond_1

    goto :goto_0

    .line 241
    :cond_1
    iget-boolean v1, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isDataRoamingEnabled:Z

    :goto_0
    return v1
.end method

.method isDialogNeeded()Z
    .locals 10

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 182
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isChecked()Z

    move-result v0

    .line 183
    iget-object v2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v2, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v2

    const/4 v3, 0x1

    if-nez v0, :cond_2

    if-eqz v2, :cond_1

    const-string v4, "disable_charge_indication_bool"

    .line 186
    invoke-virtual {v2, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 188
    :cond_1
    iput v1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDialogType:I

    return v3

    :cond_2
    if-eqz v0, :cond_8

    .line 192
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isRoaming()Z

    move-result v0

    .line 193
    iget-object v2, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    const-string v4, "RoamingController"

    if-eqz v0, :cond_7

    if-eqz v2, :cond_7

    .line 199
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v5

    .line 200
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isInCiwlanOnlyMode()Z

    move-result v6

    if-nez v6, :cond_5

    if-nez v5, :cond_4

    goto :goto_1

    :cond_4
    const-string p0, "isDialogNeeded: not in C_IWLAN-only mode"

    .line 226
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 202
    :cond_5
    :goto_1
    iget-object v7, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v8, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 203
    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v8

    .line 202
    invoke-virtual {v7, v8, v3}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v7

    if-eqz v7, :cond_6

    .line 207
    :try_start_0
    invoke-interface {v7}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v7
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v8, 0x2

    if-ne v7, v8, :cond_6

    move v7, v3

    goto :goto_2

    :catch_0
    move-exception v7

    const-string v8, "getRegistrationTechnology failed"

    .line 210
    invoke-static {v4, v8, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_6
    move v7, v1

    .line 213
    :goto_2
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDialogNeeded: isRoaming = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInVoiceCall = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInCiwlanOnlyMode = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCiwlanModeSupported = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isImsRegisteredOverCiwlan = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v7, :cond_8

    .line 222
    iput v3, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDialogType:I

    return v3

    :cond_7
    const-string p0, "isDialogNeeded: not roaming or not in a call"

    .line 229
    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_3
    return v1
.end method

.method public bridge synthetic onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onActiveSubInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAirplaneModeChanged(Z)V

    return-void
.end method

.method public onAllMobileNetworkInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 284
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    .line 285
    new-instance v0, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/RoamingPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public bridge synthetic onAllUiccInfoChanged(Ljava/util/List;)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAllUiccInfoChanged(Ljava/util/List;)V

    return-void
.end method

.method public bridge synthetic onAnyOngoingCallOnDevice(Z)V
    .locals 0

    .line 0
    invoke-super {p0, p1}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onAnyOngoingCallOnDevice(Z)V

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

.method public onDataRoamingChanged(IZ)V
    .locals 1

    .line 297
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq p1, v0, :cond_0

    .line 298
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "onDataRoamingChanged - wrong subId : "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " / "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "RoamingController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 301
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 105
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    .line 115
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->unregister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->isDialogNeeded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 136
    iget p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mDialogType:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->showDialog(I)V

    const/4 p0, 0x0

    return p0

    .line 139
    :cond_0
    iget-object p0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->setDataRoamingEnabled(Z)V

    const/4 p0, 0x1

    return p0
.end method

.method public setMobileNetworkInfoEntity(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    .line 278
    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 148
    iget-object v0, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 151
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 152
    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/RoamingPreferenceController;->mSwitchPreference:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 153
    invoke-direct {p0}, Lcom/android/settings/network/telephony/RoamingPreferenceController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
