.class public Lcom/android/settings/network/telephony/MobileDataPreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "MobileDataPreferenceController.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;


# static fields
.field private static final DIALOG_TAG:Ljava/lang/String; = "MobileDataDialog"

.field private static final TAG:Ljava/lang/String; = "MobileDataPreferenceController"


# instance fields
.field private mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

.field private mDefaultSubId:I

.field mDialogType:I

.field private mFragmentManager:Landroidx/fragment/app/FragmentManager;

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

.field mNeedDialog:Z

.field private mPreference:Landroidx/preference/SwitchPreference;

.field mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

.field private mSubscriptionInfoEntityList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;


# direct methods
.method public static synthetic $r8$lambda$3-3GYy0DGrxrvJIvoNfy8sJ4xxA(Lcom/android/settings/network/telephony/MobileDataPreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->lambda$init$0()V

    return-void
.end method

.method public static synthetic $r8$lambda$qVgyxMSL9dY8gYqcMDJzuPaIVM0(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->lambda$onAllMobileNetworkInfoChanged$2(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V

    return-void
.end method

.method public static synthetic $r8$lambda$uQauvexmRszTyf1YbY_0XvXePh4(Lcom/android/settings/network/telephony/MobileDataPreferenceController;Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->lambda$onActiveSubInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroidx/lifecycle/LifecycleOwner;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 79
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntityList:Ljava/util/List;

    .line 80
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    const/4 p2, -0x1

    .line 81
    iput p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    .line 89
    iput p5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 90
    const-class p2, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/SubscriptionManager;

    iput-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 91
    invoke-static {p1}, Lcom/android/settings/network/MobileNetworkRepository;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/MobileNetworkRepository;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    .line 92
    iput-object p4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    if-eqz p3, :cond_0

    .line 94
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .line 240
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    return-object v0

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    .line 244
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 245
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 246
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 248
    :cond_1
    iput-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private synthetic lambda$init$0()V
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method private synthetic lambda$onActiveSubInfoChanged$1(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 2

    .line 337
    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 338
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 339
    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result v0

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->getSubId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    :cond_0
    return-void
.end method

.method private synthetic lambda$onAllMobileNetworkInfoChanged$2(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 2

    .line 355
    iget-object v0, p1, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->subId:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-ne v0, v1, :cond_0

    .line 356
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    .line 357
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    .line 358
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private showDialog(I)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 318
    invoke-virtual {v0}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 319
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v2

    .line 317
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/network/telephony/MobileDataDialogFragment;->newInstance(Ljava/lang/String;IIZ)Lcom/android/settings/network/telephony/MobileDataDialogFragment;

    move-result-object p1

    .line 320
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    const-string v0, "MobileDataDialog"

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method private update()V
    .locals 4

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 183
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isOpportunistic:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 185
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    sget v3, Lcom/android/settings/R$string;->mobile_data_settings_summary_auto_switch:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 188
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->isDisallowed()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string/jumbo v0, "nDDS voice call in ongoing"

    const-string v3, "MobileDataPreferenceController"

    .line 189
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "Do not allow the user to turn off DDS mobile data"

    .line 192
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 194
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 195
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "smart_dds_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 199
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    sget v3, Lcom/android/settings/R$string;->mobile_data_settings_summary_on_smart_dds_unavailable:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 202
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    sget v3, Lcom/android/settings/R$string;->mobile_data_settings_summary_default_data_unavailable:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidyFeatureEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v3, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 209
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    .line 208
    invoke-static {v0, v3}, Lcom/android/settings/network/telephony/TelephonyUtils;->isSubsidySimCard(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 210
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 212
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 214
    :goto_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    sget v3, Lcom/android/settings/R$string;->mobile_data_settings_summary:I

    invoke-virtual {v0, v3}, Landroidx/preference/Preference;->setSummary(I)V

    .line 217
    :cond_6
    :goto_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    iget-boolean v0, v0, Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;->isValidSubscription:Z

    if-nez v0, :cond_7

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setSelectable(Z)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    sget v0, Lcom/android/settings/R$string;->mobile_data_settings_summary_unavailable:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(I)V

    goto :goto_3

    .line 221
    :cond_7
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSelectable(Z)V

    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 107
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 0

    .line 0
    const/4 p0, -0x1

    if-eq p1, p0, :cond_0

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

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 134
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 135
    iget-boolean p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    if-eqz p1, :cond_0

    .line 136
    iget p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->showDialog(I)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/FragmentManager;ILcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    .line 227
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mFragmentManager:Landroidx/fragment/app/FragmentManager;

    .line 228
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 p1, 0x0

    .line 229
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 230
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 231
    iput-object p3, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    .line 232
    iput-object p4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    .line 233
    new-instance p1, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object p2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object p3, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    new-instance p4, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {p4, p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;)V

    invoke-direct {p1, p2, p3, p4}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;-><init>(Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;Ljava/lang/Runnable;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 163
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 164
    :cond_0
    iget-boolean p0, p0, Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;->isMobileDataEnabled:Z

    :goto_0
    return p0
.end method

.method isDialogNeeded()Z
    .locals 10

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 259
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 260
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getActiveModemCount()I

    move-result v2

    const/4 v3, 0x0

    if-le v2, v1, :cond_0

    move v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 261
    :goto_0
    iget v4, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDefaultSubId:I

    iget v5, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    if-eq v4, v5, :cond_1

    move v4, v1

    goto :goto_1

    :cond_1
    move v4, v3

    .line 262
    :goto_1
    iget-object v5, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x111023a    # @android:bool/config_wimaxEnabled

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v5

    if-eqz v5, :cond_2

    move v4, v3

    .line 268
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isDialogNeeded: enableData = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isMultiSim = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", needToDisableOthers = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MobileDataPreferenceController"

    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_3

    if-eqz v2, :cond_3

    if-eqz v4, :cond_3

    .line 271
    iput v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    return v1

    :cond_3
    if-nez v0, :cond_9

    .line 275
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallStateForSubscription()I

    move-result v0

    if-eqz v0, :cond_4

    move v0, v1

    goto :goto_2

    :cond_4
    move v0, v3

    :goto_2
    if-eqz v0, :cond_8

    .line 281
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v2

    .line 282
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isInCiwlanOnlyMode()Z

    move-result v4

    if-nez v4, :cond_6

    if-nez v2, :cond_5

    goto :goto_3

    :cond_5
    const-string p0, "isDialogNeeded: not in C_IWLAN-only mode"

    .line 307
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 284
    :cond_6
    :goto_3
    iget-object v5, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v7, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 285
    invoke-static {v7}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v7

    .line 284
    invoke-virtual {v5, v7, v1}, Landroid/telephony/TelephonyManager;->getImsRegistration(II)Landroid/telephony/ims/aidl/IImsRegistration;

    move-result-object v5

    const/4 v7, 0x2

    if-eqz v5, :cond_7

    .line 289
    :try_start_0
    invoke-interface {v5}, Landroid/telephony/ims/aidl/IImsRegistration;->getRegistrationTechnology()I

    move-result v5
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v5, v7, :cond_7

    move v5, v1

    goto :goto_4

    :catch_0
    move-exception v5

    const-string v8, "getRegistrationTechnology failed"

    .line 292
    invoke-static {v6, v8, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_7
    move v5, v3

    .line 295
    :goto_4
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "isDialogNeeded: isInVoiceCall = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isInCiwlanOnlyMode = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isCiwlanModeSupported = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", isImsRegisteredOverCiwlan = "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v5, :cond_9

    .line 303
    iput v7, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDialogType:I

    return v1

    :cond_8
    const-string p0, "isDialogNeeded: not in a call"

    .line 310
    invoke-static {v6, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    :goto_5
    return v3
.end method

.method public onActiveSubInfoChanged(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;",
            ">;)V"
        }
    .end annotation

    .line 335
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntityList:Ljava/util/List;

    .line 336
    new-instance v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;)V

    invoke-interface {p1, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 345
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    .line 346
    iget-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->refreshSummary(Landroidx/preference/Preference;)V

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

    .line 353
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntityList:Ljava/util/List;

    .line 354
    new-instance v0, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/network/telephony/MobileDataPreferenceController;)V

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

.method public bridge synthetic onDataRoamingChanged(IZ)V
    .locals 0

    .line 0
    invoke-super {p0, p1, p2}, Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;->onDataRoamingChanged(IZ)V

    return-void
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mLifecycleOwner:Landroidx/lifecycle/LifecycleOwner;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/network/MobileNetworkRepository;->addRegister(Landroidx/lifecycle/LifecycleOwner;Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;I)V

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkRepository;->updateEntity()V

    .line 116
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 120
    iget-object v1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->register(Landroid/content/Context;I)V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 126
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkRepository:Lcom/android/settings/network/MobileNetworkRepository;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/MobileNetworkRepository;->removeRegister(Lcom/android/settings/network/MobileNetworkRepository$MobileNetworkCallback;)V

    .line 127
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mDdsDataOptionStateTuner:Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Lcom/android/settings/network/telephony/DdsDataOptionStateTuner;->unregister(Landroid/content/Context;)V

    :cond_0
    return-void
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->isDialogNeeded()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mNeedDialog:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0, v2, p1, v1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->setMobileDataEnabled(Landroid/content/Context;IZZ)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    if-eqz v0, :cond_0

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 152
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->isCarrierNetworkProvisionEnabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 153
    iget-object p0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiPickerTrackerHelper;->setCarrierNetworkEnabled(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    return v1
.end method

.method public setMobileNetworkInfoEntity(Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mMobileNetworkInfoEntity:Lcom/android/settingslib/mobile/dataservice/MobileNetworkInfoEntity;

    return-void
.end method

.method public setSubscriptionInfoEntity(Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;)V
    .locals 0

    .line 325
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mSubscriptionInfoEntity:Lcom/android/settingslib/mobile/dataservice/SubscriptionInfoEntity;

    return-void
.end method

.method public setWifiPickerTrackerHelper(Lcom/android/settings/wifi/WifiPickerTrackerHelper;)V
    .locals 0

    .line 253
    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mWifiPickerTrackerHelper:Lcom/android/settings/wifi/WifiPickerTrackerHelper;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 172
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 173
    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 174
    invoke-direct {p0}, Lcom/android/settings/network/telephony/MobileDataPreferenceController;->update()V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
