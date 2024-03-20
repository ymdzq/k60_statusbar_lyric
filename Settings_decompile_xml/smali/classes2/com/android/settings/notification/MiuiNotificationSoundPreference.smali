.class public Lcom/android/settings/notification/MiuiNotificationSoundPreference;
.super Lcom/android/settings/RingtonePreference;
.source "MiuiNotificationSoundPreference.java"


# instance fields
.field private mRingtone:Landroid/net/Uri;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private updateRingtoneName(Landroid/net/Uri;)V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/MiuiNotificationSoundPreference$1;-><init>(Lcom/android/settings/notification/MiuiNotificationSoundPreference;Landroid/net/Uri;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 68
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    const/4 p1, 0x1

    if-eqz p3, :cond_1

    const-string p2, "android.intent.extra.ringtone.PICKED_URI"

    .line 41
    invoke-virtual {p3, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/net/Uri;

    .line 43
    :try_start_0
    invoke-virtual {p3}, Landroid/content/Intent;->getFlags()I

    move-result p3

    and-int/2addr p3, p1

    if-eqz p3, :cond_0

    .line 44
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    invoke-virtual {p3, p2, p1}, Landroid/content/ContentResolver;->takePersistableUriPermission(Landroid/net/Uri;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " failed to take persistableUriPermission "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Ringtone"

    invoke-static {v1, v0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_0
    :goto_0
    invoke-virtual {p0, p2}, Lcom/android/settings/notification/MiuiNotificationSoundPreference;->setRingtone(Landroid/net/Uri;)V

    .line 50
    invoke-virtual {p0, p2}, Landroidx/preference/Preference;->callChangeListener(Ljava/lang/Object;)Z

    :cond_1
    return p1
.end method

.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    const-string v0, "com.android.thememanager"

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 36
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->addMiuiNaturalSound(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    return-object p0
.end method

.method public setRingtone(Landroid/net/Uri;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    const-string/jumbo p1, "\u00a0"

    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 30
    iget-object p1, p0, Lcom/android/settings/notification/MiuiNotificationSoundPreference;->mRingtone:Landroid/net/Uri;

    invoke-direct {p0, p1}, Lcom/android/settings/notification/MiuiNotificationSoundPreference;->updateRingtoneName(Landroid/net/Uri;)V

    return-void
.end method
