.class public Lcom/android/settings/notification/SilentModeUtils;
.super Ljava/lang/Object;
.source "SilentModeUtils.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createAutoZenRuleFromDND(Landroid/content/Context;)Landroid/app/AutomaticZenRule;
    .locals 8

    .line 80
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getStartTimeForQuietMode(Landroid/content/Context;)I

    move-result v0

    .line 81
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getEndTimeForQuietMode(Landroid/content/Context;)I

    move-result v1

    .line 82
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->getQuietRepeatType(Landroid/content/Context;)I

    move-result v2

    invoke-static {v2}, Lcom/android/settings/notification/SilentModeUtils;->parseDays(I)[Z

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/notification/SilentModeUtils;->getDaysArray([Z)[I

    move-result-object v2

    .line 83
    invoke-static {v0, v1, v2}, Lcom/android/settings/notification/SilentModeUtils;->getRuleInfoFromDND(II[I)Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;

    move-result-object v0

    .line 84
    sget v1, Lcom/android/settings/R$string;->default_rule_name:I

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 86
    new-instance v1, Landroid/app/AutomaticZenRule;

    iget-object v4, v0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iget-object v5, v0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    const/4 v0, 0x1

    .line 87
    invoke-static {v0}, Landroid/app/NotificationManager;->zenModeToInterruptionFilter(I)I

    move-result v6

    .line 88
    invoke-static {p0}, Landroid/provider/MiuiSettings$AntiSpam;->isAutoTimerOfQuietModeEnable(Landroid/content/Context;)Z

    move-result v7

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Landroid/app/AutomaticZenRule;-><init>(Ljava/lang/String;Landroid/content/ComponentName;Landroid/net/Uri;IZ)V

    return-object v1
.end method

.method public static getDaysArray([Z)[I
    .locals 4

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 35
    :goto_0
    array-length v3, p0

    if-ge v2, v3, :cond_1

    .line 36
    aget-boolean v3, p0, v2

    if-eqz v3, :cond_0

    add-int/lit8 v3, v2, 0x1

    .line 37
    rem-int/lit8 v3, v3, 0x7

    add-int/lit8 v3, v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 41
    :cond_1
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [I

    .line 44
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    add-int/lit8 v3, v1, 0x1

    .line 45
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    aput v2, p0, v1

    move v1, v3

    goto :goto_1

    :cond_2
    return-object p0
.end method

.method public static getRuleInfoFromDND(II[I)Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;
    .locals 1

    .line 19
    new-instance v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ScheduleInfo;-><init>()V

    .line 20
    iput-object p2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->days:[I

    .line 21
    div-int/lit8 p2, p0, 0x3c

    iput p2, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startHour:I

    .line 22
    rem-int/lit8 p0, p0, 0x3c

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->startMinute:I

    .line 23
    div-int/lit8 p0, p1, 0x3c

    iput p0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endHour:I

    .line 24
    rem-int/lit8 p1, p1, 0x3c

    iput p1, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->endMinute:I

    const/4 p0, 0x0

    .line 25
    iput-boolean p0, v0, Landroid/service/notification/ZenModeConfig$ScheduleInfo;->exitAtAlarm:Z

    .line 26
    new-instance p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;

    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;-><init>()V

    const-string p1, "SilentModeRuleSettings"

    .line 27
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;->settingsAction:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Landroid/service/notification/ZenModeConfig;->toScheduleConditionId(Landroid/service/notification/ZenModeConfig$ScheduleInfo;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    .line 29
    invoke-static {}, Landroid/service/notification/ZenModeConfig;->getScheduleConditionProvider()Landroid/content/ComponentName;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeRuleBaseSettings$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    return-object p0
.end method

.method public static getZenModeConfig(Landroid/content/Context;)Landroid/service/notification/ZenModeConfig;
    .locals 0

    .line 76
    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/NotificationManager;->getZenModeConfig()Landroid/service/notification/ZenModeConfig;

    move-result-object p0

    return-object p0
.end method

.method public static parseDays([I)I
    .locals 7

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    :cond_0
    move v1, v0

    .line 65
    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_2

    .line 66
    aget v2, p0, v0

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    add-int/lit8 v1, v1, 0x40

    goto :goto_1

    :cond_1
    int-to-double v3, v1

    add-int/lit8 v2, v2, -0x2

    int-to-double v1, v2

    const-wide/high16 v5, 0x4000000000000000L    # 2.0

    .line 70
    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v1

    add-double/2addr v3, v1

    double-to-int v1, v3

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    return v1
.end method

.method public static parseDays(I)[Z
    .locals 5

    const/4 v0, 0x7

    new-array v1, v0, [Z

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    const/4 v3, 0x1

    shl-int v4, v3, v2

    and-int/2addr v4, p0

    if-eqz v4, :cond_0

    .line 54
    aput-boolean v3, v1, v2

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v1
.end method
