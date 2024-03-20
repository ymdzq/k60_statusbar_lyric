.class public Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "PreferredNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "PreferredNetworkMode"

.field private static final TAG:Ljava/lang/String; = "PrefNetworkModeCtrl"


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field mCallState:Ljava/lang/Integer;

.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private mIsGlobalCdma:Z

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$5jrgXBdJyY52ZJE6iUisBswS2c4(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->lambda$init$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 80
    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    return-void
.end method

.method private getPreferredNetworkMode()I
    .locals 2

    .line 224
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez p0, :cond_0

    const-string p0, "PrefNetworkModeCtrl"

    const-string v0, "TelephonyManager is null"

    .line 225
    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const/4 v0, 0x0

    .line 229
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getAllowedNetworkTypesForReason(I)J

    move-result-wide v0

    long-to-int p0, v0

    .line 228
    invoke-static {p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getNetworkTypeFromRaf(I)I

    move-result p0

    return p0
.end method

.method private getPreferredNetworkModeSummaryResId(I)I
    .locals 1

    packed-switch p1, :pswitch_data_0

    .line 312
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    .line 310
    :pswitch_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 308
    :pswitch_1
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 306
    :pswitch_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_wcdma_summary:I

    return p0

    .line 304
    :pswitch_3
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_gsm_summary:I

    return p0

    .line 302
    :pswitch_4
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_tdscdma_summary:I

    return p0

    .line 300
    :pswitch_5
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_wcdma_summary:I

    return p0

    .line 298
    :pswitch_6
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_global_summary:I

    return p0

    .line 296
    :pswitch_7
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_gsm_wcdma_summary:I

    return p0

    .line 294
    :pswitch_8
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_cdma_evdo_summary:I

    return p0

    .line 292
    :pswitch_9
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_lte_summary:I

    return p0

    .line 290
    :pswitch_a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_nr_only_summary:I

    return p0

    .line 272
    :pswitch_b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 282
    :pswitch_c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 264
    :pswitch_d
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 286
    :pswitch_e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_wcdma_summary:I

    return p0

    .line 236
    :pswitch_f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_wcdma_summary:I

    return p0

    .line 262
    :pswitch_10
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_gsm_summary:I

    return p0

    .line 238
    :pswitch_11
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_gsm_summary:I

    return p0

    .line 258
    :pswitch_12
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_tdscdma_summary:I

    return p0

    .line 244
    :pswitch_13
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_wcdma_summary:I

    return p0

    .line 270
    :pswitch_14
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_tdscdma_summary:I

    return p0

    .line 288
    :pswitch_15
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_wcdma_summary:I

    return p0

    .line 260
    :pswitch_16
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    .line 274
    :pswitch_17
    iget-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    if-nez p1, :cond_1

    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 276
    invoke-static {p1, p0}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->isWorldMode(Landroid/content/Context;I)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    .line 279
    :cond_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_summary:I

    return p0

    .line 277
    :cond_1
    :goto_0
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 266
    :pswitch_18
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_gsm_wcdma_summary:I

    return p0

    .line 268
    :pswitch_19
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_lte_cdma_evdo_summary:I

    return p0

    .line 284
    :pswitch_1a
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_gsm_wcdma_summary:I

    return p0

    .line 256
    :pswitch_1b
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_evdo_only_summary:I

    return p0

    .line 254
    :pswitch_1c
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_only_summary:I

    return p0

    .line 250
    :pswitch_1d
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 251
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_summary:I

    goto :goto_1

    .line 252
    :cond_2
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_cdma_evdo_summary:I

    :goto_1
    return p0

    .line 248
    :pswitch_1e
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_wcdma_summary:I

    return p0

    .line 246
    :pswitch_1f
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_only_summary:I

    return p0

    .line 242
    :pswitch_20
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_gsm_only_summary:I

    return p0

    .line 240
    :pswitch_21
    sget p0, Lcom/android/settings/R$string;->preferred_network_mode_wcdma_perf_summary:I

    return p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isCallStateIdle()Z
    .locals 2

    .line 318
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 321
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isCallStateIdle:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreferredNetworkMode"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return p0
.end method

.method private isCiwlanIncompatibleNetworkSelected(I)Z
    .locals 4

    .line 180
    invoke-static {p1}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide p0

    const-wide/32 v0, 0x41000

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const-wide/32 v0, 0x80000

    and-long/2addr p0, v0

    cmp-long p0, p0, v2

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$init$0()V
    .locals 0

    .line 211
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method private showCiwlanWarningDialog()V
    .locals 4

    .line 185
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 186
    sget v1, Lcom/android/settings/R$string;->preferred_nw_incompatible_ciwlan_nw_mode_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->preferred_nw_incompatible_ciwlan_nw_mode_dialog_body:I

    .line 187
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->okay:I

    new-instance v3, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;

    invoke-direct {v3, p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)V

    .line 188
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 192
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 219
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 2

    .line 85
    iget-object p0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    :cond_0
    :goto_0
    move p0, v1

    goto :goto_1

    :cond_1
    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    .line 91
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 93
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "world_phone_bool"

    .line 96
    invoke-virtual {p0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    :goto_1
    if-eqz p0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    :goto_2
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

.method public init(Landroidx/lifecycle/Lifecycle;I)V
    .locals 2

    .line 196
    iput p2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 197
    iget-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

    if-nez p2, :cond_0

    .line 198
    new-instance p2, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

    invoke-direct {p2, p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

    .line 200
    :cond_0
    iget-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {p2, v0}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 201
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 202
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 204
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isLteCdmaEvdoGsmWcdmaEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "show_cdma_choices_bool"

    .line 205
    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 p2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    iput-boolean p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mIsGlobalCdma:Z

    .line 207
    iget-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-nez p2, :cond_2

    .line 208
    new-instance p2, Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 209
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 210
    new-instance v0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;)V

    invoke-virtual {p2, v0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    .line 214
    :cond_2
    invoke-virtual {p1, p0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

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

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 148
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 152
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v0, v1, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    .line 153
    :goto_0
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanEnabled()Z

    move-result v1

    .line 154
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->isCiwlanIncompatibleNetworkSelected(I)Z

    move-result v4

    .line 159
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 160
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isInCiwlanOnlyMode()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 162
    :goto_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "isDDS = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCiwlanEnabled = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isInCiwlanOnlyMode = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, ", isCiwlanIncompatibleNetworkSelected = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "PreferredNetworkMode"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 167
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->showCiwlanWarningDialog()V

    return v3

    .line 170
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 172
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v4

    .line 170
    invoke-virtual {v0, v3, v4, v5}, Landroid/telephony/TelephonyManager;->setAllowedNetworkTypesForReason(IJ)V

    .line 174
    check-cast p1, Landroidx/preference/ListPreference;

    .line 175
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(I)V

    return v2
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

    if-eqz v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;->register(Landroid/content/Context;I)V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_1

    .line 111
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->register(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 2
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 117
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController$PhoneCallStateListener;->unregister()V

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_1

    .line 121
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->unregister(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 133
    iget-object v0, p0, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-nez v0, :cond_0

    return-void

    .line 136
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 139
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 140
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkMode()I

    move-result v0

    .line 141
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 142
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->getPreferredNetworkModeSummaryResId(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 143
    invoke-direct {p0}, Lcom/android/settings/network/telephony/PreferredNetworkModePreferenceController;->isCallStateIdle()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
