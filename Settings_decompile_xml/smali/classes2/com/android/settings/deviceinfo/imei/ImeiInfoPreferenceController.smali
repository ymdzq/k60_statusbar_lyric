.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "ImeiInfoPreferenceController.java"


# static fields
.field public static final DEFAULT_KEY:Ljava/lang/String; = "imei_info"

.field private static final KEY_PREFERENCE_CATEGORY:Ljava/lang/String; = "device_detail_category"

.field private static final TAG:Ljava/lang/String; = "ImeiInfoPreferenceController"


# instance fields
.field private mFragment:Landroidx/fragment/app/Fragment;

.field private mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

.field private mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method private addPreference(Landroidx/preference/PreferenceScreen;IILjava/lang/String;Z)V
    .locals 1

    .line 159
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v0

    .line 160
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 161
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 163
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isPrimaryImei(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    .line 165
    invoke-direct {p0, p2, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForCdmaPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 166
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 168
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForGsmPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 169
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private addPreferenceNotInList(Landroidx/preference/PreferenceScreen;IILjava/lang/String;Z)V
    .locals 1

    .line 142
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v0

    .line 143
    invoke-virtual {v0, p3}, Landroidx/preference/Preference;->setOrder(I)V

    .line 144
    invoke-virtual {v0, p4}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    const-string p3, "device_detail_category"

    .line 145
    invoke-virtual {p1, p3}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    .line 146
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 147
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isPrimaryImei(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p5, :cond_1

    .line 149
    invoke-direct {p0, p2, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForCdmaPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 150
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p2}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 152
    :cond_1
    invoke-direct {p0, p2, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForGsmPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getImei(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    return-void
.end method

.method private getImei(I)Ljava/lang/String;
    .locals 3

    .line 235
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMinHalVersion2_1()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    .line 238
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    if-nez v0, :cond_1

    .line 239
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    .line 241
    :cond_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    if-eqz v0, :cond_3

    const/4 v0, 0x0

    .line 242
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    array-length v2, v1

    if-ge v0, v2, :cond_3

    .line 243
    aget-object v1, v1, v0

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/qti/extphone/QtiImeiInfo;->getSlotId()I

    move-result v1

    if-ne v1, p1, :cond_2

    .line 244
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aget-object v0, v1, v0

    invoke-virtual {v0}, Lcom/qti/extphone/QtiImeiInfo;->getImei()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_3
    const/4 v0, 0x0

    .line 249
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 250
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_2

    :cond_4
    move-object p0, v0

    :goto_2
    return-object p0
.end method

.method private getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 90
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getTitle(I)Ljava/lang/CharSequence;
    .locals 3

    .line 308
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isPrimaryImei(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 309
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getPhoneType(I)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 310
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForCdmaPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p0

    goto :goto_1

    .line 311
    :cond_1
    invoke-direct {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForGsmPhone(IZ)Ljava/lang/CharSequence;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getTitleForCdmaPhone(IZ)Ljava/lang/CharSequence;
    .locals 1

    if-eqz p2, :cond_0

    .line 273
    sget p2, Lcom/android/settings/R$string;->meid_multi_sim_primary:I

    goto :goto_0

    :cond_0
    sget p2, Lcom/android/settings/R$string;->meid_multi_sim:I

    .line 274
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 275
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->status_meid_number:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private getTitleForGsmPhone(IZ)Ljava/lang/CharSequence;
    .locals 1

    .line 258
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isShowSlotDevice()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 259
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p2, Lcom/android/settings/R$string;->imei_multi_sim_softbank:I

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 260
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->status_imei:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    .line 265
    :cond_1
    sget p2, Lcom/android/settings/R$string;->imei_multi_sim:I

    .line 267
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMultiSim()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    add-int/lit8 p1, p1, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 268
    :cond_2
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->status_imei:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_1
    return-object p0
.end method

.method private isMinHalVersion2_1()Z
    .locals 3

    .line 336
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getHalVersion(I)Landroid/util/Pair;

    move-result-object v0

    .line 338
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->makeRadioVersion(II)I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    .line 339
    invoke-direct {p0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->makeRadioVersion(II)I

    move-result p0

    if-le v0, p0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private isMultiSim()Z
    .locals 1

    .line 76
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static keyToSlotIndex(Ljava/lang/String;)I
    .locals 2

    :try_start_0
    const-string v0, "imei_info"

    const-string v1, ""

    .line 82
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 84
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid key : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImeiInfoPreferenceController"

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    :goto_0
    return p0
.end method

.method private makeRadioVersion(II)I
    .locals 0

    .line 0
    if-ltz p1, :cond_1

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    mul-int/lit8 p1, p1, 0x64

    add-int/2addr p1, p2

    return p1

    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;
    .locals 1

    .line 327
    new-instance p0, Lcom/android/settingslib/miuisettings/preference/Preference;

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Z)V

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 12

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    if-nez v0, :cond_0

    goto/16 :goto_1

    :cond_0
    const-string v0, "imei_info"

    .line 99
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    invoke-static {v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceUtils;->isVisible(Landroidx/preference/Preference;)Z

    move-result v2

    if-nez v2, :cond_1

    goto/16 :goto_1

    :cond_1
    const-string v2, "device_detail_category"

    .line 105
    invoke-virtual {p1, v2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    .line 107
    invoke-virtual {v1}, Landroidx/preference/Preference;->getOrder()I

    move-result v3

    .line 108
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 v4, 0x0

    .line 109
    invoke-virtual {v1, v4}, Landroidx/preference/Preference;->setVisible(Z)V

    move v1, v4

    .line 113
    :goto_0
    iget-object v5, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    invoke-virtual {v5}, Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;->size()I

    move-result v5

    const/4 v6, 0x1

    if-ge v1, v5, :cond_2

    .line 115
    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroidx/preference/Preference;

    move-result-object v5

    add-int/lit8 v7, v3, 0x1

    add-int/2addr v7, v1

    .line 116
    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setOrder(I)V

    .line 117
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 119
    invoke-virtual {v5, v6}, Landroidx/preference/Preference;->setCopyingEnabled(Z)V

    .line 120
    invoke-virtual {v2, v5}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 123
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    .line 124
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    const/4 v1, 0x2

    if-lt v0, v1, :cond_5

    .line 125
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v2

    .line 126
    iget-object v4, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v4, v6}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v4

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    const/4 v7, 0x0

    add-int v8, v3, v0

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x1

    move-object v5, p0

    move-object v6, p1

    .line 128
    invoke-direct/range {v5 .. v10}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->addPreferenceNotInList(Landroidx/preference/PreferenceScreen;IILjava/lang/String;Z)V

    goto :goto_1

    :cond_3
    if-ne v1, v2, :cond_4

    const/4 v2, 0x0

    add-int/2addr v3, v0

    .line 131
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    .line 131
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->addPreferenceNotInList(Landroidx/preference/PreferenceScreen;IILjava/lang/String;Z)V

    goto :goto_1

    :cond_4
    if-ne v1, v4, :cond_5

    const/4 v8, 0x1

    add-int v9, v3, v0

    .line 134
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x0

    move-object v6, p0

    move-object v7, p1

    .line 134
    invoke-direct/range {v6 .. v11}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->addPreferenceNotInList(Landroidx/preference/PreferenceScreen;IILjava/lang/String;Z)V

    :cond_5
    :goto_1
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 216
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/network/SubscriptionUtil;->isSimHardwareVisible(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    .line 217
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 218
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    move p0, v1

    :goto_0
    if-eqz p0, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x3

    :goto_1
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

.method public getPhoneType(I)I
    .locals 1

    .line 315
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 316
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result p0

    return p0

    .line 318
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 319
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    goto :goto_0

    :cond_1
    const p1, 0x7fffffff

    :goto_0
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result p0

    return p0
.end method

.method public bridge synthetic getSliceHighlightMenuRes()I
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getSliceHighlightMenuRes()I

    move-result p0

    return p0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 180
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->device_info_protected_single_press:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public getSummary(I)Ljava/lang/CharSequence;
    .locals 3

    .line 184
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getPhoneType(I)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x2

    if-eqz v1, :cond_0

    if-ne v2, v0, :cond_0

    const/4 p1, 0x0

    :cond_0
    if-ne v0, v2, :cond_1

    .line 191
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 194
    :cond_1
    invoke-static {p1}, Landroid/telephony/MiuiTelephonyManagerStub;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 4

    .line 200
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->keyToSlotIndex(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 205
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/Utils;->isSupportCTPA(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    return v2

    .line 209
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v0, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroidx/fragment/app/Fragment;ILjava/lang/String;)V

    .line 210
    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return v2
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(Landroidx/fragment/app/Fragment;Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroidx/fragment/app/Fragment;

    .line 70
    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSlotSimStatus:Lcom/android/settings/deviceinfo/simstatus/SlotSimStatus;

    .line 71
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->connectExtTelephonyService(Landroid/content/Context;)V

    .line 72
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-void
.end method

.method protected isPrimaryImei(I)Z
    .locals 5

    .line 279
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary(I)Ljava/lang/CharSequence;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 284
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isMinHalVersion2_1()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 286
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPrimaryImei()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 288
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PrimaryImei not available. "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ImeiInfoPreferenceController"

    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    if-eqz p0, :cond_1

    .line 290
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    move v1, v3

    :cond_1
    return v1

    .line 292
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    if-nez v0, :cond_3

    .line 293
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    if-eqz v0, :cond_5

    move v0, v1

    .line 296
    :goto_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    array-length v4, v2

    if-ge v0, v4, :cond_5

    .line 297
    aget-object v2, v2, v0

    if-eqz v2, :cond_4

    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getSlotId()I

    move-result v2

    if-ne v2, p1, :cond_4

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    aget-object v2, v2, v0

    .line 298
    invoke-virtual {v2}, Lcom/qti/extphone/QtiImeiInfo;->getImeiType()I

    move-result v2

    if-ne v2, v3, :cond_4

    return v3

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v1
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

.method protected updatePreference(Landroidx/preference/Preference;I)V
    .locals 0

    .line 229
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitle(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 175
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->keyToSlotIndex(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroidx/preference/Preference;I)V

    return-void
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
