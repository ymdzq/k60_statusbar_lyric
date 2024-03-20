.class public Lcom/android/settings/notification/SilentModeAutomationSettings;
.super Lcom/android/settings/notification/SilentModeSettingsBase;
.source "SilentModeAutomationSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private mActivity:Lcom/android/settings/notification/SilentModeSettings;

.field private mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

.field private final mDeleteCheckedSet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mInEditMode:Z

.field private volatile mNotNeedUpdateUI:Z

.field private mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;-><init>()V

    .line 51
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    return-void
.end method

.method private getAddRulePreference()Lcom/android/settings/notification/ZenAddRulePreference;
    .locals 2

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    if-nez v0, :cond_0

    .line 67
    new-instance v0, Lcom/android/settings/notification/ZenAddRulePreference;

    iget-object v1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    invoke-direct {v0, v1}, Lcom/android/settings/notification/ZenAddRulePreference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    const-string/jumbo v1, "zen_mode_add_automatic_rule"

    .line 68
    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    sget v1, Lcom/android/settings/R$string;->add_rule:I

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setTitle(I)V

    .line 71
    :cond_0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    return-object p0
.end method

.method public static isValidScheduleConditionId(Landroid/net/Uri;)Z
    .locals 0

    .line 110
    invoke-static {p0}, Landroid/service/notification/ZenModeConfig;->tryParseScheduleConditionId(Landroid/net/Uri;)Landroid/service/notification/ZenModeConfig$ScheduleInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private onSelectedCountChanged()V
    .locals 3

    .line 190
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    if-eqz v0, :cond_2

    .line 191
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-lez v0, :cond_1

    const-string v2, "key_auto_rules"

    .line 194
    invoke-virtual {p0, v2}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_1

    .line 196
    invoke-virtual {v2}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ne v0, v2, :cond_1

    const/4 v1, 0x1

    .line 199
    :cond_1
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/notification/SilentModeSettings;->setActionBarTitle(IZ)V

    :cond_2
    return-void
.end method

.method private updateControls()V
    .locals 12

    .line 114
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 115
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->sortedRules()[Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 117
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 118
    aget-object v2, v0, v1

    iget-object v7, v2, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->id:Ljava/lang/String;

    .line 119
    iget-object v2, v2, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 120
    iget-object v8, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->conditionId:Landroid/net/Uri;

    .line 121
    invoke-static {v8}, Lcom/android/settings/notification/SilentModeAutomationSettings;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 124
    :cond_1
    new-instance v11, Lcom/android/settings/notification/RuleItemPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v4

    iget-object v5, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    iget-boolean v6, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->enabled:Z

    move-object v3, v11

    move-object v9, p0

    move-object v10, p0

    invoke-direct/range {v3 .. v10}, Lcom/android/settings/notification/RuleItemPreference;-><init>(Landroid/content/Context;Ljava/lang/String;ZLjava/lang/String;Landroid/net/Uri;Landroid/view/View$OnClickListener;Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 126
    invoke-virtual {v11, p0}, Lcom/android/settings/notification/RuleItemPreference;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v11}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public commitRules()Z
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 260
    iput-boolean v1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mNotNeedUpdateUI:Z

    .line 261
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 262
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SilentModeSettingsBase;->removeZenRule(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    if-nez v1, :cond_1

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->onZenModeConfigChanged()V

    :cond_1
    return v1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 2

    .line 156
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    .line 160
    iput-boolean v1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mNotNeedUpdateUI:Z

    .line 161
    instance-of v1, p1, Lmiuix/slidingwidget/widget/SlidingButton;

    if-eqz v1, :cond_1

    .line 162
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/NotificationManager;->getAutomaticZenRule(Ljava/lang/String;)Landroid/app/AutomaticZenRule;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 164
    invoke-virtual {p1, p2}, Landroid/app/AutomaticZenRule;->setEnabled(Z)V

    .line 165
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/app/NotificationManager;->from(Landroid/content/Context;)Landroid/app/NotificationManager;

    move-result-object p0

    invoke-virtual {p0, v0, p1}, Landroid/app/NotificationManager;->updateAutomaticZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    goto :goto_1

    .line 167
    :cond_1
    instance-of p1, p1, Landroid/widget/CheckBox;

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 169
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 171
    :cond_2
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {p1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 173
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->onSelectedCountChanged()V

    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 133
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 134
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v1, "rule_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo p1, "mode"

    const/4 v1, 0x3

    .line 135
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 136
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 56
    invoke-super {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/notification/SilentModeSettings;

    if-eqz p1, :cond_0

    .line 58
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/notification/SilentModeSettings;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    .line 60
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->automation_rules_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "key_auto_rules"

    .line 61
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;

    const/4 p1, 0x1

    .line 62
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SilentModeAutomationSettings;->showAddRulePreference(Z)V

    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 141
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 142
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 143
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mActivity:Lcom/android/settings/notification/SilentModeSettings;

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SilentModeSettings;->startActionMode(Ljava/lang/String;)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 2

    .line 179
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/notification/SilentModeRuleSettings;

    invoke-direct {p1, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string/jumbo v0, "rule_id"

    const-string/jumbo v1, "new_rule"

    .line 180
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v0, "mode"

    const/4 v1, 0x2

    .line 181
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 182
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 1

    .line 88
    invoke-super {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->onResume()V

    .line 89
    iget-boolean v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mInEditMode:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->showAddRulePreference(Z)V

    .line 90
    iget-boolean v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mInEditMode:Z

    if-nez v0, :cond_0

    .line 91
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->updateControls()V

    :cond_0
    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 1

    .line 97
    iget-boolean v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mNotNeedUpdateUI:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mNotNeedUpdateUI:Z

    goto :goto_0

    .line 100
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->updateControls()V

    :goto_0
    return-void
.end method

.method public setEditModeAll(ZLjava/lang/String;)V
    .locals 5

    .line 235
    iput-boolean p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mInEditMode:Z

    if-nez p1, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    :cond_0
    const-string v0, "key_auto_rules"

    .line 239
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_1

    return-void

    .line 243
    :cond_1
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x1

    if-ge v1, v0, :cond_3

    .line 245
    iget-object v3, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v3, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Lcom/android/settings/notification/RuleItemPreference;

    if-eqz p2, :cond_2

    .line 246
    invoke-virtual {v3}, Lcom/android/settings/notification/RuleItemPreference;->getRuleId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 247
    invoke-virtual {v3, v2}, Lcom/android/settings/notification/RuleItemPreference;->setIsSelected(Z)V

    .line 248
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {v2, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 250
    :cond_2
    invoke-virtual {v3, p1}, Lcom/android/settings/notification/RuleItemPreference;->setEditMode(Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 253
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->onSelectedCountChanged()V

    xor-int/2addr p1, v2

    .line 254
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SilentModeAutomationSettings;->showAddRulePreference(Z)V

    return-void
.end method

.method public setSelectedAll(Z)V
    .locals 4

    const-string v0, "key_auto_rules"

    .line 210
    invoke-virtual {p0, v0}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    if-nez v0, :cond_0

    return-void

    .line 214
    :cond_0
    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 216
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mSilentModRulesCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceGroup;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/android/settings/notification/RuleItemPreference;

    .line 217
    invoke-virtual {v2, p1}, Lcom/android/settings/notification/RuleItemPreference;->setSelected(Z)V

    if-eqz p1, :cond_1

    .line 219
    iget-object v3, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-virtual {v2}, Lcom/android/settings/notification/RuleItemPreference;->getRuleId()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    .line 223
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mDeleteCheckedSet:Ljava/util/Set;

    invoke-interface {p1}, Ljava/util/Set;->clear()V

    .line 225
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->onSelectedCountChanged()V

    return-void
.end method

.method public showAddRulePreference(Z)V
    .locals 2

    .line 75
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const-string/jumbo v1, "zen_mode_add_automatic_rule"

    .line 76
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/ZenAddRulePreference;

    if-eqz p1, :cond_0

    if-nez v1, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeAutomationSettings;->getAddRulePreference()Lcom/android/settings/notification/ZenAddRulePreference;

    .line 79
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    invoke-virtual {v0, p1}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    .line 80
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeAutomationSettings;->mAdd:Lcom/android/settings/notification/ZenAddRulePreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_0

    :cond_0
    if-nez p1, :cond_1

    if-eqz v1, :cond_1

    .line 82
    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method
