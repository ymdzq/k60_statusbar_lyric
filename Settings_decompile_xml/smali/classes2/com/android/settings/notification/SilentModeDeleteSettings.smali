.class public Lcom/android/settings/notification/SilentModeDeleteSettings;
.super Lcom/android/settings/notification/SilentModeSettingsBase;
.source "SilentModeDeleteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;,
        Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;
    }
.end annotation


# instance fields
.field private mCategory:Landroidx/preference/PreferenceCategory;

.field private mDeletedRuleId:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mOnClickDelBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDeletedRuleId(Lcom/android/settings/notification/SilentModeDeleteSettings;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mDeletedRuleId:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mupdateControls(Lcom/android/settings/notification/SilentModeDeleteSettings;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeDeleteSettings;->updateControls()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 19
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;-><init>()V

    .line 72
    new-instance v0, Lcom/android/settings/notification/SilentModeDeleteSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SilentModeDeleteSettings$1;-><init>(Lcom/android/settings/notification/SilentModeDeleteSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mOnClickDelBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    return-void
.end method

.method private updateControls()V
    .locals 6

    .line 35
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroidx/preference/PreferenceGroup;->removeAll()V

    .line 36
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettingsBase;->mConfig:Landroid/service/notification/ZenModeConfig;

    if-nez v0, :cond_0

    return-void

    .line 37
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettingsBase;->sortedRules()[Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 38
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 39
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mDeletedRuleId:Ljava/util/List;

    aget-object v3, v0, v1

    iget-object v3, v3, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->id:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_1

    .line 42
    :cond_1
    aget-object v2, v0, v1

    iget-object v3, v2, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->id:Ljava/lang/String;

    .line 43
    iget-object v2, v2, Lcom/android/settings/notification/SilentModeSettingsBase$ZenRuleInfo;->rule:Landroid/service/notification/ZenModeConfig$ZenRule;

    .line 44
    new-instance v4, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;

    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceFragment;->getThemedContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;-><init>(Lcom/android/settings/notification/SilentModeDeleteSettings;Landroid/content/Context;)V

    .line 45
    iget-object v2, v2, Landroid/service/notification/ZenModeConfig$ZenRule;->name:Ljava/lang/String;

    invoke-virtual {v4, v3, v2}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->setData(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mOnClickDelBtnListener:Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;

    invoke-virtual {v4, v2}, Lcom/android/settings/notification/SilentModeDeleteSettings$CustomRuleItemPreference;->setOnDeleteBtnClickListener(Lcom/android/settings/notification/SilentModeDeleteSettings$OnClickDeleteBtnListener;)V

    .line 47
    iget-object v2, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2, v4}, Landroidx/preference/PreferenceGroup;->addPreference(Landroidx/preference/Preference;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public commitRules()Z
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mDeletedRuleId:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 55
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/SilentModeSettingsBase;->removeZenRule(Ljava/lang/String;)Z

    move-result v2

    or-int/2addr v1, v2

    goto :goto_0

    :cond_0
    return v1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 27
    invoke-super {p0, p1}, Lcom/android/settings/notification/SilentModeSettingsBase;->onCreate(Landroid/os/Bundle;)V

    .line 28
    sget p1, Lcom/android/settings/R$xml;->automation_rules_settings:I

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->addPreferencesFromResource(I)V

    const-string p1, "key_auto_rules"

    .line 29
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mCategory:Landroidx/preference/PreferenceCategory;

    .line 30
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeDeleteSettings;->mDeletedRuleId:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeDeleteSettings;->updateControls()V

    return-void
.end method

.method protected onZenModeChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method protected onZenModeConfigChanged()V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeDeleteSettings;->updateControls()V

    return-void
.end method
