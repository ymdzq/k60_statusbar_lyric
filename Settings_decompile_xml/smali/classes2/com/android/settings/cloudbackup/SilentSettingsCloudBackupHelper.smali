.class Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;
.super Ljava/lang/Object;
.source "SilentSettingsCloudBackupHelper.java"


# static fields
.field private static ANDROID_VERSION_O:I = 0x1a

.field private static mBackupAndroidVerion:I

.field private static mCurrentAndroidVerion:I

.field private static mDebug:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    sput v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mCurrentAndroidVerion:I

    const/4 v0, 0x0

    .line 53
    sput-boolean v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    return-void
.end method

.method protected static createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;
    .locals 11

    .line 203
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v2, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v3, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->configurationActivity:Landroid/content/ComponentName;

    iget-object v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget-object v5, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenPolicy:Landroid/service/notification/ZenPolicy;

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 205
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    iget-boolean v7, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    iget-wide v8, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;Landroid/net/Uri;Landroid/service/notification/ZenPolicy;IZJ)V

    return-object v10
.end method

.method private static getRules(Landroid/service/notification/ZenModeConfig$ZenRule;)Lorg/json/JSONArray;
    .locals 6

    .line 115
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 117
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 119
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 121
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 123
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 125
    :cond_0
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 128
    :goto_0
    iget v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 130
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v1, :cond_1

    invoke-static {v1}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_2

    .line 132
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 133
    iget-object v4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    invoke-static {v4}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->toDayList([I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 134
    iget v4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 135
    iget v4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 136
    iget v4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 137
    iget v4, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 138
    iget-boolean v1, v1, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    goto :goto_2

    .line 140
    :cond_2
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 143
    :goto_2
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    if-eqz v1, :cond_3

    .line 144
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    goto :goto_3

    .line 147
    :cond_3
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 150
    :goto_3
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_4

    .line 151
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 152
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_4

    .line 155
    :cond_4
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 158
    :goto_4
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 159
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 160
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_5

    .line 162
    :cond_5
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 165
    :goto_5
    iget-wide v4, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    invoke-virtual {v0, v4, v5}, Lorg/json/JSONArray;->put(J)Lorg/json/JSONArray;

    .line 167
    sget v1, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mCurrentAndroidVerion:I

    sget v4, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->ANDROID_VERSION_O:I

    if-lt v1, v4, :cond_7

    .line 168
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 169
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 170
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_6

    .line 172
    :cond_6
    invoke-virtual {v0, v3}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 176
    :cond_7
    :goto_6
    sget-boolean p0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    if-eqz p0, :cond_8

    .line 177
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "miui-audio: getRules volumes "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "SettingsBackup"

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    return-object v0
.end method

.method private static getTimeMute(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    .line 183
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 185
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    .line 186
    iget-object v1, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 187
    iget-object p0, p0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 188
    invoke-static {v1}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->getRules(Landroid/service/notification/ZenModeConfig$ZenRule;)Lorg/json/JSONArray;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method private static getVipLists(Landroid/content/Context;)Lorg/json/JSONArray;
    .locals 2

    .line 56
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    .line 57
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    .line 59
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(Z)Lorg/json/JSONArray;

    .line 60
    iget-boolean v1, p0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v1, :cond_0

    .line 61
    iget v1, p0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    invoke-virtual {v0, v1}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    .line 62
    iget p0, p0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    invoke-virtual {v0, p0}, Lorg/json/JSONArray;->put(I)Lorg/json/JSONArray;

    :cond_0
    return-object v0
.end method

.method private static isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z
    .locals 1

    if-eqz p0, :cond_0

    .line 278
    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    invoke-static {v0}, Landroid/provider/Settings$Global;->isValidZenMode(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    if-eqz v0, :cond_0

    iget-object p0, p0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static parseRule(Landroid/content/Context;Lorg/json/JSONArray;)I
    .locals 7

    .line 210
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    const/4 v1, 0x0

    .line 213
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 215
    iput-boolean v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->snoozing:Z

    .line 216
    invoke-virtual {p1, v3}, Lorg/json/JSONArray;->optInt(I)I

    const/4 v1, 0x0

    .line 220
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x2

    .line 221
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    const/4 v4, 0x3

    if-ne v2, v3, :cond_1

    .line 222
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v4, 0x4

    :cond_1
    add-int/lit8 v2, v4, 0x1

    .line 225
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    iput v4, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 227
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    add-int/lit8 v4, v2, 0x1

    .line 228
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    if-ne v2, v3, :cond_2

    .line 229
    new-instance v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v2}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    add-int/lit8 v5, v4, 0x1

    .line 230
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    const-string v6, "\\."

    invoke-static {v4, v6}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v4

    iput-object v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    add-int/lit8 v4, v5, 0x1

    .line 231
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    iput v5, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    add-int/lit8 v5, v4, 0x1

    .line 232
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    add-int/lit8 v4, v5, 0x1

    .line 233
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optInt(I)I

    move-result v5

    iput v5, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    add-int/lit8 v5, v4, 0x1

    .line 234
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    iput v4, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    add-int/lit8 v4, v5, 0x1

    .line 235
    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v5

    iput-boolean v5, v2, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 237
    invoke-static {v2}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 240
    :cond_2
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->condition:Landroid/service/notification/Condition;

    add-int/lit8 v2, v4, 0x1

    .line 241
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    .line 245
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    add-int/lit8 v4, v2, 0x1

    .line 246
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    if-ne v2, v3, :cond_3

    .line 247
    new-instance v2, Landroid/content/ComponentName;

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v4

    add-int/lit8 v6, v5, 0x1

    invoke-virtual {p1, v5}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    move v4, v6

    .line 250
    :cond_3
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    add-int/lit8 v2, v4, 0x1

    .line 251
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v4

    if-ne v4, v3, :cond_4

    add-int/lit8 v4, v2, 0x1

    .line 252
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    move v2, v4

    :cond_4
    add-int/lit8 v4, v2, 0x1

    .line 255
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->optLong(I)J

    move-result-wide v5

    iput-wide v5, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->creationTime:J

    .line 257
    sget v2, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mBackupAndroidVerion:I

    sget v5, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->ANDROID_VERSION_O:I

    if-lt v2, v5, :cond_6

    .line 258
    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    add-int/lit8 v1, v4, 0x1

    .line 259
    invoke-virtual {p1, v4}, Lorg/json/JSONArray;->optInt(I)I

    move-result v2

    if-ne v2, v3, :cond_5

    add-int/lit8 v4, v1, 0x1

    .line 260
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabler:Ljava/lang/String;

    goto :goto_1

    :cond_5
    move v4, v1

    .line 264
    :cond_6
    :goto_1
    sget-boolean v1, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    const-string v2, "SettingsBackup"

    if-eqz v1, :cond_7

    .line 265
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miui-audio: parseRule "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_7
    invoke-static {v0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->isValidAutomaticRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 269
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-static {v0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    goto :goto_2

    .line 271
    :cond_8
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to restore auto zen rule "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return v4
.end method

.method public static removeCurrentRules(Landroid/content/Context;)V
    .locals 3

    .line 195
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 196
    iget-object v0, v0, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/app/NotificationManager;->removeAutomaticZenRule(Ljava/lang/String;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method static restoreFromCloud(Landroid/content/Context;Lorg/json/JSONObject;)V
    .locals 6

    if-eqz p1, :cond_4

    const-string v0, "debug.backup.silent_settings"

    const/4 v1, 0x0

    .line 350
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    .line 352
    sget v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mCurrentAndroidVerion:I

    sget v2, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->ANDROID_VERSION_O:I

    if-lt v0, v2, :cond_0

    const-string v0, "key_android_version"

    .line 353
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mBackupAndroidVerion:I

    .line 356
    :cond_0
    sget-boolean v0, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    const-string v2, "SettingsBackup"

    if-eqz v0, :cond_1

    .line 357
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "miui-audio: restoreFromCloud from version "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget v3, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mBackupAndroidVerion:I

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    const-string v0, "key_silent_mode"

    .line 360
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 361
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$SoundMode;->setSilenceModeOn(Landroid/content/Context;Z)V

    const-string v0, "key_zen_mode"

    .line 363
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 364
    invoke-static {p0, v0, v2}, Landroid/provider/MiuiSettings$SoundMode;->setZenModeOn(Landroid/content/Context;ZLjava/lang/String;)V

    const-string v0, "key_vip_list"

    .line 366
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->setVipLists(Landroid/content/Context;Lorg/json/JSONArray;)V

    const-string v0, "key_repeat"

    .line 368
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 369
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    const-string v0, "key_mute_music"

    .line 371
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 373
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x1

    if-lez v0, :cond_2

    move v0, v3

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    const-string/jumbo v4, "mute_music_at_silent"

    const/4 v5, -0x3

    .line 372
    invoke-static {v2, v4, v0, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "key_popup_window"

    .line 378
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    .line 380
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-lez v0, :cond_3

    move v1, v3

    :cond_3
    const-string/jumbo v0, "show_notification"

    .line 379
    invoke-static {v2, v0, v1, v5}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    const-string v0, "key_timing_mute"

    .line 385
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->restoreTimeMute(Landroid/content/Context;Lorg/json/JSONArray;)V

    :cond_4
    return-void
.end method

.method private static restoreTimeMute(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 7

    .line 283
    invoke-static {p0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->removeCurrentRules(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 287
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    .line 288
    sget-boolean v2, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    const-string v3, "SettingsBackup"

    if-eqz v2, :cond_0

    .line 289
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "miui-audio: restoreTimeMute ruleNum "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " volumes "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ge v0, v1, :cond_1

    add-int/lit8 v4, v2, 0x1

    .line 294
    :try_start_0
    invoke-virtual {p1, v2}, Lorg/json/JSONArray;->getJSONArray(I)Lorg/json/JSONArray;

    move-result-object v2

    invoke-static {p0, v2}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->parseRule(Landroid/content/Context;Lorg/json/JSONArray;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    .line 296
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "miui-audio: parseRule "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-static {}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException()V

    :goto_1
    add-int/lit8 v0, v0, 0x1

    move v2, v4

    goto :goto_0

    :cond_1
    return-void
.end method

.method static saveToCloud(Landroid/content/Context;)Lorg/json/JSONObject;
    .locals 6

    .line 303
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "debug.backup.silent_settings"

    const/4 v2, 0x0

    .line 305
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    sput-boolean v1, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mDebug:Z

    const-string v2, "SettingsBackup"

    if-eqz v1, :cond_0

    const-string/jumbo v1, "miui-audio: saveToCloud start"

    .line 307
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    :cond_0
    :try_start_0
    sget v1, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->mCurrentAndroidVerion:I

    sget v3, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->ANDROID_VERSION_O:I

    if-lt v1, v3, :cond_1

    const-string v3, "key_android_version"

    .line 312
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 315
    :cond_1
    invoke-static {p0}, Landroid/provider/MiuiSettings$SoundMode;->isSilenceModeOn(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "key_silent_mode"

    .line 316
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 318
    invoke-static {p0}, Landroid/provider/MiuiSettings$SoundMode;->isZenModeOn(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "key_zen_mode"

    .line 319
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string v1, "key_vip_list"

    .line 321
    invoke-static {p0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->getVipLists(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v1

    const-string v3, "key_repeat"

    .line 324
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 327
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "mute_music_at_silent"

    const/4 v4, -0x3

    const/4 v5, 0x1

    .line 326
    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v3, "key_mute_music"

    .line 331
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 334
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v3, "show_notification"

    .line 333
    invoke-static {v1, v3, v5, v4}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    const-string v3, "key_popup_window"

    .line 338
    invoke-virtual {v0, v3, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "key_timing_mute"

    .line 340
    invoke-static {p0}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->getTimeMute(Landroid/content/Context;)Lorg/json/JSONArray;

    move-result-object p0

    invoke-virtual {v0, v1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string/jumbo v1, "miui-audio: SilentSettings build json error:"

    .line 342
    invoke-static {v2, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 343
    invoke-static {}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException()V

    :goto_0
    return-object v0
.end method

.method private static setVipLists(Landroid/content/Context;Lorg/json/JSONArray;)V
    .locals 2

    const/4 v0, 0x0

    .line 69
    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->optBoolean(I)Z

    move-result v0

    .line 70
    invoke-static {p0, v0}, Landroid/provider/MiuiSettings$SilenceMode;->enableVIPMode(Landroid/content/Context;Z)V

    if-eqz v0, :cond_0

    .line 73
    invoke-static {p0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    const/4 v1, 0x1

    .line 74
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result v1

    iput v1, v0, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    const/4 v1, 0x2

    .line 75
    invoke-virtual {p1, v1}, Lorg/json/JSONArray;->optInt(I)I

    move-result p1

    iput p1, v0, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 76
    invoke-static {p0, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    :cond_0
    return-void
.end method

.method private static toDayList([I)Ljava/lang/String;
    .locals 3

    if-eqz p0, :cond_3

    .line 81
    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_1

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v1, 0x0

    .line 83
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_2

    if-lez v1, :cond_1

    const/16 v2, 0x2e

    .line 84
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 85
    :cond_1
    aget v2, p0, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 87
    :cond_2
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    :goto_1
    const-string p0, ""

    return-object p0
.end method

.method private static tryParseDayList(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 104
    array-length p1, p0

    if-nez p1, :cond_1

    return-object v0

    .line 105
    :cond_1
    array-length p1, p0

    new-array p1, p1, [I

    const/4 v1, 0x0

    .line 106
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_3

    .line 107
    aget-object v2, p0, v1

    const/4 v3, -0x1

    invoke-static {v2, v3}, Lcom/android/settings/cloudbackup/SilentSettingsCloudBackupHelper;->tryParseInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v3, :cond_2

    return-object v0

    .line 109
    :cond_2
    aput v2, p1, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object p1
.end method

.method private static tryParseInt(Ljava/lang/String;I)I
    .locals 2

    .line 91
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return p1

    .line 93
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    :catch_0
    move-exception p0

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "miui-audio: tryParseInt fail "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/NumberFormatException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "SettingsBackup"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, "NumberFormatException"

    .line 96
    invoke-static {p0}, Lcom/android/settings/cloudbackup/CloudBackupException;->trackException(Ljava/lang/String;)V

    return p1
.end method
