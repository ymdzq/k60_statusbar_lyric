.class public Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;
.super Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;
.source "ZenRuleVisEffectsAllPreferenceController.java"


# instance fields
.field private mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;


# direct methods
.method public static synthetic $r8$lambda$AyHj9epGK1yd-yGs3QCbGAt9XhE(Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;->lambda$displayPreference$0(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p3, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    return-void
.end method

.method private synthetic lambda$displayPreference$0(Lcom/android/settingslib/widget/SelectorWithWidgetPreference;)V
    .locals 3

    .line 48
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const/16 v1, 0x643

    .line 49
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    filled-new-array {v1}, [Landroid/util/Pair;

    move-result-object v1

    const/16 v2, 0x574

    .line 48
    invoke-virtual {p1, v0, v2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 50
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    new-instance v0, Landroid/service/notification/ZenPolicy$Builder;

    iget-object v1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {v1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/service/notification/ZenPolicy$Builder;-><init>(Landroid/service/notification/ZenPolicy;)V

    .line 51
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->showAllVisualEffects()Landroid/service/notification/ZenPolicy$Builder;

    move-result-object v0

    .line 52
    invoke-virtual {v0}, Landroid/service/notification/ZenPolicy$Builder;->build()Landroid/service/notification/ZenPolicy;

    move-result-object v0

    .line 50
    invoke-virtual {p1, v0}, Landroid/app/AutomaticZenRule;->setZenPolicy(Landroid/service/notification/ZenPolicy;)V

    .line 53
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->mBackend:Lcom/android/settings/notification/zen/ZenModeBackend;

    iget-object v0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p1, v0, p0}, Lcom/android/settings/notification/zen/ZenModeBackend;->updateZenRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/notification/zen/AbstractZenModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iput-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    .line 47
    new-instance v0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/SelectorWithWidgetPreference;->setOnClickListener(Lcom/android/settingslib/widget/SelectorWithWidgetPreference$OnClickListener;)V

    return-void
.end method

.method public bridge synthetic isAvailable()Z
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public bridge synthetic onResume()V
    .locals 0

    .line 32
    invoke-super {p0}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->onResume()V

    return-void
.end method

.method public bridge synthetic setIdAndRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V
    .locals 0

    .line 32
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->setIdAndRule(Ljava/lang/String;Landroid/app/AutomaticZenRule;)V

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mId:Ljava/lang/String;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/zen/ZenRuleVisEffectsAllPreferenceController;->mPreference:Lcom/android/settingslib/widget/SelectorWithWidgetPreference;

    iget-object p0, p0, Lcom/android/settings/notification/zen/AbstractZenCustomRulePreferenceController;->mRule:Landroid/app/AutomaticZenRule;

    invoke-virtual {p0}, Landroid/app/AutomaticZenRule;->getZenPolicy()Landroid/service/notification/ZenPolicy;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/notification/ZenPolicy;->shouldShowAllVisualEffects()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    :goto_0
    return-void
.end method
