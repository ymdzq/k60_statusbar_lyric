.class public Lcom/android/settings/MiuiSoundSettings;
.super Lcom/android/settings/MiuiSoundSettingsBase;
.source "MiuiSoundSettings.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;,
        Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;,
        Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;,
        Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;
    }
.end annotation


# static fields
.field private static final mRestrictedKeyList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAlarmRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private final mContentHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/utils/MiuiBaseController;",
            ">;"
        }
    .end annotation
.end field

.field private mDeviceInfoCallback:Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

.field private mHandler:Landroid/os/Handler;

.field private mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

.field private mMiuiAlarmRingtoneController:Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;

.field private mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mNotificationSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private final mObserver:Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;

.field private mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

.field private mRemoteServiceConn:Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

.field private mRequestPreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

.field private final mRingerModeReceiver:Landroid/content/BroadcastReceiver;

.field private mRingerModeSettingPref:Landroidx/preference/CheckBoxPreference;

.field private mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private mSilentModePref:Landroidx/preference/CheckBoxPreference;

.field private mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

.field private mSoundModeCategory:Landroidx/preference/PreferenceCategory;

.field private mSoundSpeakerCategory:Landroidx/preference/PreferenceCategory;

.field private mSoundSpeakerPreference:Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

.field protected mUserId:I

.field private final mVibrateSettingsObserver:Landroid/database/ContentObserver;

.field private mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

.field private mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

.field private mVolumeDownPressed:Z

.field private mVolumeNtfPref:Lcom/android/settings/sound/VolumeSeekBarPreference;

.field private mZenModePef:Lcom/android/settings/dndmode/LabelPreference;

.field private workSoundController:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;


# direct methods
.method public static synthetic $r8$lambda$Rf-u005R-WSJNkjylRWtvhILH_s(Lcom/android/settings/MiuiSoundSettings;Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->lambda$initRingToYouPreference$0(Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TmFDzDheBMw3ZecYqUV6ADGtmas(Lcom/android/settings/MiuiSoundSettings;Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/MiuiSoundSettings;->lambda$initRingToYouPreference$1(Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceInfoCallback(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mDeviceInfoCallback:Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/MiuiSoundSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHelper(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/device/DeviceParamsInitHelper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRemoteService(Lcom/android/settings/MiuiSoundSettings;)Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmHelper(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/device/DeviceParamsInitHelper;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mHelper:Lcom/android/settings/device/DeviceParamsInitHelper;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRemoteService(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    return-void
.end method

.method static bridge synthetic -$$Nest$minitSoundParams(Lcom/android/settings/MiuiSoundSettings;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->initSoundParams(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mrefreshZenModeSetting(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshZenModeSetting()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendRefreshMsg(Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->sendRefreshMsg()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    const-string/jumbo v1, "ring_volume"

    .line 213
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "media_volume"

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v1, "alarm_volume"

    .line 215
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v1, "notification_volume"

    .line 216
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 132
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettingsBase;-><init>()V

    .line 190
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$SoundUIHandler;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    .line 192
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    const/4 v0, 0x0

    .line 219
    iput-boolean v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeDownPressed:Z

    .line 222
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mObserver:Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;

    .line 223
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$1;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    .line 894
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContentHandler:Landroid/os/Handler;

    .line 895
    new-instance v1, Lcom/android/settings/MiuiSoundSettings$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/MiuiSoundSettings$2;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method public static getHapticFeedbackLevelValue(Landroid/content/Context;)I
    .locals 3

    .line 775
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 779
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_level"

    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x0

    .line 783
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result p0

    const/4 v0, 0x2

    invoke-static {v0, p0}, Ljava/lang/Math;->min(II)I

    move-result p0

    return p0
.end method

.method public static hideRingtonePreference(Landroid/content/Context;)Z
    .locals 1

    .line 471
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 472
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 473
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    .line 474
    invoke-static {p0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private initRingToYouPreference()V
    .locals 5

    .line 489
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_NEED_ADD_RINGTOYOU:Z

    const-string/jumbo v1, "ring_toyou_check"

    const-string/jumbo v2, "ring_toyou"

    if-nez v0, :cond_0

    .line 490
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 491
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    return-void

    .line 495
    :cond_0
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    .line 496
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const/4 v4, 0x1

    invoke-static {v3, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_2

    .line 501
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 502
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 503
    new-instance v0, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void

    .line 513
    :cond_2
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 514
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 515
    new-instance v2, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/settings/MiuiSoundSettings$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/MiuiSoundSettings;Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;)V

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private initRingtoneType()V
    .locals 2

    const-string v0, "MiuiSoundSettings"

    const-string v1, "init all ringtone type"

    .line 563
    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-boolean v0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSupportCoolSound:Z

    if-eqz v0, :cond_0

    return-void

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 568
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 570
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    const/16 v1, 0x10

    .line 571
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    const/16 v1, 0x8

    .line 574
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 576
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_4

    const/16 v1, 0x1000

    .line 577
    invoke-virtual {v0, v1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    .line 579
    :cond_4
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mNotificationSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz p0, :cond_5

    const/4 v0, 0x2

    .line 580
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setRingtoneType(I)V

    :cond_5
    return-void
.end method

.method private initSoundParams(Ljava/lang/String;)V
    .locals 2

    .line 1215
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->showBasicItems(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1218
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_1

    const/4 v1, 0x6

    .line 1219
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1220
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 1221
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private initVolumePreference(Ljava/lang/String;II)V
    .locals 0

    .line 478
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-nez p0, :cond_0

    return-void

    .line 482
    :cond_0
    invoke-virtual {p0, p2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setStream(I)V

    .line 483
    invoke-virtual {p0, p3}, Landroidx/preference/Preference;->setIcon(I)V

    .line 484
    new-instance p1, Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-direct {p1, p0}, Lcom/android/settings/sound/SeekBarVolumizer;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    .line 485
    invoke-virtual {p0, p1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setSeekBarVolumizer(Lcom/android/settings/sound/SeekBarVolumizer;)V

    return-void
.end method

.method private isInCommunication()Z
    .locals 2

    .line 1029
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "telecom"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    .line 1030
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 1031
    invoke-virtual {p0}, Landroid/media/AudioManager;->getMode()I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isSystemHapticEnable(Landroid/content/Context;)Z
    .locals 2

    .line 822
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private synthetic lambda$initRingToYouPreference$0(Landroidx/preference/Preference;)Z
    .locals 1

    .line 504
    invoke-virtual {p1}, Landroidx/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 505
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    instance-of v0, v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    if-eqz v0, :cond_0

    .line 506
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;

    invoke-interface {v0, p0, p1}, Landroidx/preference/PreferenceFragmentCompat$OnPreferenceStartFragmentCallback;->onPreferenceStartFragment(Landroidx/preference/PreferenceFragmentCompat;Landroidx/preference/Preference;)Z

    move-result p0

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic lambda$initRingToYouPreference$1(Landroidx/preference/CheckBoxPreference;Landroidx/preference/Preference;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 516
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p3

    if-nez p3, :cond_0

    .line 517
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p3

    invoke-virtual {p3, p2}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 518
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 519
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 520
    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string/jumbo p2, "ring_toyou"

    .line 519
    invoke-static {p0, p2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method private refreshMuteModeSetting(Z)V
    .locals 4

    .line 922
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeSettingPref:Landroidx/preference/CheckBoxPreference;

    if-nez v0, :cond_0

    return-void

    .line 925
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v0

    .line 926
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeSettingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 927
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 928
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x1

    const/4 v2, -0x3

    const-string/jumbo v3, "mute_music_at_silent"

    .line 927
    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 931
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "refreshMuteModeSetting(), muteMediaValue : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiSoundSettings"

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 933
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 935
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 937
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :goto_0
    if-eqz p1, :cond_3

    .line 940
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumePrefDrawable()V

    :cond_3
    return-void
.end method

.method private refreshVolumePrefDrawable()V
    .locals 2

    .line 1120
    sget-object v0, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1121
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-eqz v1, :cond_0

    .line 1123
    invoke-virtual {v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->updateSeekBarDrawable()V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private refreshZenModeSetting()V
    .locals 2

    .line 945
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mZenModePef:Lcom/android/settings/dndmode/LabelPreference;

    if-nez v0, :cond_0

    return-void

    .line 948
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mNotificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenMode()I

    move-result v0

    if-eqz v0, :cond_1

    .line 949
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->mode_enable:I

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->mode_disable:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 950
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mZenModePef:Lcom/android/settings/dndmode/LabelPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private sendRefreshMsg()V
    .locals 2

    .line 885
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x2

    .line 889
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 890
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    return-void
.end method

.method private setFragmentTitle()V
    .locals 2

    const-string/jumbo v0, "vibrator"

    .line 586
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/SettingsFeatures;->isSupportSettingsHaptic(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    sget v0, Lcom/android/settings/R$string;->sound_haptic_settings:I

    goto :goto_0

    .line 590
    :cond_0
    invoke-virtual {v0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result v0

    if-eqz v0, :cond_1

    sget v0, Lcom/android/settings/R$string;->sound_vibrate_settings:I

    goto :goto_0

    :cond_1
    sget v0, Lcom/android/settings/R$string;->sound_settings:I

    .line 592
    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p0

    if-eqz p0, :cond_2

    if-lez v0, :cond_2

    .line 594
    invoke-virtual {p0, v0}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    :cond_2
    return-void
.end method

.method private setHapticFeedbackLevelValue(I)V
    .locals 5

    const/4 v0, 0x0

    const-string v1, "haptic_feedback_enabled"

    if-ltz p1, :cond_0

    .line 759
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    invoke-static {v2, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 760
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Landroid/os/Vibrator;

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Vibrator;

    .line 761
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v4, 0x12

    .line 762
    invoke-virtual {v1, v4}, Landroid/os/Vibrator;->getDefaultVibrationIntensity(I)I

    move-result v1

    const-string v4, "haptic_feedback_intensity"

    .line 761
    invoke-static {v2, v4, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 763
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "haptic_feedback_level"

    invoke-static {v1, v2, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 766
    new-instance v1, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2, v3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v1, v3, v0}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(IZ)Z

    goto :goto_0

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 770
    :goto_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 771
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public static setSystemHapticEnable(Landroid/content/Context;Z)V
    .locals 1

    .line 818
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "haptic_feedback_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updateMuteCheckPref(Z)V
    .locals 3

    .line 1110
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 1111
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x3

    const-string/jumbo v2, "mute_music_at_silent"

    .line 1110
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 1115
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumePrefDrawable()V

    .line 1116
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->sendRefreshMsg()V

    return-void
.end method

.method private updateRingerModeSettingPref(Z)V
    .locals 1

    .line 1104
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/provider/MiuiSettings$SoundMode;->setSilenceModeOn(Landroid/content/Context;Z)V

    .line 1105
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshVolumePrefDrawable()V

    .line 1106
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->sendRefreshMsg()V

    return-void
.end method

.method private updateVibrateInNormalPref(Z)V
    .locals 3

    .line 826
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 827
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_in_normal"

    const/4 v2, -0x3

    .line 826
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 830
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 831
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 830
    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private updateVibrateInSilentPref(Z)V
    .locals 3

    .line 834
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 835
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x3

    const-string/jumbo v2, "vibrate_in_silent"

    .line 834
    invoke-static {v0, v2, p1, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 839
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 841
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_0
    return-void
.end method


# virtual methods
.method public enableWorkSync()V
    .locals 0

    .line 1082
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->workSoundController:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    if-eqz p0, :cond_0

    .line 1083
    invoke-virtual {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->enableWorkSync()V

    :cond_0
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiSoundSettings"

    return-object p0
.end method

.method protected handleOthersSummery(Landroid/os/Message;)V
    .locals 2

    .line 245
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 257
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz p0, :cond_3

    .line 258
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 252
    :cond_1
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz p0, :cond_3

    .line 253
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 247
    :cond_2
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz p0, :cond_3

    .line 248
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 287
    invoke-super {p0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 289
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    .line 290
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/MiuiSoundSettings;->mUserId:I

    .line 294
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mNotificationManager:Landroid/app/NotificationManager;

    .line 296
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCallForAllSpace(Landroid/content/Context;)Z

    move-result p1

    const/4 v0, 0x5

    if-eqz p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    const-string/jumbo v1, "ring_volume"

    .line 297
    sget v2, Lcom/android/settings/R$drawable;->ring_volume_icon:I

    invoke-direct {p0, v1, p1, v2}, Lcom/android/settings/MiuiSoundSettings;->initVolumePreference(Ljava/lang/String;II)V

    const/4 p1, 0x4

    .line 298
    sget v1, Lcom/android/settings/R$drawable;->alarm_volume_icon:I

    const-string v2, "alarm_volume"

    invoke-direct {p0, v2, p1, v1}, Lcom/android/settings/MiuiSoundSettings;->initVolumePreference(Ljava/lang/String;II)V

    .line 301
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->showNtfVolumeSingleControl(Landroid/content/Context;)Z

    move-result p1

    const-string/jumbo v1, "notification_volume"

    if-eqz p1, :cond_1

    .line 302
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 304
    sget p1, Lcom/android/settings/R$drawable;->notification_volume_icon:I

    invoke-direct {p0, v1, v0, p1}, Lcom/android/settings/MiuiSoundSettings;->initVolumePreference(Ljava/lang/String;II)V

    .line 305
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sound/VolumeSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeNtfPref:Lcom/android/settings/sound/VolumeSeekBarPreference;

    goto :goto_1

    .line 307
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_1
    const/4 p1, 0x3

    .line 310
    sget v0, Lcom/android/settings/R$drawable;->media_volume_icon:I

    const-string/jumbo v1, "media_volume"

    invoke-direct {p0, v1, p1, v0}, Lcom/android/settings/MiuiSoundSettings;->initVolumePreference(Ljava/lang/String;II)V

    .line 312
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->includeXiaoAi(Landroid/content/Context;)Z

    move-result p1

    const-string/jumbo v0, "voice_assist_volume"

    if-eqz p1, :cond_2

    const/16 p1, 0xb

    .line 313
    sget v1, Lcom/android/settings/R$drawable;->xiaoai_volume_icon:I

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/MiuiSoundSettings;->initVolumePreference(Ljava/lang/String;II)V

    .line 314
    sget-object p1, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 317
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    :goto_2
    const-string/jumbo p1, "sound_mode_category"

    .line 321
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundModeCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "ringer_mode_setting"

    .line 322
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeSettingPref:Landroidx/preference/CheckBoxPreference;

    .line 323
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo v0, "mute_media_sound"

    .line 324
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/CheckBoxPreference;

    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

    .line 325
    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const/4 v0, 0x0

    .line 326
    invoke-direct {p0, v0}, Lcom/android/settings/MiuiSoundSettings;->refreshMuteModeSetting(Z)V

    const-string/jumbo v1, "zen_mode_category_label"

    .line 328
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/dndmode/LabelPreference;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mZenModePef:Lcom/android/settings/dndmode/LabelPreference;

    .line 329
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshZenModeSetting()V

    const-string/jumbo v2, "ring_toyou_check"

    .line 331
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/CheckBoxPreference;

    const-string/jumbo v2, "ring_toyou"

    .line 332
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    .line 334
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->initRingToYouPreference()V

    .line 336
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-eqz v2, :cond_3

    .line 337
    invoke-virtual {v2, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 338
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/MiuiSoundSettings;->getHapticFeedbackLevelValue(Landroid/content/Context;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 339
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v2}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_3
    const-string/jumbo v2, "sms_received_sound"

    .line 342
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const-string/jumbo v3, "sms_delivered_sound"

    .line 343
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v4, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const-string v4, "calendar_sound"

    .line 344
    invoke-virtual {p0, v4}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v5

    check-cast v5, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v5, p0, Lcom/android/settings/MiuiSoundSettings;->mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const-string/jumbo v5, "notification_sound"

    .line 345
    invoke-virtual {p0, v5}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v6, p0, Lcom/android/settings/MiuiSoundSettings;->mNotificationSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    const-string v6, "alarm_ringtone"

    .line 346
    invoke-virtual {p0, v6}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v6

    check-cast v6, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object v6, p0, Lcom/android/settings/MiuiSoundSettings;->mAlarmRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 348
    iget-boolean v6, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSupportCoolSound:Z

    const/4 v7, 0x0

    if-eqz v6, :cond_4

    .line 349
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 350
    invoke-virtual {p0, v3}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 351
    invoke-virtual {p0, v4}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 352
    invoke-virtual {p0, v5}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 353
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 354
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 355
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 356
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mNotificationSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 359
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 360
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v2, :cond_5

    .line 361
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 362
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 366
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveSmsReceivedSound(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 367
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v2, :cond_6

    .line 368
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 369
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    :cond_6
    const-string v2, "audio"

    .line 373
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    iput-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    const-string/jumbo v2, "silent_mode"

    .line 374
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    const-string v3, "key_vibrate_when_silent"

    .line 375
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    const-string v3, "key_vibrate_when_ringing"

    .line 376
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/CheckBoxPreference;

    iput-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    .line 377
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 378
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 379
    iget-object v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {v3, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 381
    sget-boolean v3, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-eqz v3, :cond_7

    .line 382
    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 383
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    goto :goto_3

    .line 385
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 386
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundModeCategory:Landroidx/preference/PreferenceCategory;

    .line 387
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    .line 388
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mZenModePef:Lcom/android/settings/dndmode/LabelPreference;

    :goto_3
    const-string/jumbo p1, "vibrator"

    .line 391
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Vibrator;

    .line 392
    invoke-virtual {p1}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p1

    if-nez p1, :cond_b

    .line 393
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 394
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_8

    .line 395
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 397
    :cond_8
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_9

    .line 398
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_9
    const-string/jumbo v1, "miui_vibrate_category"

    .line 400
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    if-eqz v1, :cond_a

    .line 402
    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 404
    :cond_a
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    .line 405
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    .line 408
    :cond_b
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_c

    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_c

    .line 409
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    .line 410
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 411
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    .line 414
    :cond_c
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSystemHapticPreference:Landroidx/preference/CheckBoxPreference;

    if-eqz p1, :cond_d

    .line 415
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiSoundSettings;->isSystemHapticEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 416
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSystemHapticPreference:Landroidx/preference/CheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_d
    const-string/jumbo p1, "ringtone"

    .line 419
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/MiuiDefaultRingtonePreference;

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 420
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->hideRingtonePreference(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_e

    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz p1, :cond_e

    .line 421
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    invoke-virtual {p1, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 422
    iput-object v7, p0, Lcom/android/settings/MiuiSoundSettings;->mRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    .line 425
    :cond_e
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->initRingtoneType()V

    .line 427
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mObserver:Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->register()V

    .line 428
    new-instance p1, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p1, v1, p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;-><init>(Landroidx/preference/PreferenceScreen;Lcom/android/settings/MiuiSoundSettings;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->workSoundController:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    .line 429
    new-instance p1, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;

    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;-><init>(Landroidx/preference/PreferenceScreen;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mMiuiAlarmRingtoneController:Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;

    .line 430
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->workSoundController:Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 431
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mMiuiAlarmRingtoneController:Lcom/android/settings/sound/MiuiAlarmRingtonePreferenceController;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 434
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isIncallShowNeeded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_f

    const-string p1, "incall_show"

    .line 435
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_f

    .line 437
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 441
    :cond_f
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isMisoundShowNeeded(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_11

    const-string p1, "headset_settings"

    .line 443
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_10

    .line 445
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_10
    const-string/jumbo p1, "sound_assist_settings"

    .line 448
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_11

    .line 450
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 454
    :cond_11
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiSoundSettings;->hideRingtonePreference(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_12

    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mRingtoneCardPreference:Lcom/android/settings/sound/RingtoneCardPreference;

    if-eqz p1, :cond_12

    .line 455
    invoke-virtual {p1, v0}, Lcom/android/settings/sound/RingtoneCardPreference;->setDisable(I)V

    :cond_12
    const-string/jumbo p1, "sound_speaker_category"

    .line 458
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerCategory:Landroidx/preference/PreferenceCategory;

    const-string/jumbo p1, "sound_speaker_preference"

    .line 459
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerPreference:Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

    .line 460
    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 461
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 463
    sget-boolean p1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez p1, :cond_13

    .line 464
    new-instance p1, Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;-><init>(Lcom/android/settings/MiuiSoundSettings;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mDeviceInfoCallback:Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    .line 465
    new-instance p1, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

    invoke-direct {p1, p0, v7}, Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;-><init>(Lcom/android/settings/MiuiSoundSettings;Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn-IA;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteServiceConn:Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

    .line 466
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteServiceConn:Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

    invoke-static {p1, p0}, Lcom/android/settings/device/RemoteServiceUtil;->bindRemoteService(Landroid/content/Context;Landroid/content/ServiceConnection;)Z

    :cond_13
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 679
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 680
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/MiuiBaseController;

    .line 681
    invoke-virtual {v1}, Lcom/android/settings/utils/MiuiBaseController;->destroy()V

    goto :goto_0

    .line 683
    :cond_0
    sget-object v0, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 684
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-eqz v1, :cond_1

    .line 686
    invoke-virtual {v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sound/SeekBarVolumizer;->stop()V

    goto :goto_1

    .line 689
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 690
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 692
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    .line 693
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 695
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    .line 696
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 698
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mObserver:Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSoundSettings$SoundSettingsObserver;->unregister()V

    .line 700
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;

    if-eqz v0, :cond_7

    .line 702
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mDeviceInfoCallback:Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    if-eqz v2, :cond_6

    .line 703
    invoke-interface {v0, v2}, Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;->unregisteCallback(Lcom/android/settings/aidl/IRequestCallback;)V

    .line 704
    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mDeviceInfoCallback:Lcom/android/settings/MiuiSoundSettings$UpdateInfoCallback;

    .line 706
    :cond_6
    iput-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteService:Lcom/android/settings/aidl/IRemoteGetDeviceInfoService;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    .line 708
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 711
    :cond_7
    :goto_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteServiceConn:Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

    if-eqz v0, :cond_8

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mRemoteServiceConn:Lcom/android/settings/MiuiSoundSettings$RemoteServiceConn;

    invoke-static {v0, v2}, Lcom/android/settings/device/RemoteServiceUtil;->unBindRemoteService(Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 715
    :cond_8
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    if-eqz p0, :cond_9

    .line 716
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_9
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5

    .line 1001
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->isInCommunication()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const-string p1, "audio"

    .line 1007
    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    .line 1008
    invoke-virtual {p1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result p1

    if-eqz p1, :cond_1

    const/4 p1, 0x3

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    :goto_0
    const/16 v1, 0x18

    const/16 v2, 0x19

    const/4 v3, 0x1

    if-eq p2, v2, :cond_2

    if-ne p2, v1, :cond_5

    .line 1013
    :cond_2
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_5

    if-ne p2, v2, :cond_3

    .line 1015
    iput-boolean v3, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeDownPressed:Z

    .line 1017
    :cond_3
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mAudioManager:Landroid/media/AudioManager;

    if-ne p2, v1, :cond_4

    move p2, v3

    goto :goto_1

    :cond_4
    const/4 p2, -0x1

    :goto_1
    const p3, 0x100400

    invoke-virtual {p0, p1, p2, p3}, Landroid/media/AudioManager;->adjustStreamVolume(III)V

    return v3

    :cond_5
    if-ne p2, v2, :cond_6

    .line 1021
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result p1

    if-ne p1, v3, :cond_6

    .line 1022
    iput-boolean v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeDownPressed:Z

    :cond_6
    return v0
.end method

.method public onPause()V
    .locals 2

    .line 661
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/MiuiBaseController;

    .line 662
    invoke-virtual {v1}, Lcom/android/settings/utils/MiuiBaseController;->pause()V

    goto :goto_0

    .line 664
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 665
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 667
    invoke-super {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->onPause()V

    .line 668
    sget-object v0, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 669
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-eqz v1, :cond_1

    .line 671
    invoke-virtual {v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/sound/SeekBarVolumizer;->pause()V

    goto :goto_1

    .line 674
    :cond_2
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mHandler:Landroid/os/Handler;

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 789
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->isComputingLayout()Z

    move-result v0

    const-string v1, "MiuiSoundSettings"

    if-eqz v0, :cond_0

    const-string p0, "isComputingLayout"

    .line 790
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    .line 795
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mHapticFeedbackLevel:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-ne p1, v0, :cond_1

    .line 796
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->setHapticFeedbackLevelValue(I)V

    goto/16 :goto_0

    .line 797
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mSystemHapticPreference:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_2

    .line 798
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->setSystemHapticEnable(Landroid/content/Context;Z)V

    goto/16 :goto_0

    .line 799
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_3

    sget-boolean v0, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v0, :cond_3

    .line 800
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$SoundMode;->setSilenceModeOn(Landroid/content/Context;Z)V

    goto :goto_0

    .line 801
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_4

    if-ne p1, v0, :cond_4

    const-string/jumbo p1, "setting_sound_sring"

    .line 802
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 803
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->updateVibrateInNormalPref(Z)V

    goto :goto_0

    .line 804
    :cond_4
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v0, :cond_5

    if-ne p1, v0, :cond_5

    const-string/jumbo p1, "setting_sound_smute"

    .line 805
    invoke-static {p1, p2}, Lcom/android/settings/report/InternationalCompat;->trackReportSwitchStatus(Ljava/lang/String;Ljava/lang/Object;)V

    .line 806
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->updateVibrateInSilentPref(Z)V

    goto :goto_0

    .line 807
    :cond_5
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeSettingPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_6

    .line 808
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "mRingerModeSettingPref change, objValue : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->updateRingerModeSettingPref(Z)V

    goto :goto_0

    .line 810
    :cond_6
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mMuteMediaSoundPref:Landroidx/preference/CheckBoxPreference;

    if-ne p1, v0, :cond_7

    .line 811
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mMediaSoundSettingPref change, objValue : "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSoundSettings;->updateMuteCheckPref(Z)V

    :cond_7
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z
    .locals 3

    .line 846
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 847
    invoke-virtual {p0}, Lcom/android/settings/MiuiSoundSettings;->getName()Ljava/lang/String;

    move-result-object v0

    .line 848
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {p2}, Landroidx/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/MiuiUtils;->getResourceName(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 847
    invoke-static {v0, v1}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    :cond_0
    instance-of v0, p2, Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-eqz v0, :cond_2

    .line 853
    check-cast p2, Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    iput-object p2, p0, Lcom/android/settings/MiuiSoundSettings;->mRequestPreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 854
    invoke-virtual {p2}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result p1

    .line 855
    iget-object p2, p0, Lcom/android/settings/MiuiSoundSettings;->mRequestPreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    invoke-virtual {p2}, Landroidx/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p2

    .line 856
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0, p2, p1}, Lcom/android/settings/MiuiUtils;->isIntentActivityExistAsUser(Landroid/content/Context;Landroid/content/Intent;I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 857
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/16 v0, 0xc8

    .line 861
    invoke-static {p1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object p1

    .line 857
    invoke-virtual {p0, p2, v0, v1, p1}, Landroid/app/Activity;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 863
    :cond_1
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-direct {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget p0, Lcom/android/settings/R$string;->work_sound_permission_dialog_title:I

    .line 864
    invoke-virtual {p1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->work_sound_permission_dialog_message:I

    .line 865
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->work_sound_permission_dialog_button_text_known:I

    .line 866
    invoke-virtual {p0, p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 867
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    .line 868
    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :goto_0
    const/4 p0, 0x1

    return p0

    .line 873
    :cond_2
    invoke-super {p0, p1, p2}, Lcom/android/settings/MiuiSoundSettingsBase;->onPreferenceTreeClick(Landroidx/preference/PreferenceScreen;Landroidx/preference/Preference;)Z

    move-result p0

    return p0
.end method

.method public onResume()V
    .locals 5

    .line 600
    invoke-super {p0}, Lcom/android/settings/MiuiSoundSettingsBase;->onResume()V

    .line 601
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->setFragmentTitle()V

    .line 602
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/utils/MiuiBaseController;

    .line 603
    invoke-virtual {v1}, Lcom/android/settings/utils/MiuiBaseController;->resume()V

    goto :goto_0

    .line 605
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.media.INTERNAL_RINGER_MODE_CHANGED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v1, "android.media.VOLUME_CHANGED_ACTION"

    .line 606
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 607
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mRingerModeReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_in_silent"

    .line 610
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    const-string/jumbo v1, "vibrate_in_normal"

    .line 612
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->getNtfSingleState(Landroid/content/Context;)Z

    move-result v0

    const-string/jumbo v1, "notification_volume"

    if-nez v0, :cond_1

    .line 616
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->removePreference(Ljava/lang/String;)Z

    const/4 v0, 0x0

    .line 617
    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeNtfPref:Lcom/android/settings/sound/VolumeSeekBarPreference;

    goto :goto_2

    .line 618
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeNtfPref:Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-nez v0, :cond_4

    .line 619
    new-instance v0, Lcom/android/settings/sound/VolumeSeekBarPreference;

    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/android/settings/sound/VolumeSeekBarPreference;-><init>(Landroid/content/Context;)V

    .line 620
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 621
    sget v1, Lcom/android/settings/R$string;->notifications_label:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    const/4 v1, 0x5

    .line 622
    invoke-virtual {v0, v1}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setStream(I)V

    .line 623
    sget v1, Lcom/android/settings/R$drawable;->notification_volume_icon:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIcon(I)V

    const/4 v1, 0x1

    .line 624
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setPersistent(Z)V

    .line 625
    new-instance v2, Lcom/android/settings/sound/SeekBarVolumizer;

    invoke-direct {v2, v0}, Lcom/android/settings/sound/SeekBarVolumizer;-><init>(Lcom/android/settings/sound/VolumeSeekBarPreference;)V

    .line 626
    invoke-virtual {v0, v2}, Lcom/android/settings/sound/VolumeSeekBarPreference;->setSeekBarVolumizer(Lcom/android/settings/sound/SeekBarVolumizer;)V

    const-string v2, "alarm_volume"

    .line 627
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    if-nez v2, :cond_2

    const/4 v1, 0x4

    goto :goto_1

    .line 628
    :cond_2
    invoke-virtual {v2}, Landroidx/preference/Preference;->getOrder()I

    move-result v2

    add-int/2addr v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOrder(I)V

    const-string/jumbo v1, "volume_adjustment"

    .line 629
    invoke-virtual {p0, v1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_3

    .line 631
    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 633
    :cond_3
    iput-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mVolumeNtfPref:Lcom/android/settings/sound/VolumeSeekBarPreference;

    .line 636
    :cond_4
    :goto_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/MiuiSoundSettings;->mUserId:I

    const-string/jumbo v2, "no_adjust_volume"

    invoke-static {v0, v2, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 638
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget v3, p0, Lcom/android/settings/MiuiSoundSettings;->mUserId:I

    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    .line 640
    sget-object v2, Lcom/android/settings/MiuiSoundSettings;->mRestrictedKeyList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_5
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 641
    invoke-virtual {p0, v3}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/sound/VolumeSeekBarPreference;

    if-eqz v3, :cond_5

    .line 643
    invoke-virtual {v3}, Lcom/android/settings/sound/VolumeSeekBarPreference;->getSeekBarVolumizer()Lcom/android/settings/sound/SeekBarVolumizer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settings/sound/SeekBarVolumizer;->resume()V

    xor-int/lit8 v4, v1, 0x1

    .line 644
    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    if-nez v1, :cond_5

    .line 646
    invoke-virtual {v3, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_3

    .line 650
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->sendRefreshMsg()V

    const-string v0, "cell_broadcast_settings"

    .line 651
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/RestrictedPreference;

    if-eqz p0, :cond_7

    const-string/jumbo v0, "no_config_cell_broadcasts"

    .line 654
    invoke-virtual {p0, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    :cond_7
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 528
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 529
    invoke-virtual {p1, p0}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    const/4 p0, 0x1

    .line 530
    invoke-virtual {p1, p0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 531
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method refreshVolumeAndVibrate()V
    .locals 6

    const-string v0, "MiuiSoundSettings"

    const-string/jumbo v1, "refreshVolumeAndVibrate"

    .line 954
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 960
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mSilentModePref:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_1

    .line 961
    iget-object v2, p0, Lcom/android/settings/MiuiSoundSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 964
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    const/4 v2, 0x0

    const/4 v3, -0x3

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    .line 966
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v5, "vibrate_in_silent"

    .line 965
    invoke-static {v1, v5, v4, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 970
    iget-object v5, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenSilentPref:Landroidx/preference/CheckBoxPreference;

    if-ne v1, v4, :cond_2

    move v1, v4

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    invoke-virtual {v5, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 973
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-eqz v1, :cond_5

    .line 975
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 977
    sget-boolean v1, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    const-string/jumbo v5, "vibrate_in_normal"

    .line 974
    invoke-static {v0, v5, v1, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 979
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettings;->mVibrateWhenRingingPref:Landroidx/preference/CheckBoxPreference;

    if-ne v0, v4, :cond_4

    move v2, v4

    :cond_4
    invoke-virtual {v1, v2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 981
    :cond_5
    invoke-direct {p0, v4}, Lcom/android/settings/MiuiSoundSettings;->refreshMuteModeSetting(Z)V

    .line 982
    invoke-direct {p0}, Lcom/android/settings/MiuiSoundSettings;->refreshZenModeSetting()V

    return-void
.end method

.method protected ringtoneLookupOthers()V
    .locals 2

    .line 722
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 726
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsReceivedSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_1

    .line 727
    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 729
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mSmsDeliveredSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_2

    .line 730
    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 732
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mCalendarSoundPreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_3

    .line 733
    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    .line 735
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MiuiSoundSettings;->mAlarmRingtonePreference:Lcom/android/settings/MiuiDefaultRingtonePreference;

    if-eqz v0, :cond_4

    .line 736
    invoke-virtual {v0}, Lcom/android/settings/DefaultRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x5

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    :cond_4
    return-void
.end method

.method protected updateOthers()V
    .locals 2

    .line 742
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 746
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettingsBase;->isRingtoneViewEnable(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 747
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mRingtoneCardPreference:Lcom/android/settings/sound/RingtoneCardPreference;

    .line 748
    invoke-virtual {v1, v0}, Lcom/android/settings/sound/RingtoneCardPreference;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x7

    .line 747
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    :cond_1
    const/4 v0, 0x4

    .line 751
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSoundSettingsBase;->isRingtoneViewEnable(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 752
    iget-object v1, p0, Lcom/android/settings/MiuiSoundSettingsBase;->mRingtoneCardPreference:Lcom/android/settings/sound/RingtoneCardPreference;

    .line 753
    invoke-virtual {v1, v0}, Lcom/android/settings/sound/RingtoneCardPreference;->getUri(I)Landroid/net/Uri;

    move-result-object v0

    const/4 v1, 0x6

    .line 752
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/MiuiSoundSettingsBase;->updateRingtoneName(Landroid/net/Uri;I)V

    :cond_2
    return-void
.end method

.method public updateSoundDesc(Ljava/lang/String;)V
    .locals 6

    .line 537
    invoke-static {p1}, Lcom/android/settings/device/ParseMiShopDataUtils;->getBasicItemsArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p1, :cond_3

    .line 538
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    move v3, v2

    .line 539
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v4

    if-ge v2, v4, :cond_2

    .line 540
    invoke-static {p1, v2}, Lcom/android/settings/device/JSONUtils;->getJSONObject(Lorg/json/JSONArray;I)Lorg/json/JSONObject;

    move-result-object v4

    .line 541
    invoke-static {v4}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemIndex(Lorg/json/JSONObject;)I

    move-result v5

    if-eqz v5, :cond_1

    if-eq v5, v0, :cond_0

    goto :goto_1

    .line 547
    :cond_0
    invoke-static {v4}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemBooleanSummary(Lorg/json/JSONObject;)Z

    move-result v3

    goto :goto_1

    .line 544
    :cond_1
    invoke-static {v4}, Lcom/android/settings/device/ParseMiShopDataUtils;->getItemSummary(Lorg/json/JSONObject;)Ljava/lang/String;

    move-result-object v1

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    move v2, v3

    .line 554
    :cond_3
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerCategory:Landroidx/preference/PreferenceCategory;

    if-eqz p1, :cond_4

    .line 555
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v3, v0

    invoke-virtual {p1, v3}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 556
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerPreference:Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    xor-int/2addr v0, v3

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 557
    iget-object p1, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerPreference:Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

    invoke-virtual {p1, v2}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->setHarman(Z)V

    .line 558
    iget-object p0, p0, Lcom/android/settings/MiuiSoundSettings;->mSoundSpeakerPreference:Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;

    invoke-virtual {p0, v1}, Lcom/android/settings/soundsettings/SoundSpeakerDescPreference;->setSummary(Ljava/lang/String;)V

    :cond_4
    return-void
.end method

.method protected updateValue(Landroid/os/Message;)V
    .locals 2

    .line 268
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x7

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 273
    :cond_0
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x3

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->setRingtoneValue(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 270
    :cond_1
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/CharSequence;

    const/4 v0, 0x4

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/MiuiSoundSettingsBase;->setRingtoneValue(ILjava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
