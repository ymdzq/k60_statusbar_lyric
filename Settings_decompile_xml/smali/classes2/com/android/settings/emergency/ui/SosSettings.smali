.class public Lcom/android/settings/emergency/ui/SosSettings;
.super Lcom/android/settings/MiuiSettingsPreferenceFragment;
.source "SosSettings.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCountdownTimer:Landroid/os/CountDownTimer;

.field private mGuardCategory:Landroidx/preference/PreferenceCategory;

.field private mHandler:Landroid/os/Handler;

.field private mPaCategory:Landroidx/preference/PreferenceCategory;

.field private mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

.field private mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

.field private mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

.field private mSosCallingPref:Landroidx/preference/CheckBoxPreference;

.field private mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSosEnablePref:Landroidx/preference/CheckBoxPreference;

.field private mSosGuardPref:Landroidx/preference/Preference;

.field private mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

.field private mSosPrivacyPref:Landroidx/preference/Preference;

.field private mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

.field private player:Landroid/media/MediaPlayer;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCountdownTimer(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/os/CountDownTimer;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/emergency/ui/SosSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosCallLogPref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosCallingPref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosEnablePref(Lcom/android/settings/emergency/ui/SosSettings;)Landroidx/preference/CheckBoxPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosEnablePref:Landroidx/preference/CheckBoxPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSosPlayerPref(Lcom/android/settings/emergency/ui/SosSettings;)Lcom/android/settings/emergency/ui/view/SosCustomPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCountdownTimer(Lcom/android/settings/emergency/ui/SosSettings;Landroid/os/CountDownTimer;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method static bridge synthetic -$$Nest$magreeProlicy(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->agreeProlicy(Landroid/content/Context;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$menableSoS(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->enableSoS()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleRevoke(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->handleRevoke()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPrivacyNotAgreeDialog(Lcom/android/settings/emergency/ui/SosSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyNotAgreeDialog()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowPrivacyUpdateDialog(Lcom/android/settings/emergency/ui/SosSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyUpdateDialog(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowRevokeFailedDialog(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->showRevokeFailedDialog(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Lcom/android/settings/MiuiSettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/emergency/ui/SosSettings;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/emergency/ui/SosSettings;)Z
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result p0

    return p0
.end method

.method private agreeProlicy(Landroid/content/Context;)V
    .locals 2

    .line 624
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 625
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$18;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/emergency/ui/SosSettings$18;-><init>(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 631
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private checkPrivacyUpdate(Landroid/content/Context;)V
    .locals 2

    .line 638
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 639
    :cond_0
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$19;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/emergency/ui/SosSettings$19;-><init>(Lcom/android/settings/emergency/ui/SosSettings;Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 667
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private enableSoS()V
    .locals 2

    .line 455
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/emergency/util/Config;->setSosPrivacyConfirmed(Landroid/content/Context;Z)V

    .line 457
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 458
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showEmergencyContactsGuidingDialog()V

    :cond_0
    return-void
.end method

.method private handleRevoke()V
    .locals 2

    .line 558
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 559
    :cond_0
    new-instance v0, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;

    invoke-direct {v0, p0}, Lcom/android/settings/emergency/ui/SosSettings$PrivacyRevokeTask;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    sget-object p0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, p0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private openMediaPlayer()V
    .locals 2

    .line 306
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$raw;->sos_player_voice:I

    invoke-static {v0, v1}, Landroid/media/MediaPlayer;->create(Landroid/content/Context;I)Landroid/media/MediaPlayer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    .line 308
    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$1;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 316
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/emergency/ui/view/SosCustomPreference;->setPlayIcon(Z)V

    .line 317
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/emergency/ui/view/SosCustomPreference;->setPlayIcon(Z)V

    .line 320
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "SosSettings"

    const-string v1, "Media Player Exception!"

    .line 323
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private showCallLogEnableDialog()V
    .locals 3

    .line 411
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->emergency_sos_title:I

    .line 412
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sos_phone_log_privacy_dialog_message:I

    .line 413
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 414
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sos_phone_call_privacy_dialog_message_confirm:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$9;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 415
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$8;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 423
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 429
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showCallingEnableDialog()V
    .locals 3

    .line 389
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->emergency_sos_title:I

    .line 390
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sos_phone_call_privacy_dialog_message:I

    .line 391
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 392
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sos_phone_call_privacy_dialog_message_confirm:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$7;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 393
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$6;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 401
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 407
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showEmergencyContactsGuidingDialog()V
    .locals 3

    .line 367
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_title:I

    .line 368
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_open:I

    .line 369
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 370
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_add:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$5;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$5;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 371
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$4;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 379
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 385
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showNoInterntDialog()V
    .locals 3

    .line 487
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 488
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sos_privacy_policy_no_net_title:I

    .line 489
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->sos_privacy_policy_no_net_message:I

    .line 490
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 491
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_launch_error_confirm:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$12;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$12;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 492
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 497
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 499
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showPrivacyNotAgreeDialog()V
    .locals 3

    .line 701
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 702
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sos_privacy_policy_change_title_reject:I

    .line 703
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    .line 704
    invoke-static {v1}, Lcom/android/settings/emergency/util/LicenseHelper;->buildPrivacyPolicyNoticeDisagree(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 705
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->free_wifi_user_agreement_allow:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$23;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$23;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 706
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$22;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$22;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 712
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 717
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 718
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 719
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showPrivacyPolicyDialog(Z)V
    .locals 3

    .line 331
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 332
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    sget v1, Lcom/android/settings/R$string;->sos_privacy_dialog_title:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->emergency_sos_title:I

    :goto_0
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    .line 333
    invoke-static {v1}, Lcom/android/settings/emergency/util/LicenseHelper;->buildPrivacyPolicyNotice(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 334
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->free_wifi_user_agreement_allow:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$3;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/emergency/ui/SosSettings$3;-><init>(Lcom/android/settings/emergency/ui/SosSettings;Z)V

    .line 335
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$2;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$2;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 350
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 355
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 357
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    .line 360
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showPrivacyRevockeDialog()V
    .locals 10

    .line 506
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 507
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->sos_privacy_policy_change_title_reject:I

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    .line 508
    iget-object v2, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/emergency/util/LicenseHelper;->buildPolicyRevoke(Landroid/content/Context;)Landroid/text/SpannableStringBuilder;

    move-result-object v2

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 509
    sget v2, Lcom/android/settings/R$string;->privacy_authorize_revoke:I

    new-instance v3, Lcom/android/settings/emergency/ui/SosSettings$13;

    invoke-direct {v3, p0}, Lcom/android/settings/emergency/ui/SosSettings$13;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 516
    sget v2, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v3, Lcom/android/settings/emergency/ui/SosSettings$14;

    invoke-direct {v3, p0}, Lcom/android/settings/emergency/ui/SosSettings$14;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    invoke-virtual {v0, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 522
    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$15;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$15;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 531
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 532
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 535
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object v2

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    const/4 v2, -0x2

    .line 536
    invoke-virtual {v0, v2}, Lmiuix/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v9

    .line 537
    invoke-virtual {v9, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 538
    new-instance v0, Lcom/android/settings/emergency/ui/SosSettings$16;

    const-wide/16 v5, 0x2710

    const-wide/16 v7, 0x3e8

    move-object v3, v0

    move-object v4, p0

    invoke-direct/range {v3 .. v9}, Lcom/android/settings/emergency/ui/SosSettings$16;-><init>(Lcom/android/settings/emergency/ui/SosSettings;JJLandroid/widget/Button;)V

    .line 551
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mCountdownTimer:Landroid/os/CountDownTimer;

    return-void
.end method

.method private showPrivacyUpdateDialog(Ljava/lang/String;)V
    .locals 3

    .line 675
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 676
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->sos_privacy_policy_change_subtitle:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 677
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->sos_privacy_policy_change_title:I

    .line 678
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    .line 679
    invoke-static {v1, p1}, Lcom/android/settings/emergency/util/LicenseHelper;->buildPrivacyPolicyNoticeUpdate(Landroid/content/Context;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    const/4 v0, 0x0

    .line 680
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->free_wifi_user_agreement_allow:I

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$21;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$21;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 681
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->miui_sos_exit_dialog_cancel:I

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$20;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$20;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 687
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 693
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 694
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getMessageView()Landroid/widget/TextView;

    move-result-object p0

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method private showRevokeFailedDialog(Landroid/content/Context;)V
    .locals 3

    .line 606
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 607
    :cond_0
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 608
    sget p1, Lcom/android/settings/R$string;->sos_privacy_revoke_failed_dialog_title:I

    invoke-virtual {v0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sos_privacy_revoke_failed_dialog_content:I

    .line 609
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->sos_privacy_policy_no_net_button:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$17;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$17;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 610
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 616
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 617
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method private showSosCloseDialog()V
    .locals 3

    .line 433
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/android/settings/R$string;->miui_sos_exit_dialog_title:I

    .line 434
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_close:I

    .line 435
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 436
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->miui_sos_remind_close_confirm:I

    new-instance v2, Lcom/android/settings/emergency/ui/SosSettings$11;

    invoke-direct {v2, p0}, Lcom/android/settings/emergency/ui/SosSettings$11;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    .line 437
    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/emergency/ui/SosSettings$10;

    invoke-direct {v1, p0}, Lcom/android/settings/emergency/ui/SosSettings$10;-><init>(Lcom/android/settings/emergency/ui/SosSettings;)V

    const/high16 p0, 0x1040000    # @android:string/cancel

    .line 445
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 451
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private showUserInstruction()V
    .locals 1

    .line 475
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_0

    return-void

    .line 476
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/cloud/util/Utils;->isConnected(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 477
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showNoInterntDialog()V

    goto :goto_0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyRevockeDialog()V

    :goto_0
    return-void
.end method

.method private updatePaPreference()V
    .locals 2

    .line 194
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->isPaSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/emergency/util/Config;->isPaEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 199
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->miui_sos_pa_turn_on:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$string;->miui_sos_pa_turn_off:I

    :goto_0
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 198
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_2

    .line 195
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mPaCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 196
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mPaCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :goto_2
    return-void
.end method

.method private updateUI()V
    .locals 4

    .line 183
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->isSosEnable(Landroid/content/Context;)Z

    move-result v0

    .line 184
    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 187
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const-string v1, ";"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    .line 188
    :goto_0
    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v2, Lcom/android/settings/R$plurals;->miui_sos_emergency_contacts_quantity:I

    .line 189
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    .line 188
    invoke-virtual {p0, v2, v0, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 105
    const-class p0, Lcom/android/settings/emergency/ui/SosSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 464
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0xdc

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 467
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->enableSoS()V

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6

    .line 110
    sget v0, Lcom/android/settings/R$xml;->miui_sos_settings:I

    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 111
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mHandler:Landroid/os/Handler;

    .line 112
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "setting_Passwords_security_sos"

    .line 113
    invoke-static {v0}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    const-string/jumbo v0, "miui_sos_enable"

    .line 114
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosEnablePref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "miui_sos_calling"

    .line 115
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "miui_sos_call_log"

    .line 116
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "miui_sos_around_photo"

    .line 117
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v0, "miui_sos_around_voice"

    .line 118
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    const-string v0, "key_sos_player"

    .line 119
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    const-string/jumbo v0, "miui_sos_contacts_add"

    .line 120
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string v0, "key_sos_privacy_revoke"

    .line 121
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo v0, "miui_sos_guard"

    .line 122
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mGuardCategory:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_sos_guard"

    .line 123
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosGuardPref:Landroidx/preference/Preference;

    const-string v0, "key_sos_privacy"

    .line 124
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyPref:Landroidx/preference/Preference;

    const-string v0, "key_sos_pa"

    .line 125
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const-string/jumbo v0, "miui_sos_pa"

    .line 126
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mPaCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "miui_sos_settings"

    .line 128
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

    .line 129
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/emergency/util/Config;->isSosCallingEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/emergency/util/Config;->isSosCallLogEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/emergency/util/Config;->isSosEmergencyAroundPhoto(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miui_sos_around_photo_summary:I

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/emergency/util/Config;->isSosEmergencyAroundVoice(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miui_sos_around_voice_summary:I

    const/4 v4, 0x5

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->miui_sos_around_voice_title:I

    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosEnablePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 140
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 141
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 142
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 143
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosGuardPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 146
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyPref:Landroidx/preference/Preference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string/jumbo v0, "ro.vendor.audio.sos"

    const/4 v1, 0x0

    .line 153
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 154
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 155
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 157
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mGuardCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosGuardPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 159
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mGuardCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 164
    :cond_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/CommonUtils;->isSosNewFeatureSupport(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 166
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosSettingsCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 173
    :cond_2
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "zh"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_4

    .line 174
    :cond_3
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mGuardCategory:Landroidx/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosGuardPref:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 176
    :cond_4
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->isSosEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 177
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/emergency/ui/SosSettings;->checkPrivacyUpdate(Landroid/content/Context;)V

    .line 179
    :cond_5
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0
.end method

.method public onDestroy()V
    .locals 0

    .line 225
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 226
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    if-eqz p0, :cond_0

    .line 227
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->release()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 216
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/emergency/ui/view/SosCustomPreference;->setPlayIcon(Z)V

    .line 219
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->player:Landroid/media/MediaPlayer;

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->pause()V

    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 233
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 234
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosEnablePref:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_5

    .line 238
    invoke-static {}, Lcom/android/settings/security/PrivacyRevocationController;->hidePrivacyRevoke()Z

    move-result p1

    if-nez p1, :cond_0

    .line 239
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    const-string v0, "com.android.settings"

    invoke-static {p1, v0}, Landroid/provider/MiuiSettings$Privacy;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    if-eqz p2, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/emergency/util/Config;->isSosPrivacyConfirmed(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-nez p1, :cond_2

    .line 242
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/settings/emergency/ui/SosSettings;->showPrivacyPolicyDialog(Z)V

    return v1

    :cond_2
    if-eqz p2, :cond_3

    .line 246
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/emergency/util/Config;->getSosEmergencyContacts(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 247
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showEmergencyContactsGuidingDialog()V

    goto :goto_1

    :cond_3
    if-nez p2, :cond_4

    .line 248
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/emergency/util/Config;->isInSosMode(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 249
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showSosCloseDialog()V

    goto :goto_1

    .line 251
    :cond_4
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/emergency/util/Config;->setSosEnable(Landroid/content/Context;Z)V

    :goto_1
    return v1

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallingPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    .line 255
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_6

    if-eqz p2, :cond_6

    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/emergency/util/Config;->isSosCallingConfirmed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_6

    .line 256
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showCallingEnableDialog()V

    goto :goto_2

    .line 258
    :cond_6
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/emergency/util/Config;->setSosCallingEnable(Landroid/content/Context;Z)V

    :goto_2
    return v1

    .line 261
    :cond_7
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosCallLogPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_9

    .line 262
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_8

    if-eqz p2, :cond_8

    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/emergency/util/Config;->isSosCallLogConfirmed(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_8

    .line 263
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showCallLogEnableDialog()V

    goto :goto_3

    .line 265
    :cond_8
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/emergency/util/Config;->setSosCallLogEnable(Landroid/content/Context;Z)V

    :goto_3
    return v1

    .line 268
    :cond_9
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundPhotoPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_a

    .line 269
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/emergency/util/Config;->setSosEmergencyAroundPhoto(Landroid/content/Context;Z)V

    return v1

    .line 271
    :cond_a
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosAroundVoicePref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_b

    .line 272
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-static {p0, p2}, Lcom/android/settings/emergency/util/Config;->setSosEmergencyAroundVoice(Landroid/content/Context;Z)V

    return v1

    :cond_b
    const/4 p0, 0x0

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosContactsAddPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p1, v0, :cond_0

    .line 281
    new-instance p1, Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/emergency/ui/EmergencyContactsActivity;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyRevoke:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p1, v0, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->showUserInstruction()V

    goto :goto_0

    .line 284
    :cond_1
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPlayerPref:Lcom/android/settings/emergency/ui/view/SosCustomPreference;

    if-ne p1, v0, :cond_2

    .line 285
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->openMediaPlayer()V

    goto :goto_0

    .line 286
    :cond_2
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosGuardPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_3

    .line 287
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.green_guard_activity"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 288
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 289
    :cond_3
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPrivacyPref:Landroidx/preference/Preference;

    if-ne p1, v0, :cond_4

    .line 290
    invoke-static {}, Lcom/android/settings/emergency/util/LicenseHelper;->getSosPrivacyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 291
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 292
    iget-object p1, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    const-string v1, "com.android.browser.application_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    :try_start_0
    iget-object p0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mContext:Landroid/content/Context;

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 296
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Actvity was not found for intent, "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SosSettings"

    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 298
    :cond_4
    iget-object v0, p0, Lcom/android/settings/emergency/ui/SosSettings;->mSosPaPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne p1, v0, :cond_5

    .line 299
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v0, "miui.intent.action.WARNINGCENTER_POLICE_ASSIST"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    :cond_5
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 2

    .line 205
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->updateUI()V

    .line 207
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    sget v1, Lcom/android/settings/R$string;->emergency_sos_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 211
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/emergency/ui/SosSettings;->updatePaPreference()V

    return-void
.end method
