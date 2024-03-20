.class public Lcom/android/settings/sound/SmsReceivedActivity;
.super Lcom/android/settings/sound/BaseSoundActivity;
.source "SmsReceivedActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/sound/BaseSoundActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getPickerIntent()Landroid/content/Intent;
    .locals 2

    .line 23
    invoke-super {p0}, Lcom/android/settings/sound/BaseSoundActivity;->getPickerIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v0, "android.intent.extra.ringtone.TYPE"

    const/4 v1, 0x2

    .line 24
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v0, "android.intent.extra.ringtone.DEFAULT_URI"

    .line 26
    invoke-static {v1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v1

    .line 25
    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object p0
.end method

.method protected getRingtoneTitleId()I
    .locals 0

    .line 12
    sget p0, Lcom/android/settings/R$string;->sms_received_sound_title:I

    return p0
.end method

.method protected getRingtoneType()I
    .locals 0

    .line 0
    const/16 p0, 0x10

    return p0
.end method
