.class public Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
.super Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;
.source "Enhanced4gBasePreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;,
        Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;
    }
.end annotation


# static fields
.field protected static final MODE_4G_CALLING:I = 0x2

.field protected static final MODE_ADVANCED_CALL:I = 0x1

.field protected static final MODE_NONE:I = -0x1

.field protected static final MODE_VOLTE:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Enhanced4g"


# instance fields
.field private m4gCurrentMode:I

.field private final m4gLteListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mCallState:Ljava/lang/Integer;

.field private mHas5gCapability:Z

.field mIsNrEnabledFromCarrierConfig:Z

.field mPreference:Landroidx/preference/Preference;

.field private mShow5gLimitedDialog:Z

.field private mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;


# direct methods
.method static bridge synthetic -$$Nest$fgetmTelephonyCallback(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCallState(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Ljava/lang/Integer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmHas5gCapability(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$msetAdvancedCallingSettingEnabled(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;Z)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 68
    iput p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    .line 72
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private isDialogNeeded()Z
    .locals 2

    .line 263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Has5gCapability:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Enhanced4g"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mHas5gCapability:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isModeMatched()Z
    .locals 1

    .line 200
    iget v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->getMode()I

    move-result p0

    if-ne v0, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isUserControlAllowed(Landroid/os/PersistableBundle;)Z
    .locals 0

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isCallStateIdle()Z

    move-result p0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    const-string p0, "editable_enhanced_4g_lte_bool"

    .line 216
    invoke-virtual {p1, p0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z
    .locals 2

    .line 293
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/telephony/ims/ImsMmTelManager;->setAdvancedCallingSettingEnabled(Z)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;

    .line 299
    invoke-interface {p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;->on4gLteUpdated()V

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    return p0

    :catch_0
    move-exception p1

    .line 295
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fail to set VoLTE="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ". subId="

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "Enhanced4g"

    invoke-static {p2, p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    return p0
.end method

.method private show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V
    .locals 3

    const-string v0, "Enhanced4g"

    const-string/jumbo v1, "show5gLimitedDialog"

    .line 268
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 269
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 270
    new-instance v1, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$1;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Landroid/telephony/ims/ImsMmTelManager;)V

    .line 279
    sget p1, Lcom/android/settings/R$string;->volte_5G_limited_title:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->volte_5G_limited_text:I

    .line 280
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 281
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->cancel:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 283
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v0, Lcom/android/settings/R$string;->condition_turn_off:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 286
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 287
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$On4gLteUpdateListener;)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 1

    .line 190
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gLteListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    return-void
.end method

.method public getAvailabilityStatus(I)I
    .locals 4

    .line 105
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;

    .line 106
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isModeMatched()Z

    move-result v0

    const/4 v1, 0x2

    if-nez v0, :cond_0

    return v1

    .line 109
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    .line 111
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isVoImsOptInEnabled()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    return v3

    .line 115
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-eqz p1, :cond_5

    const-string v2, "hide_enhanced_4g_lte_bool"

    .line 117
    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    .line 121
    :cond_2
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isReadyToVoLte()Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    .line 124
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_5
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

.method protected getMode()I
    .locals 0

    .line 0
    const/4 p0, -0x1

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method public init(I)Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;
    .locals 3

    .line 76
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;-><init>(Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback-IA;)V

    iput-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    .line 80
    :cond_0
    iput p1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    .line 81
    invoke-virtual {p0, p1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p1

    if-nez p1, :cond_1

    return-object p0

    :cond_1
    const-string/jumbo v0, "show_4g_for_lte_data_icon_bool"

    .line 86
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    const-string v1, "enhanced_4g_lte_title_variant_int"

    .line 88
    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_3

    if-eqz v0, :cond_2

    const/4 v0, 0x2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 91
    :goto_0
    iput v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->m4gCurrentMode:I

    :cond_3
    const-string/jumbo v0, "volte_5g_limited_alert_dialog_bool"

    .line 94
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mShow5gLimitedDialog:Z

    const-string v0, "carrier_nr_availabilities_int_array"

    .line 97
    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object p1

    .line 99
    invoke-static {p1}, Lcom/android/internal/telephony/util/ArrayUtils;->isEmpty([I)Z

    move-result p1

    xor-int/2addr p1, v2

    iput-boolean p1, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mIsNrEnabledFromCarrierConfig:Z

    return-object p0
.end method

.method protected isCallStateIdle()Z
    .locals 0

    .line 210
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mCallState:Ljava/lang/Integer;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isChecked()Z
    .locals 1

    .line 185
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object p0

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget p0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {v0, v1, p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->register(Landroid/content/Context;I)V

    return-void
.end method

.method public onStop()V
    .locals 0

    .line 144
    iget-object p0, p0, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->mTelephonyCallback:Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;

    if-nez p0, :cond_0

    return-void

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController$PhoneCallStateTelephonyCallback;->unregister()V

    return-void
.end method

.method protected queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;
    .locals 1

    .line 205
    new-instance v0, Lcom/android/settings/network/ims/VolteQueryImsState;

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/network/ims/VolteQueryImsState;-><init>(Landroid/content/Context;I)V

    return-object v0
.end method

.method public setChecked(Z)Z
    .locals 3

    .line 167
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 170
    :cond_0
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-static {v0}, Landroid/telephony/ims/ImsMmTelManager;->createForSubscriptionId(I)Landroid/telephony/ims/ImsMmTelManager;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    .line 175
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isDialogNeeded()Z

    move-result v2

    if-eqz v2, :cond_2

    if-nez p1, :cond_2

    .line 176
    invoke-direct {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->show5gLimitedDialog(Landroid/telephony/ims/ImsMmTelManager;)V

    return v1

    .line 178
    :cond_2
    invoke-direct {p0, v0, p1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->setAdvancedCallingSettingEnabled(Landroid/telephony/ims/ImsMmTelManager;Z)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 3

    .line 152
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->updateState(Landroidx/preference/Preference;)V

    if-nez p1, :cond_0

    return-void

    .line 156
    :cond_0
    check-cast p1, Landroidx/preference/SwitchPreference;

    .line 158
    iget v0, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v0}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->queryImsState(I)Lcom/android/settings/network/ims/VolteQueryImsState;

    move-result-object v0

    .line 159
    iget v1, p0, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->mSubId:I

    invoke-virtual {p0, v1}, Lcom/android/settings/network/telephony/TelephonyTogglePreferenceController;->getCarrierConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/network/telephony/Enhanced4gBasePreferenceController;->isUserControlAllowed(Landroid/os/PersistableBundle;)Z

    move-result p0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p0, :cond_1

    .line 160
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_1

    move p0, v1

    goto :goto_0

    :cond_1
    move p0, v2

    .line 159
    :goto_0
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 161
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isEnabledByUser()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 162
    invoke-virtual {v0}, Lcom/android/settings/network/ims/VolteQueryImsState;->isAllowUserControl()Z

    move-result p0

    if-eqz p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 161
    :goto_1
    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method

.method public bridge synthetic useDynamicSliceSummary()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->useDynamicSliceSummary()Z

    move-result p0

    return p0
.end method
