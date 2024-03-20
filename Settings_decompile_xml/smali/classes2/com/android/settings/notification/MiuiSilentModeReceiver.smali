.class public Lcom/android/settings/notification/MiuiSilentModeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MiuiSilentModeReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private addRule(Landroid/content/Context;)Z
    .locals 1

    .line 97
    invoke-static {p1}, Lcom/android/settings/notification/SilentModeUtils;->createAutoZenRuleFromDND(Landroid/content/Context;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 98
    invoke-direct {p0, v0, p1}, Lcom/android/settings/notification/MiuiSilentModeReceiver;->addZenRule(Landroid/app/AutomaticZenRule;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private addZenRule(Landroid/app/AutomaticZenRule;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    const-string p0, "MiuiSilentModeReceiver"

    .line 104
    :try_start_0
    invoke-static {p2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/NotificationManager;->addAutomaticZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p1

    .line 106
    invoke-static {p2}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p2

    .line 107
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 110
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Exception : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 17

    move-object/from16 v0, p1

    .line 27
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    .line 28
    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 30
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "SILENT_MODE_FOR_MIUI9"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_b

    .line 31
    sget-boolean v5, Landroid/provider/MiuiSettings$SilenceMode;->isSupported:Z

    if-nez v5, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v5, "config silent mode"

    const-string v6, "MiuiSilentModeReceiver"

    .line 34
    invoke-static {v6, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v5, ""

    const/4 v7, 0x0

    const/4 v8, 0x3

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v9, :cond_2

    if-eq v1, v4, :cond_6

    move v8, v1

    goto/16 :goto_6

    :cond_1
    const-string v10, "audio"

    .line 38
    invoke-virtual {v0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/media/AudioManager;

    .line 39
    invoke-virtual {v10, v4}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 40
    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setQuietMode(Landroid/content/Context;Z)V

    .line 41
    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$AntiSpam;->setRepeatedCallActionEnable(Landroid/content/Context;Z)V

    .line 42
    invoke-static {v0, v3}, Landroid/provider/MiuiSettings$SilenceMode;->enableVIPMode(Landroid/content/Context;Z)V

    .line 43
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v3

    const-string v4, "android"

    invoke-virtual {v3, v4}, Landroid/app/NotificationManager;->removeAutomaticZenRules(Ljava/lang/String;)Z

    .line 44
    invoke-static/range {p1 .. p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 45
    iput v9, v3, Landroid/service/notification/ZenModeConfig;->allowCallsFrom:I

    .line 46
    iput v9, v3, Landroid/service/notification/ZenModeConfig;->allowMessagesFrom:I

    .line 47
    invoke-static {v0, v3}, Landroid/app/ExtraNotificationManager;->setZenModeConfig(Landroid/content/Context;Landroid/service/notification/ZenModeConfig;)Z

    .line 49
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/notification/MiuiSilentModeReceiver;->addRule(Landroid/content/Context;)Z

    .line 52
    :cond_2
    invoke-static/range {p1 .. p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 54
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    if-eqz v4, :cond_4

    .line 55
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v4, v8, :cond_3

    move v4, v9

    goto :goto_0

    :cond_3
    move v4, v8

    .line 56
    :goto_0
    invoke-static {v0, v4, v7}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 60
    :cond_4
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 61
    iget v10, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v10, v9, :cond_5

    move v10, v8

    goto :goto_2

    :cond_5
    move v10, v9

    :goto_2
    iput v10, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 63
    new-instance v10, Landroid/app/AutomaticZenRule;

    iget-object v12, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v13, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v14, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget v11, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 64
    invoke-static {v11}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v15

    iget-boolean v11, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    move/from16 v16, v11

    move-object v11, v10

    invoke-direct/range {v11 .. v16}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 65
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v11

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v11, v4, v10}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    goto :goto_1

    .line 71
    :cond_6
    invoke-static/range {p1 .. p1}, Landroid/app/ExtraNotificationManager;->getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;

    move-result-object v3

    .line 73
    iget-object v4, v3, Landroid/service/notification/ZenModeConfig;->manualRule:Landroid/service/notification/ZenModeConfig$ZenRule;

    const/4 v10, 0x4

    if-eqz v4, :cond_8

    .line 74
    iget v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v4, v8, :cond_7

    move v4, v10

    goto :goto_3

    :cond_7
    move v4, v9

    .line 75
    :goto_3
    invoke-static {v0, v4, v7}, Landroid/provider/MiuiSettings$SilenceMode;->setSilenceMode(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 79
    :cond_8
    iget-object v3, v3, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    invoke-virtual {v3}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_4
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 80
    iget v7, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    if-ne v7, v9, :cond_9

    move v7, v9

    goto :goto_5

    :cond_9
    move v7, v10

    :goto_5
    iput v7, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 82
    new-instance v7, Landroid/app/AutomaticZenRule;

    iget-object v12, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-object v13, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    iget-object v14, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    iget v11, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 83
    invoke-static {v11}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v15

    iget-boolean v11, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    move/from16 v16, v11

    move-object v11, v7

    invoke-direct/range {v11 .. v16}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    .line 84
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-static/range {p1 .. p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object v11

    iget-object v4, v4, Landroid/service/notification/ZenModeConfig$ZenRule;->id:Ljava/lang/String;

    invoke-virtual {v11, v4, v7}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    goto :goto_4

    :cond_a
    :goto_6
    if-eq v8, v1, :cond_b

    .line 91
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v2, v8}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    nop

    :cond_b
    :goto_7
    return-void
.end method
