.class public Lcom/android/settings/sound/RingtoneActivity;
.super Lcom/android/settings/sound/BaseSoundActivity;
.source "RingtoneActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Lcom/android/settings/sound/BaseSoundActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected getRingtoneTitleId()I
    .locals 0

    .line 10
    sget p0, Lcom/android/settings/R$string;->ringtone_title:I

    return p0
.end method

.method protected getRingtoneType()I
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
