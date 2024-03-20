.class public Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;
.super Lcom/android/settings/utils/MiuiBaseController;
.source "MiuiWorkSoundPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$UnifyWorkDialogFragment;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/utils/MiuiBaseController<",
        "Landroidx/preference/PreferenceGroup;",
        ">;",
        "Lcom/android/settings/core/PreferenceControllerMixin;"
    }
.end annotation


# instance fields
.field private mHelper:Lcom/android/settings/notification/AudioHelper;

.field private mManagedProfileId:I

.field private final mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

.field private final mParent:Lcom/android/settings/MiuiSoundSettings;

.field private mUserManager:Landroid/os/UserManager;

.field private mVoiceCapable:Z

.field private mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

.field private mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

.field private mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

.field private mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

.field private mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;


# direct methods
.method public static synthetic $r8$lambda$2W9Q8q7g7MtauBwkXJCqzjvrgpM(Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->lambda$updateWorkPreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroidx/preference/PreferenceScreen;Lcom/android/settings/MiuiSoundSettings;)V
    .locals 0

    .line 76
    invoke-direct {p0, p1}, Lcom/android/settings/utils/MiuiBaseController;-><init>(Landroidx/preference/PreferenceScreen;)V

    .line 339
    new-instance p1, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$1;-><init>(Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    .line 77
    iput-object p2, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mParent:Lcom/android/settings/MiuiSoundSettings;

    return-void
.end method

.method private disableWorkSync()V
    .locals 4

    .line 291
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    const-string/jumbo v3, "sync_parent_sounds"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 293
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->disableWorkSyncSettings()V

    return-void
.end method

.method private disableWorkSyncSettings()V
    .locals 2

    .line 297
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 298
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 301
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 303
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateWorkRingtoneSummaries()V

    return-void
.end method

.method private enableWorkSyncSettings()V
    .locals 2

    .line 281
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 283
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-eqz v0, :cond_0

    .line 284
    sget v1, Lcom/android/settings/R$string;->work_sound_same_as_personal:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 286
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    sget v1, Lcom/android/settings/R$string;->work_sound_same_as_personal:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    .line 287
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setSummary(I)V

    return-void
.end method

.method private getManagedProfileContext()Landroid/content/Context;
    .locals 2

    .line 196
    iget v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 199
    :cond_0
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private static getManagedProfileContext(ILcom/android/settings/notification/AudioHelper;)Landroid/content/Context;
    .locals 1

    const/16 v0, -0x2710

    if-ne p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 138
    :cond_0
    invoke-virtual {p1, p0}, Lcom/android/settings/notification/AudioHelper;->createPackageContextAsUser(I)Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method private initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/sound/MiuiWorkRingtonePreference;
    .locals 0

    .line 208
    invoke-virtual {p1, p2}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-eqz p1, :cond_0

    .line 213
    iget p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    invoke-virtual {p1, p0}, Lcom/android/settings/RingtonePreference;->setUserId(I)V

    :cond_0
    return-object p1
.end method

.method public static isSearchAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 126
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 127
    new-instance v1, Lcom/android/settings/notification/AudioHelper;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p0

    .line 129
    invoke-static {p0, v1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext(ILcom/android/settings/notification/AudioHelper;)Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 130
    invoke-virtual {v1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p0

    const/16 v0, -0x2710

    if-eq p0, v0, :cond_0

    .line 131
    invoke-static {v1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->shouldShowRingtoneSettings(Lcom/android/settings/notification/AudioHelper;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private synthetic lambda$updateWorkPreferences$0(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 234
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 235
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mParent:Lcom/android/settings/MiuiSoundSettings;

    invoke-static {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$UnifyWorkDialogFragment;->show(Lcom/android/settings/MiuiSoundSettings;)V

    const/4 p0, 0x0

    return p0

    .line 238
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->disableWorkSync()V

    const/4 p0, 0x1

    return p0
.end method

.method private shouldShowRingtoneSettings()Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private static shouldShowRingtoneSettings(Lcom/android/settings/notification/AudioHelper;)Z
    .locals 0

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/notification/AudioHelper;->isSingleVolume()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private updateRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;
    .locals 3

    if-eqz p1, :cond_1

    .line 184
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/content/Context;->getUserId()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/notification/AudioHelper;->isUserUnlocked(Landroid/os/UserManager;I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x1

    .line 191
    invoke-static {p1, p2, p0}, Landroid/media/ExtraRingtone;->getRingtoneTitle(Landroid/content/Context;Landroid/net/Uri;Z)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 185
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->managed_profile_not_available_label:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private updateWorkPreferences()V
    .locals 4

    .line 219
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    if-nez v0, :cond_0

    return-void

    .line 222
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    .line 225
    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    if-nez v0, :cond_1

    return-void

    .line 230
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    if-nez v0, :cond_2

    .line 231
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v1, "work_use_personal_sounds"

    .line 232
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/TwoStatePreference;

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkUsePersonalSounds:Landroidx/preference/TwoStatePreference;

    .line 233
    new-instance v1, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;)V

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 243
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-nez v0, :cond_3

    .line 244
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v1, "work_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-nez v0, :cond_4

    .line 248
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v1, "work_notification_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-nez v0, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    const-string/jumbo v1, "work_alarm_ringtone"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->initWorkPreference(Landroidx/preference/PreferenceGroup;Ljava/lang/String;)Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 255
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mVoiceCapable:Z

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 258
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    const/4 v0, 0x0

    .line 259
    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 262
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 264
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "sync_parent_sounds"

    iget v3, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    invoke-static {v0, v2, v1, v3}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_7

    .line 266
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->enableWorkSyncSettings()V

    goto :goto_0

    .line 268
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->disableWorkSyncSettings()V

    :cond_8
    :goto_0
    return-void
.end method

.method private updateWorkRingtoneSummaries()V
    .locals 3

    .line 307
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    .line 309
    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPhoneRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    if-eqz v1, :cond_0

    .line 313
    invoke-virtual {v1}, Lcom/android/settings/sound/MiuiWorkRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 310
    invoke-virtual {v1, v2}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 315
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkNotificationRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 318
    invoke-virtual {v1}, Lcom/android/settings/sound/MiuiWorkRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 315
    invoke-virtual {v1, v2}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 319
    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkAlarmRingtonePreference:Lcom/android/settings/sound/MiuiWorkRingtonePreference;

    .line 322
    invoke-virtual {v1}, Lcom/android/settings/sound/MiuiWorkRingtonePreference;->getUri()Landroid/net/Uri;

    move-result-object v2

    invoke-direct {p0, v0, v2}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateRingtoneName(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 319
    invoke-virtual {v1, p0}, Lcom/android/settings/MiuiDefaultRingtonePreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    const-string/jumbo v0, "sound_work_settings_section"

    .line 89
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mWorkPreferenceCategory:Landroidx/preference/PreferenceGroup;

    if-eqz p1, :cond_0

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->isAvailable()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;->setVisible(Landroidx/preference/Preference;Z)V

    :cond_0
    return-void
.end method

.method public enableWorkSync()V
    .locals 4

    .line 275
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x1

    iget v2, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    const-string/jumbo v3, "sync_parent_sounds"

    invoke-static {v0, v3, v1, v2}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 277
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->enableWorkSyncSettings()V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "sound_work_settings_section"

    return-object p0
.end method

.method public handlePreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isAvailable()Z
    .locals 2

    .line 120
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->getManagedProfileContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    .line 122
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->shouldShowRingtoneSettings()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected onAttach()V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 83
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mVoiceCapable:Z

    .line 84
    new-instance v0, Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/AudioHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    return-void
.end method

.method public onManagedProfileAdded(I)V
    .locals 2

    .line 326
    iget v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    const/16 v1, -0x2710

    if-ne v0, v1, :cond_0

    .line 327
    iput p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    .line 328
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateWorkPreferences()V

    :cond_0
    return-void
.end method

.method public onManagedProfileRemoved(I)V
    .locals 1

    .line 333
    iget v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    if-ne v0, p1, :cond_0

    .line 334
    iget-object p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1, v0}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    .line 335
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateWorkPreferences()V

    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object p0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 99
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.intent.action.MANAGED_PROFILE_ADDED"

    .line 100
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.MANAGED_PROFILE_REMOVED"

    .line 101
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 104
    iget-object v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mHelper:Lcom/android/settings/notification/AudioHelper;

    iget-object v1, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/AudioHelper;->getManagedProfileId(Landroid/os/UserManager;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->mManagedProfileId:I

    .line 105
    invoke-direct {p0}, Lcom/android/settings/sound/MiuiWorkSoundPreferenceController;->updateWorkPreferences()V

    return-void
.end method
