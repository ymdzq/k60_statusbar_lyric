.class public Lcom/android/settings/wireless/NewMiuiNfcRepairController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NewMiuiNfcRepairController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# instance fields
.field mActionListener:Landroid/content/DialogInterface$OnClickListener;

.field private mDialog:Landroid/app/Dialog;

.field mHandler:Landroid/os/Handler;

.field mInquiryListener:Landroid/content/DialogInterface$OnClickListener;

.field mRebootListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRecovery:Z

.field private mRepairPref:Landroidx/preference/Preference;

.field private mStartTime:J

.field private mState:I

.field private mUiContext:Landroid/content/Context;

.field private mWhichBtn:I


# direct methods
.method public static synthetic $r8$lambda$NX9nm62SmjpQ2Ne9scEL6DrSq6A(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->lambda$new$2(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$e-Z_UKtnsl-xt8M1V-GdWxTIEfk(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->lambda$new$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ls4eF8Vw1HBrHc-le2uQ3K7nTrI(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->lambda$new$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)Landroid/app/Dialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmReceiver(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmDialog(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/app/Dialog;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmWhichBtn(Lcom/android/settings/wireless/NewMiuiNfcRepairController;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateState(Lcom/android/settings/wireless/NewMiuiNfcRepairController;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 2

    .line 232
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0x0

    .line 66
    iput-wide v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    const/4 p1, 0x0

    .line 71
    iput p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    .line 198
    new-instance p1, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController$1;-><init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    .line 219
    new-instance p1, Lcom/android/settings/wireless/NewMiuiNfcRepairController$2;

    invoke-direct {p1, p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController$2;-><init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)V

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mReceiver:Landroid/content/BroadcastReceiver;

    const/4 p1, -0x2

    .line 343
    iput p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    .line 344
    new-instance p1, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)V

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRebootListener:Landroid/content/DialogInterface$OnClickListener;

    .line 352
    new-instance p1, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda1;

    invoke-direct {p1, p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)V

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mActionListener:Landroid/content/DialogInterface$OnClickListener;

    .line 361
    new-instance p1, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda2;

    invoke-direct {p1, p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)V

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mInquiryListener:Landroid/content/DialogInterface$OnClickListener;

    .line 233
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wireless/NewMiuiNfcRepairController;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getNfcPackageName()Ljava/lang/String;
    .locals 5

    .line 149
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v0, 0x403

    .line 150
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p0

    const-string v0, "com.android.nfc"

    if-eqz p0, :cond_3

    .line 151
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_1

    .line 155
    :cond_0
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p0, v2

    const-string v4, "com.android.nfcstm"

    .line 156
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    return-object v4

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v0

    :cond_3
    :goto_1
    const-string p0, "NewMiuiNfcRepairController"

    const-string/jumbo v1, "use default nfc package name"

    .line 152
    invoke-static {p0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method private synthetic lambda$new$0(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, 0x0

    .line 345
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 347
    iput p2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->rebootPhone()V

    :cond_0
    return-void
.end method

.method private synthetic lambda$new$1(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 354
    iput p2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    const/4 p1, 0x3

    .line 355
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 357
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    :goto_0
    return-void
.end method

.method private synthetic lambda$new$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 363
    iput p2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    const/4 p1, 0x2

    .line 364
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 366
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    :goto_0
    return-void
.end method

.method private updateState(I)V
    .locals 2

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "updateState: old state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    iput p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 2

    .line 238
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayPreference: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "nfc_repair"

    .line 241
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRepairPref:Landroidx/preference/Preference;

    if-eqz v0, :cond_2

    .line 243
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->hasNfcRepairFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 244
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRepairPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    return-void

    .line 247
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRepairPref:Landroidx/preference/Preference;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mUiContext:Landroid/content/Context;

    .line 248
    iget-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRepairPref:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 250
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/miui/enterprise/RestrictionsHelper;->hasNFCRestriction(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 251
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    move-result-object p1

    invoke-interface {p1}, Lmiui/enterprise/IRestrictionsHelper;->isNFCRestriction()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRepairPref:Landroidx/preference/Preference;

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "nfc_repair"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 261
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->hasNfcRepairFeature(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method nextDialogShow()V
    .locals 9

    const/4 v0, -0x2

    .line 84
    iput v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "nextDialogShow: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eq v0, v3, :cond_4

    const/high16 v3, 0x1040000    # @android:string/cancel

    if-eq v0, v2, :cond_3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    return-void

    .line 123
    :cond_0
    sget v0, Lcom/android/settings/R$string;->nfc_repair_fail_title:I

    .line 124
    sget v1, Lcom/android/settings/R$string;->nfc_repair_fail_desc:I

    .line 125
    sget v2, Lcom/android/settings/R$string;->nfc_repair_btn_retry:I

    .line 127
    iget-object v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mActionListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 116
    :cond_1
    sget v0, Lcom/android/settings/R$string;->nfc_repair_pass_title:I

    .line 117
    sget v1, Lcom/android/settings/R$string;->nfc_repair_pass_desc:I

    .line 118
    sget v2, Lcom/android/settings/R$string;->nfc_repair_btn_reboot:I

    .line 119
    sget v3, Lcom/android/settings/R$string;->nfc_repair_btn_reboot_later:I

    .line 120
    iget-object v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRebootListener:Landroid/content/DialogInterface$OnClickListener;

    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->repairNFC()V

    .line 107
    new-instance v0, Lmiuix/appcompat/app/ProgressDialog;

    iget-object v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mUiContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    .line 108
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog;->setCancelable(Z)V

    .line 109
    invoke-virtual {v0, v4}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 110
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->nfc_repair_ongoing:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 112
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 113
    iput-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    return-void

    .line 99
    :cond_3
    sget v0, Lcom/android/settings/R$string;->nfc_repair_title:I

    .line 100
    sget v1, Lcom/android/settings/R$string;->nfc_repair_action_desc:I

    .line 102
    sget v2, Lcom/android/settings/R$string;->nfc_repair_action_btn:I

    .line 103
    iget-object v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mActionListener:Landroid/content/DialogInterface$OnClickListener;

    :goto_0
    move v6, v1

    move-object v1, v5

    goto :goto_1

    .line 91
    :cond_4
    sget v0, Lcom/android/settings/R$string;->nfc_repair_title:I

    .line 92
    sget v6, Lcom/android/settings/R$string;->nfc_repair_confirm_desc:I

    .line 93
    iget-object v7, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v3, v2, v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v7, v6, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 94
    sget v2, Lcom/android/settings/R$string;->nfc_repair_btn_yes:I

    .line 95
    sget v3, Lcom/android/settings/R$string;->nfc_repair_btn_no:I

    .line 96
    iget-object v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mInquiryListener:Landroid/content/DialogInterface$OnClickListener;

    .line 132
    :goto_1
    new-instance v7, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mUiContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v7, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 133
    invoke-virtual {v0, v2, v4}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 134
    invoke-virtual {v0, v3, v5}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 135
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    if-nez v1, :cond_5

    .line 137
    invoke-virtual {v0, v6}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    goto :goto_2

    .line 139
    :cond_5
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 142
    :goto_2
    :try_start_0
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 144
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 304
    iput-boolean v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRecovery:Z

    const-string v0, "RepairState"

    const/4 v1, 0x0

    .line 305
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 306
    invoke-direct {p0, v0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    const-string v0, "RepairStart"

    const-wide/16 v1, 0x0

    .line 307
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    .line 309
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreate: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "NewMiuiNfcRepairController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDestroy: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 290
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 291
    iget-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 294
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 295
    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 297
    iput-object v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    :cond_1
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const/4 p1, 0x0

    .line 321
    iput-object p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mDialog:Landroid/app/Dialog;

    .line 323
    iget p1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mWhichBtn:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    .line 324
    invoke-direct {p0, p1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    .line 327
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->nextDialogShow()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    const-string/jumbo p1, "trigger inquiry"

    const-string v0, "NewMiuiNfcRepairController"

    .line 332
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    const-string p0, "Ingore, Monkey running..."

    .line 334
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 337
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->updateState(I)V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->nextDialogShow()V

    return v1
.end method

.method public onResume()V
    .locals 1

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRecovery:Z

    if-eqz v0, :cond_0

    .line 276
    invoke-virtual {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->nextDialogShow()V

    const/4 v0, 0x0

    .line 277
    iput-boolean v0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRecovery:Z

    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 314
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSaveInstanceState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", StartTime="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "RepairState"

    .line 315
    iget v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "RepairStart"

    .line 316
    iget-wide v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    return-void
.end method

.method rebootPhone()V
    .locals 3

    const-string v0, "NewMiuiNfcRepairController"

    .line 190
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "rebootPhone: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "power"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/PowerManager;

    const-string v1, "OneTouchRepair..."

    .line 192
    invoke-virtual {p0, v1}, Landroid/os/PowerManager;->reboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 194
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RebootPhone fail: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method repairNFC()V
    .locals 8

    .line 165
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "repairNFC: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mState:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewMiuiNfcRepairController"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 168
    :try_start_0
    new-instance v5, Landroid/content/IntentFilter;

    const-string v2, "com.android.nfc.action.repair.rsp"

    invoke-direct {v5, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 169
    iget-object v2, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mReceiver:Landroid/content/BroadcastReceiver;

    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v6, "android.permission.WRITE_SECURE_SETTINGS"

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 171
    iget-boolean v2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mRecovery:Z

    if-eqz v2, :cond_0

    .line 172
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    sub-long/2addr v2, v4

    goto :goto_0

    .line 175
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.nfc.action.repair.req"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    invoke-direct {p0}, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->getNfcPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    iget-object v3, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 178
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mStartTime:J

    const-wide/16 v2, 0x0

    .line 181
    :goto_0
    iget-object v4, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    const-wide/16 v5, 0x7530

    sub-long/2addr v5, v2

    invoke-virtual {v4, v0, v5, v6}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 183
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RepairNFC fail: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/android/settings/wireless/NewMiuiNfcRepairController;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :goto_1
    return-void
.end method
