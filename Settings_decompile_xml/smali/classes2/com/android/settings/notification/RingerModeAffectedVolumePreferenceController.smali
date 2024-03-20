.class public abstract Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;
.super Lcom/android/settings/notification/VolumeSeekBarPreferenceController;
.source "RingerModeAffectedVolumePreferenceController.java"


# instance fields
.field protected mMuteIcon:I

.field protected mNoMan:Landroid/app/INotificationManager;

.field protected mNormalIconId:I

.field protected mRingerMode:I

.field protected mSilentIconId:I

.field protected mSuppressor:Landroid/content/ComponentName;

.field private final mTag:Ljava/lang/String;

.field protected mVibrateIconId:I

.field protected mVibrator:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    .line 46
    iput p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    .line 52
    iput-object p3, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mTag:Ljava/lang/String;

    .line 53
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-class p2, Landroid/os/Vibrator;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    iput-object p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz p1, :cond_0

    .line 54
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 55
    iput-object p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic getBackgroundWorkerClass()Ljava/lang/Class;
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->getBackgroundWorkerClass()Ljava/lang/Class;

    move-result-object p0

    return-object p0
.end method

.method public getMuteIcon()I
    .locals 0

    .line 112
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    return p0
.end method

.method public bridge synthetic hasAsyncUpdate()Z
    .locals 0

    .line 0
    invoke-super {p0}, Lcom/android/settings/slices/Sliceable;->hasAsyncUpdate()Z

    move-result p0

    return p0
.end method

.method protected abstract hintsMatch(I)Z
.end method

.method public isPublicSlice()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isSliceable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method protected selectPreferenceIconState()V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v0, :cond_2

    .line 134
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 135
    iget p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNormalIconId:I

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 137
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    if-eqz v1, :cond_1

    .line 138
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrateIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    goto :goto_0

    .line 140
    :cond_1
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSilentIconId:I

    iput v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mMuteIcon:I

    .line 142
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->getMuteIcon()I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->showIcon(I)V

    :cond_2
    :goto_1
    return-void
.end method

.method setPreference(Lcom/android/settings/notification/VolumeSeekBarPreference;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 87
    iput-object p1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    return-void
.end method

.method setVibrator(Landroid/os/Vibrator;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    iput-object p1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mVibrator:Landroid/os/Vibrator;

    return-void
.end method

.method protected updateEffectsSuppressor()V
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getEffectsSuppressor()Landroid/content/ComponentName;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    .line 63
    :cond_0
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNoMan:Landroid/app/INotificationManager;

    if-nez v1, :cond_1

    const-string/jumbo v1, "notification"

    .line 65
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 64
    invoke-static {v1}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNoMan:Landroid/app/INotificationManager;

    .line 70
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mNoMan:Landroid/app/INotificationManager;

    invoke-interface {v1}, Landroid/app/INotificationManager;->getHintsFromListenerNoToken()I

    move-result v1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 76
    invoke-virtual {p0, v1}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->hintsMatch(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 77
    iput-object v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mSuppressor:Landroid/content/ComponentName;

    .line 78
    iget-object v1, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    if-eqz v1, :cond_2

    .line 79
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/android/settings/notification/SuppressorHelper;->getSuppressionText(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    .line 80
    iget-object p0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mPreference:Lcom/android/settings/notification/VolumeSeekBarPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/VolumeSeekBarPreference;->setSuppressionText(Ljava/lang/String;)V

    :cond_2
    return-void

    :catch_0
    move-exception v0

    .line 72
    iget-object p0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mTag:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "updateEffectsSuppressor: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected updateRingerMode()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {v0}, Lcom/android/settings/notification/AudioHelper;->getRingerModeInternal()I

    move-result v0

    .line 121
    iget v1, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    if-ne v1, v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 124
    :cond_0
    iput v0, p0, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->mRingerMode:I

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/notification/RingerModeAffectedVolumePreferenceController;->selectPreferenceIconState()V

    const/4 p0, 0x1

    return p0
.end method

.method public useDynamicSliceSummary()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
