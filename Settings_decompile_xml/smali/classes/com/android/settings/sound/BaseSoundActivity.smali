.class public abstract Lcom/android/settings/sound/BaseSoundActivity;
.super Landroid/app/Activity;
.source "BaseSoundActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPickerIntent()Landroid/content/Intent;
    .locals 5

    .line 27
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.RINGTONE_PICKER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.thememanager"

    const-string v2, "com.android.thememanager.activity.ThemeTabActivity"

    .line 28
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v2, 0x0

    .line 30
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result v1

    .line 33
    sget-boolean v3, Lmiui/os/Build;->IS_HONGMI:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_0

    if-eq v1, v4, :cond_1

    :cond_0
    move v2, v4

    :cond_1
    const-string v3, "android.intent.extra.ringtone.SHOW_SILENT"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.TYPE"

    .line 34
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 36
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v3

    .line 35
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneTitleId()I

    move-result v2

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.intent.extra.ringtone.TITLE"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "android.intent.extra.ringtone.EXISTING_URI"

    .line 38
    invoke-static {p0, v1}, Landroid/media/ExtraRingtoneManager;->getDefaultSoundSettingUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object p0

    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v0
.end method

.method protected abstract getRingtoneTitleId()I
.end method

.method protected abstract getRingtoneType()I
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    if-eqz p3, :cond_0

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getRingtoneType()I

    move-result p1

    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 49
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 50
    invoke-static {p0, p1, p2}, Landroid/media/ExtraRingtoneManager;->saveDefaultSound(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 52
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 16
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 17
    invoke-virtual {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getPickerIntent()Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 22
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    const/4 v0, 0x1

    .line 23
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method
