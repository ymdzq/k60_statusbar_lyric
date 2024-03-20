.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;
.super Ljava/lang/Object;
.source "ImeiInfoDialogController.java"


# static fields
.field static final ID_CDMA_SETTINGS:I

.field static final ID_GSM_SETTINGS:I

.field static final ID_IMEI_SV_VALUE:I

.field static final ID_IMEI_VALUE:I

.field static final ID_MEID_NUMBER_VALUE:I

.field static final ID_MEID_SETTINGS:I

.field private static final ID_MIN_NUMBER_LABEL:I

.field static final ID_MIN_NUMBER_VALUE:I

.field static final ID_PRL_VERSION_VALUE:I


# instance fields
.field private final mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

.field private mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

.field private final mSlotId:I

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    sget v0, Lcom/android/settings/R$id;->prl_version_value:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_PRL_VERSION_VALUE:I

    .line 47
    sget v0, Lcom/android/settings/R$id;->min_number_label:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_LABEL:I

    .line 49
    sget v0, Lcom/android/settings/R$id;->min_number_value:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_VALUE:I

    .line 51
    sget v0, Lcom/android/settings/R$id;->meid_number_value:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_NUMBER_VALUE:I

    .line 53
    sget v0, Lcom/android/settings/R$id;->imei_value:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    .line 55
    sget v0, Lcom/android/settings/R$id;->imei_sv_value:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    .line 57
    sget v0, Lcom/android/settings/R$id;->cdma_settings:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_CDMA_SETTINGS:I

    .line 59
    sget v0, Lcom/android/settings/R$id;->gsm_settings:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_GSM_SETTINGS:I

    .line 61
    sget v0, Lcom/android/settings/R$id;->meid_settings:I

    sput v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_SETTINGS:I

    return-void
.end method

.method public constructor <init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V
    .locals 2

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    .line 71
    iput p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 72
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 73
    const-class v0, Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    .line 74
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 75
    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_0

    .line 77
    const-class p2, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 78
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {p2, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 79
    :cond_0
    invoke-direct {p0, p2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 80
    iput-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 84
    :goto_0
    invoke-static {p1}, Lcom/android/settings/network/telephony/TelephonyUtils;->connectExtTelephonyService(Landroid/content/Context;)V

    .line 85
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mQtiImeiInfo:[Lcom/qti/extphone/QtiImeiInfo;

    return-void
.end method

.method private isValidSlotIndex(ILandroid/telephony/TelephonyManager;)Z
    .locals 0

    if-ltz p1, :cond_0

    .line 228
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p0

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateDialogForCdmaPhone()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 139
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_SETTINGS:I

    invoke-virtual {v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    goto :goto_0

    .line 141
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_NUMBER_VALUE:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 144
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_VALUE:I

    .line 145
    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v3, :cond_1

    iget-object v4, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 146
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 145
    invoke-virtual {v4, v3}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    const-string v3, ""

    .line 144
    :goto_1
    invoke-virtual {v1, v2, v3}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 148
    sget v1, Lcom/android/settings/R$bool;->config_msid_enable:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 149
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v2, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MIN_NUMBER_LABEL:I

    sget v3, Lcom/android/settings/R$string;->status_msid_number:I

    .line 150
    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_PRL_VERSION_VALUE:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 159
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/MiuiTelephonyManagerStub;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 161
    invoke-virtual {v2, p0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object p0

    .line 160
    invoke-virtual {v0, v1, p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private updateDialogForGsmPhone()V
    .locals 4

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_SETTINGS:I

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    goto :goto_0

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_MEID_NUMBER_VALUE:I

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->getMeid()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_VALUE:I

    iget v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-static {v2}, Landroid/telephony/MiuiTelephonyManagerStub;->getImeiForSlot(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 187
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_IMEI_SV_VALUE:I

    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    .line 188
    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v2

    .line 187
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 191
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mDialog:Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    sget v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->ID_CDMA_SETTINGS:I

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->removeViewFromScreen(I)V

    return-void
.end method


# virtual methods
.method getCdmaPrlVersion()Ljava/lang/String;
    .locals 1

    .line 197
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCdmaPrlVersion()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const-string p0, ""

    :goto_0
    return-object p0
.end method

.method getMeid()Ljava/lang/String;
    .locals 3

    .line 218
    invoke-static {}, Lmiui/telephony/TelephonyManager;->getDefault()Lmiui/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/telephony/TelephonyManager;->getMeidList()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 219
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 220
    iget v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method isCdmaLteEnabled()Z
    .locals 0

    .line 202
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    return p0
.end method

.method public populateImeiInfo()V
    .locals 2

    .line 115
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    .line 116
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyManager for this slot is null. Invalid slot? id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "ImeiInfoDialog"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 125
    :cond_0
    iget v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 126
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForCdmaPhone()V

    goto :goto_0

    .line 128
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->updateDialogForGsmPhone()V

    :goto_0
    return-void
.end method
