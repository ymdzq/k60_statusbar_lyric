.class public Lcom/android/settings/notification/SilentModeAddRuleSettings;
.super Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;
.source "SilentModeAddRuleSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;-><init>()V

    return-void
.end method


# virtual methods
.method public commitRule()Z
    .locals 4

    .line 26
    new-instance v0, Landroid/service/notification/ZenModeConfig$ZenRule;

    invoke-direct {v0}, Landroid/service/notification/ZenModeConfig$ZenRule;-><init>()V

    .line 27
    invoke-virtual {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->getRuleInfo()Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;

    move-result-object v1

    .line 28
    invoke-virtual {p0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->getRuleName()Ljava/lang/String;

    move-result-object v2

    .line 29
    iput-object v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    const/4 v2, 0x1

    .line 30
    iput-boolean v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    .line 31
    iput v2, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->zenMode:I

    .line 32
    iget-object v3, v1, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;->defaultConditionId:Landroid/net/Uri;

    iput-object v3, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 33
    iget-object v1, v1, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings$RuleInfo;->serviceComponent:Landroid/content/ComponentName;

    iput-object v1, v0, Landroid/service/notification/ZenModeConfig$ZenRule;->component:Landroid/content/ComponentName;

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->createAutomaticZenRule(Landroid/service/notification/ZenModeConfig$ZenRule;)Landroid/app/AutomaticZenRule;

    move-result-object v0

    .line 36
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->addZenRule(Landroid/app/AutomaticZenRule;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method protected onCreateInternal()V
    .locals 3

    const/16 v0, 0x564

    .line 15
    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mStartTime:I

    const/16 v0, 0x1a4

    .line 16
    iput v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mEndTime:I

    .line 17
    new-instance v0, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    const/16 v1, 0x7f

    invoke-direct {v0, v1}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootDof:Lcom/android/settings/dndmode/Alarm$DaysOfWeek;

    .line 18
    iget-object v1, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mActivity:Landroid/app/Activity;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/dndmode/Alarm$DaysOfWeek;->toString(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mBootRepeatSummary:Ljava/lang/String;

    .line 19
    iput v2, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mMode:I

    .line 20
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->timed_titlei:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    iget-object v1, v1, Landroid/service/notification/ZenModeConfig;->automaticRules:Landroid/util/ArrayMap;

    .line 21
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/AutomaticZenRuleBaseSettings;->mHint:Ljava/lang/String;

    return-void
.end method
