.class Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;
.super Ljava/lang/Object;
.source "SoundAndVibrateCloudBackupHelper.java"


# direct methods
.method static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 4

    if-eqz p1, :cond_1

    .line 127
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "locked_only_enabled"

    const/4 v2, -0x1

    .line 128
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v2, :cond_0

    const-string/jumbo v2, "zen_mode_intercepted_when_unlocked"

    .line 130
    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    const-string/jumbo v1, "vibrate_in_silent"

    const/4 v2, 0x1

    .line 132
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 133
    invoke-static {p0, v1}, Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;->updateVibrateInSilent(Landroid/content/Context;I)V

    .line 134
    sget-boolean v1, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    const-string/jumbo v3, "vibrate_when_ringing"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 135
    invoke-static {p0, v1}, Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;->updateVibrateInNormal(Landroid/content/Context;I)V

    const-string v1, "dtmf_tone"

    .line 136
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 137
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string/jumbo v1, "sound_effects_enabled"

    .line 138
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 139
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "lockscreen_sounds_enabled"

    .line 140
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 141
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "haptic_feedback_enabled"

    .line 142
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 143
    invoke-static {v0, v1, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 144
    sget v1, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    const-string v3, "haptic_feedback_level"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    .line 145
    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string v1, "delete_sound_effect_enabled"

    .line 146
    invoke-static {}, Lmiui/settings/commonlib/SoundDefaultValueUtil;->getDeleteSoundEffectDefaultValue()Z

    move-result v3

    invoke-virtual {p1, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "delete_sound_effect"

    .line 147
    invoke-static {v0, v3, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    .line 148
    invoke-static {}, Lmiui/settings/commonlib/SoundDefaultValueUtil;->getAppDeleteSoundEffectDefaultValue()Z

    move-result v1

    const-string v3, "launcher_app_delete_sound_effect"

    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 149
    invoke-static {v0, v3, v1}, Landroid/provider/MiuiSettings$System;->putBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    const-string/jumbo v1, "power_sounds_enabled"

    .line 150
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    .line 151
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 152
    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->showNtfVolumeSingleControl(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "android.settings.NOTIFICATION_SINGLE_CONTROL_STATE"

    const/4 v1, 0x0

    .line 153
    invoke-virtual {p1, v0, v1}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result p1

    .line 154
    invoke-static {p0, p1}, Lcom/android/settings/cloudbackup/SoundAndVibrateCloudBackupHelper;->updateNtfSingleState(Landroid/content/Context;I)V

    :cond_1
    return-void
.end method

.method static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 16

    const-string v0, "android.settings.NOTIFICATION_SINGLE_CONTROL_STATE"

    const-string/jumbo v1, "power_sounds_enabled"

    const-string v2, "launcher_app_delete_sound_effect"

    const-string v3, "haptic_feedback_level"

    const-string v4, "haptic_feedback_enabled"

    const-string v5, "lockscreen_sounds_enabled"

    const-string/jumbo v6, "sound_effects_enabled"

    const-string v7, "dtmf_tone"

    const-string/jumbo v8, "vibrate_in_silent"

    .line 66
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 67
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10}, Lorg/json/JSONObject;-><init>()V

    .line 69
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const-string/jumbo v12, "zen_mode_intercepted_when_unlocked"

    const/4 v13, -0x1

    invoke-static {v11, v12, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    const-string v12, "locked_only_enabled"

    .line 71
    invoke-virtual {v10, v12, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 73
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v11

    const/4 v12, -0x3

    const/4 v13, 0x1

    .line 72
    invoke-static {v11, v8, v13, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v11

    .line 77
    invoke-virtual {v10, v8, v11}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 79
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v8

    const-string/jumbo v11, "vibrate_in_normal"

    .line 81
    sget-boolean v14, Landroid/provider/MiuiSettings$System;->VIBRATE_IN_NORMAL_DEFAULT:Z

    const/4 v15, 0x0

    if-eqz v14, :cond_0

    move v14, v13

    goto :goto_0

    :cond_0
    move v14, v15

    .line 78
    :goto_0
    invoke-static {v8, v11, v14, v12}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v8

    const-string/jumbo v11, "vibrate_when_ringing"

    .line 83
    invoke-virtual {v10, v11, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 84
    invoke-static {v9, v7, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v8

    if-eqz v8, :cond_1

    move v8, v13

    goto :goto_1

    :cond_1
    move v8, v15

    .line 85
    :goto_1
    invoke-virtual {v10, v7, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 86
    invoke-static {v9, v6, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_2

    move v7, v13

    goto :goto_2

    :cond_2
    move v7, v15

    .line 87
    :goto_2
    invoke-virtual {v10, v6, v7}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 88
    invoke-static {v9, v5, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v6

    if-eqz v6, :cond_3

    move v6, v13

    goto :goto_3

    :cond_3
    move v6, v15

    .line 89
    :goto_3
    invoke-virtual {v10, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 90
    invoke-static {v9, v4, v13}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_4

    move v5, v13

    goto :goto_4

    :cond_4
    move v5, v15

    .line 91
    :goto_4
    invoke-virtual {v10, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 92
    sget v4, Landroid/provider/MiuiSettings$System;->HAPTIC_FEEDBACK_LEVEL_DEFAULT:I

    invoke-static {v9, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 94
    invoke-virtual {v10, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v3, "delete_sound_effect"

    .line 96
    invoke-static {}, Lmiui/settings/commonlib/SoundDefaultValueUtil;->getDeleteSoundEffectDefaultValue()Z

    move-result v4

    .line 95
    invoke-static {v9, v3, v4}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "delete_sound_effect_enabled"

    .line 97
    invoke-virtual {v10, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 99
    invoke-static {}, Lmiui/settings/commonlib/SoundDefaultValueUtil;->getAppDeleteSoundEffectDefaultValue()Z

    move-result v3

    .line 98
    invoke-static {v9, v2, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    .line 100
    invoke-virtual {v10, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 101
    invoke-static {v9, v1, v13}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 102
    invoke-virtual {v10, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 103
    invoke-static/range {p0 .. p0}, Lcom/android/settings/utils/SettingsFeatures;->showNtfVolumeSingleControl(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-static/range {p0 .. p0}, Lcom/android/settings/utils/SettingsFeatures;->isHideRingtoneCall(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 104
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, -0x2

    invoke-static {v1, v0, v15, v2}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    .line 106
    invoke-virtual {v10, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    const-string v1, "SettingsBackup"

    const-string v2, "build json error:"

    .line 119
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 120
    invoke-static {}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException()V

    :cond_5
    :goto_5
    return-object v10
.end method

.method private static updateNtfSingleState(Landroid/content/Context;I)V
    .locals 1

    const-string v0, "audio"

    .line 192
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const-string/jumbo p1, "notification_single_control=true"

    goto :goto_0

    :cond_0
    const-string/jumbo p1, "notification_single_control=false"

    .line 194
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    return-void
.end method

.method private static updateVibrateInNormal(Landroid/content/Context;I)V
    .locals 3

    .line 184
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_in_normal"

    const/4 v2, -0x3

    .line 183
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 188
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "vibrate_when_ringing"

    .line 187
    invoke-static {p0, v0, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method private static updateVibrateInSilent(Landroid/content/Context;I)V
    .locals 3

    .line 171
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "vibrate_in_silent"

    const/4 v2, -0x3

    .line 170
    invoke-static {v0, v1, p1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "audio"

    .line 175
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/media/AudioManager;

    .line 176
    invoke-virtual {p0}, Landroid/media/AudioManager;->getRingerModeInternal()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 178
    :goto_0
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->setRingerModeInternal(I)V

    :cond_1
    return-void
.end method
