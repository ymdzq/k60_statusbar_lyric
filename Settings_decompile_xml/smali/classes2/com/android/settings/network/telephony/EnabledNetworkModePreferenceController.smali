.class public Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;
.source "EnabledNetworkModePreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/lifecycle/LifecycleObserver;
.implements Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;,
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;,
        Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "EnabledNetworkMode"


# instance fields
.field private mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

.field private mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

.field private mCallState:I

.field private mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

.field private mPhoneStateListener:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

.field private mPreference:Landroidx/preference/Preference;

.field private mPreferenceScreen:Landroidx/preference/PreferenceScreen;

.field private mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public static synthetic $r8$lambda$ZEGNDpyP4hmuP-Rh0YDACW5zckY(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->lambda$init$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmBuilder(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroidx/preference/Preference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTelephonyCallback(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdatePreference(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 86
    iput p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    .line 92
    new-instance p2, Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-direct {p2, p1, p0}, Lcom/android/settings/network/SubscriptionsChangeListener;-><init>(Landroid/content/Context;Lcom/android/settings/network/SubscriptionsChangeListener$SubscriptionsChangeListenerClient;)V

    iput-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    .line 93
    invoke-static {p1}, Lcom/android/settings/network/CarrierConfigCache;->getInstance(Landroid/content/Context;)Lcom/android/settings/network/CarrierConfigCache;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    .line 94
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez p1, :cond_0

    .line 95
    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 73
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isCiwlanIncompatibleNetworkSelected(I)Z
    .locals 4

    .line 226
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
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updatePreference()V

    return-void
.end method

.method private showCiwlanWarningDialog()V
    .locals 4

    .line 231
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 232
    sget v1, Lcom/android/settings/R$string;->preferred_nw_incompatible_ciwlan_nw_mode_dialog_title:I

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->preferred_nw_incompatible_ciwlan_nw_mode_dialog_body:I

    .line 233
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->okay:I

    new-instance v3, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;

    invoke-direct {v3, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    .line 234
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 238
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private updatePreference()V
    .locals 1

    .line 262
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    if-eqz v0, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 265
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 266
    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->updateState(Landroidx/preference/Preference;)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 158
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 159
    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreferenceScreen:Landroidx/preference/PreferenceScreen;

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 3

    .line 103
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCarrierConfigCache:Lcom/android/settings/network/CarrierConfigCache;

    invoke-virtual {v0, p1}, Lcom/android/settings/network/CarrierConfigCache;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    move p1, v2

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Landroid/telephony/CarrierConfigManager;->isConfigForIdentifiedCarrier(Landroid/os/PersistableBundle;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const-string p1, "hide_carrier_network_settings_bool"

    .line 109
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string p1, "hide_preferred_network_type_bool"

    .line 111
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "world_phone_bool"

    .line 114
    invoke-virtual {v0, p1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_0

    .line 116
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->isCallStateIdle()Z

    move-result p0

    const/4 p1, 0x1

    if-nez p0, :cond_5

    return p1

    :cond_5
    :goto_1
    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x2

    :goto_2
    return v2
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

.method getTelephonyCallback()Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;
    .locals 0

    .line 1007
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method init(I)V
    .locals 2

    .line 242
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 243
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class v0, Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    .line 244
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 245
    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    .line 247
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

    if-nez p1, :cond_0

    .line 248
    new-instance p1, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

    invoke-direct {p1, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

    .line 250
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-nez p1, :cond_1

    .line 251
    new-instance p1, Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 252
    invoke-virtual {v0}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/network/AllowedNetworkTypesListener;-><init>(Ljava/util/concurrent/Executor;)V

    iput-object p1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    .line 253
    new-instance v0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/network/AllowedNetworkTypesListener;->setAllowedNetworkTypesListener(Lcom/android/settings/network/AllowedNetworkTypesListener$OnAllowedNetworkTypesListener;)V

    :cond_1
    return-void
.end method

.method protected isCallStateIdle()Z
    .locals 0

    .line 126
    iget p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mCallState:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
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

.method public onAirplaneModeChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 8

    .line 190
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 193
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 197
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

    .line 198
    :goto_0
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanEnabled()Z

    move-result v1

    .line 199
    invoke-direct {p0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->isCiwlanIncompatibleNetworkSelected(I)Z

    move-result v4

    .line 204
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isCiwlanModeSupported()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 205
    invoke-static {}, Lcom/android/settings/network/telephony/MobileNetworkSettings;->isInCiwlanOnlyMode()Z

    move-result v5

    goto :goto_1

    :cond_1
    move v5, v3

    .line 207
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

    const-string v7, "EnabledNetworkMode"

    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    if-eqz v5, :cond_2

    if-eqz v4, :cond_2

    .line 212
    invoke-direct {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->showCiwlanWarningDialog()V

    return v3

    .line 215
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 216
    invoke-static {p2}, Lcom/android/settings/network/telephony/MobileNetworkUtils;->getRafFromNetworkType(I)J

    move-result-wide v4

    .line 215
    invoke-virtual {v0, v4, v5}, Landroid/telephony/TelephonyManager;->setPreferredNetworkTypeBitmask(J)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-virtual {v0, p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceValueAndSummary(I)V

    .line 218
    iget-object p2, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetSelectedEntryValue(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result p2

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return v2

    :cond_3
    return v3
.end method

.method public onStart()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_START:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 131
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->start()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

    if-eqz v0, :cond_1

    .line 136
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->register(Landroid/content/Context;I)V

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->register(Landroid/content/Context;I)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    iget-object v1, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->register(Landroid/telephony/TelephonyManager;I)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onStop()V
    .locals 3
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_STOP:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 145
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mSubscriptionsListener:Lcom/android/settings/network/SubscriptionsChangeListener;

    invoke-virtual {v0}, Lcom/android/settings/network/SubscriptionsChangeListener;->stop()V

    .line 146
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mPhoneStateListener:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;

    if-eqz v0, :cond_1

    .line 150
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateListener;->unregister()V

    .line 152
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mAllowedNetworkTypesListener:Lcom/android/settings/network/AllowedNetworkTypesListener;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget v2, p0, Lcom/android/settings/network/telephony/TelephonyBasePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/network/AllowedNetworkTypesListener;->unregister(Landroid/content/Context;I)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PhoneCallStateTelephonyCallback;->unregister()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onSubscriptionsChanged()V
    .locals 0

    .line 1016
    iget-object p0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    if-eqz p0, :cond_0

    .line 1017
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->updateConfig()V

    :cond_0
    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 1

    .line 165
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    if-nez v0, :cond_0

    return-void

    .line 168
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    if-nez v0, :cond_1

    return-void

    .line 176
    :cond_1
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 178
    invoke-virtual {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->setPreferenceEntries()V

    .line 179
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$msetPreferenceValueAndSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetEntries(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetEntryValues(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)[Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetSelectedEntryValue(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 184
    iget-object v0, p0, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->mBuilder:Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;

    invoke-static {v0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;->-$$Nest$mgetSummary(Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController$PreferenceEntriesBuilder;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/EnabledNetworkModePreferenceController;->isCallStateIdle()Z

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
