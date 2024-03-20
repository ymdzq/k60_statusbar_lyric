.class public Lcom/android/settings/notification/NotificationVolumePreferenceController;
.super Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.source "NotificationVolumePreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;,
        Lcom/android/settings/notification/NotificationVolumePreferenceController$H;
    }
.end annotation


# static fields
.field private static final KEY_NOTIFICATION_VOLUME:Ljava/lang/String; = "notification_volume"

.field private static final TAG:Ljava/lang/String; = "NotificationVolumePreferenceController"


# instance fields
.field private final mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

.field private final mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Lcom/android/settings/notification/NotificationVolumePreferenceController$H;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateEnabledState(Lcom/android/settings/notification/NotificationVolumePreferenceController;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const-string/jumbo v0, "notification_volume"

    .line 49
    invoke-direct {p0, p1, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    const-string v0, "NotificationVolumePreferenceController"

    .line 53
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    .line 46
    new-instance p1, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/notification/NotificationVolumePreferenceController$H;-><init>(Lcom/android/settings/notification/NotificationVolumePreferenceController;Lcom/android/settings/notification/NotificationVolumePreferenceController$H-IA;)V

    iput-object p1, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mHandler:Lcom/android/settings/notification/NotificationVolumePreferenceController$H;

    .line 55
    sget p1, Lcom/android/settings/R$drawable;->ic_notifications:I

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    .line 56
    sget p1, Lcom/android/settings/R$drawable;->ic_volume_ringer_vibrate:I

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    .line 57
    sget p1, Lcom/android/settings/R$drawable;->ic_notifications_off_24dp:I

    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateRingerMode()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 60
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/NotificationVolumePreferenceController;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private updateEnabledState()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_1

    .line 146
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v1, 0x2

    if-ne p0, v1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 71
    invoke-super {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 72
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-nez v0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setupVolPreference(Landroidx/preference/PreferenceScreen;)V

    .line 76
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->updateEffectsSuppressor()V

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->selectPreferenceIconState()V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationVolumePreferenceController;->updateEnabledState()V

    return-void
.end method

.method public getAudioStream()I
    .locals 0

    .line 0
    const/4 p0, 0x5

    return p0
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 98
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    .line 97
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$bool;->config_show_notification_volume:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    .line 98
    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result v0

    if-nez v0, :cond_1

    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    const/4 p0, 0x5

    goto :goto_0

    :cond_1
    const/4 p0, 0x3

    :goto_0
    return p0
.end method

.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "notification_volume"

    return-object p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected hintsMatch(I)Z
    .locals 2

    .line 0
    and-int/lit8 p0, p1, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v0

    :goto_0
    and-int/lit8 p1, p1, 0x2

    if-eqz p1, :cond_1

    move p1, v1

    goto :goto_1

    :cond_1
    move p1, v0

    :goto_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0
.end method

.method public onPause()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_PAUSE:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 91
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onPause()V

    .line 92
    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method public onResume()V
    .locals 1
    .annotation runtime Landroidx/lifecycle/OnLifecycleEvent;
        value = .enum Landroidx/lifecycle/Lifecycle$Event;->ON_RESUME:Landroidx/lifecycle/Lifecycle$Event;
    .end annotation

    .line 84
    invoke-super {p0}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->onResume()V

    .line 85
    iget-object p0, p0, Lcom/android/settings/notification/NotificationVolumePreferenceController;->mReceiver:Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationVolumePreferenceController$RingReceiver;->register(Z)V

    return-void
.end method

.method protected selectPreferenceIconState()V
    .locals 4

    .line 124
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_4

    .line 125
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    iget v3, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    if-ne v3, v2, :cond_0

    .line 126
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 127
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 128
    :cond_0
    iget v3, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    if-eqz v3, :cond_3

    if-nez v1, :cond_1

    if-ne v3, v2, :cond_1

    goto :goto_0

    .line 133
    :cond_1
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getStreamVolume(I)I

    move-result v0

    if-nez v0, :cond_2

    .line 135
    iget v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    iput v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 136
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    .line 130
    :cond_3
    :goto_0
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 131
    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    :cond_4
    :goto_1
    return-void
.end method
