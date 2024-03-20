.class public Lcom/android/settings/notification/MiuiMusicMuteActivity;
.super Landroid/app/Activity;
.source "MiuiMusicMuteActivity.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiMusicMuteActivity;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateMusicMute(Lcom/android/settings/notification/MiuiMusicMuteActivity;Landroid/content/Context;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/MiuiMusicMuteActivity;->updateMusicMute(Landroid/content/Context;Z)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initDialog()V
    .locals 3

    .line 43
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 45
    sget v1, Lcom/android/settings/R$string;->title_miui_music_mute_by_user:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    sget v1, Lcom/android/settings/R$string;->content_miui_music_mute_by_user:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 47
    sget v1, Lcom/android/settings/R$string;->cancel:I

    new-instance v2, Lcom/android/settings/notification/MiuiMusicMuteActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiMusicMuteActivity$1;-><init>(Lcom/android/settings/notification/MiuiMusicMuteActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 56
    sget v1, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/android/settings/notification/MiuiMusicMuteActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/notification/MiuiMusicMuteActivity$2;-><init>(Lcom/android/settings/notification/MiuiMusicMuteActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 65
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 66
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 67
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method

.method private updateMusicMute(Landroid/content/Context;Z)V
    .locals 2

    .line 74
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x3

    const-string/jumbo v1, "mute_music_at_silent"

    .line 73
    invoke-static {p0, v1, p2, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 78
    invoke-static {p1, p2}, Lcom/android/settings/notification/MiuiSilentSettingsFragment;->updateSilentMode(Landroid/content/Context;Z)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity;->mContext:Landroid/content/Context;

    .line 31
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiMusicMuteActivity;->initDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/notification/MiuiMusicMuteActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 37
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 39
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
