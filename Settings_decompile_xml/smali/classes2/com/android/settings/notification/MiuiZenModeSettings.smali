.class public Lcom/android/settings/notification/MiuiZenModeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiZenModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;,
        Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;
    }
.end annotation


# instance fields
.field private isCts:Z

.field private mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

.field private mAlarmUse:Landroidx/preference/PreferenceCategory;

.field private mAutoButton:Landroidx/preference/CheckBoxPreference;

.field private mAutoTimeSetting:Lcom/android/settings/dndmode/LabelPreference;

.field private mConfig:Landroid/service/notification/ZenModeConfig;

.field private mContext:Landroid/content/Context;

.field private mDowntime:Landroidx/preference/PreferenceCategory;

.field private final mHandler:Landroid/os/Handler;

.field private mModeSwitch:Landroidx/preference/CheckBoxPreference;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRepeat:Landroidx/preference/CheckBoxPreference;

.field private mRoot:Landroidx/preference/PreferenceScreen;

.field private final mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

.field private mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

.field private mVip:Lcom/android/settings/dndmode/LabelPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetisCts(Lcom/android/settings/notification/MiuiZenModeSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->isCts:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmConfig(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/service/notification/ZenModeConfig;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmVip(Lcom/android/settings/notification/MiuiZenModeSettings;)Lcom/android/settings/dndmode/LabelPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mVip:Lcom/android/settings/dndmode/LabelPreference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhideTimeLabel(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->hideTimeLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshowTimeLabel(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->showTimeLabel()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateControls(Lcom/android/settings/notification/MiuiZenModeSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->updateControls()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 71
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mHandler:Landroid/os/Handler;

    .line 72
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->isCts:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/notification/MiuiZenModeSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method public static getCustomVipListCount(Landroid/content/Context;)I
    .locals 8

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 290
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Lmiui/provider/ExtraTelephony$Phonelist;->CONTENT_URI:Landroid/net/Uri;

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const-string p0, "count(*)"

    aput-object p0, v4, v0

    const-string/jumbo v5, "type=\'3\' and sync_dirty <> 1"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 293
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result p0

    if-eqz p0, :cond_0

    .line 294
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 300
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    return p0

    :cond_0
    if-eqz v1, :cond_1

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 297
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v1, :cond_1

    .line 300
    :goto_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_1
    return v0

    :goto_1
    if-eqz v1, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 302
    :cond_2
    throw p0
.end method

.method private hideTimeLabel()V
    .locals 1

    .line 280
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAutoTimeSetting:Lcom/android/settings/dndmode/LabelPreference;

    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private showTimeLabel()V
    .locals 4

    .line 271
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 272
    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 271
    invoke-static {v0, v1}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 273
    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 274
    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v2

    .line 273
    invoke-static {v1, v2}, Lcom/android/settings/dndmode/DoNotDisturbModeUtils;->formatTime(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v1

    .line 275
    iget-object v2, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAutoTimeSetting:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->dndm_auto_time_setting_summary:I

    filled-new-array {v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, v3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    return-void
.end method

.method private updateAlarmContent()V
    .locals 3

    .line 236
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v1, :cond_0

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_0

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_all:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_0
    if-eqz v1, :cond_1

    .line 238
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v2, :cond_1

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_1

    .line 239
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_event_and_call:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    if-nez v1, :cond_2

    .line 240
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_2

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_2

    .line 241
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_event_and_sms:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_2
    if-eqz v1, :cond_3

    .line 242
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v2, :cond_3

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_3

    .line 243
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_call_sms:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    if-nez v1, :cond_4

    .line 244
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v2, :cond_4

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-eqz v2, :cond_4

    .line 245
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_event:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    if-eqz v1, :cond_5

    .line 246
    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-nez v2, :cond_5

    iget-boolean v2, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v2, :cond_5

    .line 247
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_call:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    :cond_5
    if-nez v1, :cond_6

    .line 248
    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowMessages:Z

    if-eqz v1, :cond_6

    iget-boolean v0, v0, Landroid/service/notification/ZenModeConfig;->allowEvents:Z

    if-nez v0, :cond_6

    .line 249
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_sms:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    goto :goto_0

    .line 251
    :cond_6
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->dndm_alarm_content_not_all:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/android/settings/dndmode/LabelPreference;->setLabel(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private updateControls()V
    .locals 2

    .line 216
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mModeSwitch:Landroidx/preference/CheckBoxPreference;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/provider/MiuiSettings$AntiSpam;->isQuietModeEnable(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded mConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ZenModeSettings"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 219
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    .line 220
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 223
    :cond_0
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask-IA;)V

    iput-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 224
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 226
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->updateAlarmContent()V

    .line 228
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->showTimeLabel()V

    goto :goto_0

    .line 231
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->hideTimeLabel()V

    :goto_0
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 93
    const-class p0, Lcom/android/settings/notification/MiuiZenModeSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 99
    sget p1, Lcom/android/settings/R$xml;->zen_mode_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 100
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mPm:Landroid/content/pm/PackageManager;

    .line 102
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {p1}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->register()V

    .line 104
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    const/4 p1, 0x0

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mPm:Landroid/content/pm/PackageManager;

    const-string v1, "com.android.cts.verifier"

    invoke-virtual {v0, v1, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    const/4 v0, 0x1

    .line 108
    iput-boolean v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->isCts:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 110
    :catch_0
    iput-boolean p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->isCts:Z

    .line 113
    :goto_0
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-boolean v1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    if-eqz v1, :cond_0

    .line 115
    invoke-virtual {v0}, Landroid/service/notification/ZenModeConfig;->copy()Landroid/service/notification/ZenModeConfig;

    move-result-object v0

    .line 116
    iput-boolean p1, v0, Landroid/service/notification/ZenModeConfig;->allowCalls:Z

    .line 117
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    const-string v0, "key_do_not_disturb_mode"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mModeSwitch:Landroidx/preference/CheckBoxPreference;

    .line 122
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$1;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    const-string v0, "key_auto_setting_group"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mDowntime:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_auto_button"

    .line 134
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    .line 135
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAutoButton:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$2;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 158
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mDowntime:Landroidx/preference/PreferenceCategory;

    const-string v0, "key_auto_time_setting"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAutoTimeSetting:Lcom/android/settings/dndmode/LabelPreference;

    .line 159
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$3;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    const-string v0, "alarm_use"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmUse:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "vip"

    .line 171
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mVip:Lcom/android/settings/dndmode/LabelPreference;

    .line 172
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$4;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 183
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmUse:Landroidx/preference/PreferenceCategory;

    const-string v0, "alarm_content"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dndmode/LabelPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmContnt:Lcom/android/settings/dndmode/LabelPreference;

    .line 184
    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$5;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 197
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmUse:Landroidx/preference/PreferenceCategory;

    const-string/jumbo v0, "repeat"

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/CheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRepeat:Landroidx/preference/CheckBoxPreference;

    .line 198
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/provider/MiuiSettings$AntiSpam;->isRepeatedCallActionEnable(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 199
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRepeat:Landroidx/preference/CheckBoxPreference;

    new-instance v0, Lcom/android/settings/notification/MiuiZenModeSettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/MiuiZenModeSettings$6;-><init>(Lcom/android/settings/notification/MiuiZenModeSettings;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 207
    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->isCts:Z

    if-nez p1, :cond_1

    .line 208
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mModeSwitch:Landroidx/preference/CheckBoxPreference;

    sget v0, Lcom/android/settings/R$string;->dndm_summary_for_pad:I

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setSummary(I)V

    .line 209
    iget-object p1, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mRoot:Landroidx/preference/PreferenceScreen;

    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mAlarmUse:Landroidx/preference/PreferenceCategory;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    .line 211
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->updateControls()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 263
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 264
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mSettingsObserver:Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/notification/MiuiZenModeSettings$SettingsObserver;->unregister()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/os/AsyncTask;->isCancelled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    iget-object p0, p0, Lcom/android/settings/notification/MiuiZenModeSettings;->mUpdateVipLabelTask:Lcom/android/settings/notification/MiuiZenModeSettings$UpdateVipLabelTask;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 257
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 258
    invoke-direct {p0}, Lcom/android/settings/notification/MiuiZenModeSettings;->updateControls()V

    return-void
.end method
