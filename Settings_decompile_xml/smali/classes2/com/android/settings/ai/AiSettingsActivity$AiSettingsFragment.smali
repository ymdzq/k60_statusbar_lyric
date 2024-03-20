.class public Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AiSettingsActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/AiSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AiSettingsFragment"
.end annotation


# instance fields
.field private mClickPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

.field private mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 17
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "key_click_task"

    .line 27
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mClickPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 28
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 29
    iget-object p1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mClickPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string p1, "key_long_task"

    .line 31
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 32
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 33
    iget-object p1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    const-string p1, "key_double_task"

    .line 35
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iput-object p1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 36
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    .line 37
    iget-object p0, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 43
    sget p1, Lcom/android/settings/R$xml;->ai_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/android/settings/ai/AiSettingsSubActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne v1, p1, :cond_0

    const-string p1, "key_long_press_down_ai_button_settings"

    goto :goto_0

    .line 95
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne v1, p1, :cond_1

    const-string p1, "key_double_click_ai_button_settings"

    goto :goto_0

    :cond_1
    const-string p1, "key_single_click_ai_button_settings"

    :goto_0
    const-string/jumbo v1, "type"

    .line 100
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 101
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 0

    .line 48
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->updateValues()V

    return-void
.end method

.method public updateValues()V
    .locals 12

    const-string v0, "key_single_click_ai_button_settings"

    const-string v1, "key_long_press_down_ai_button_settings"

    const-string v2, "key_double_click_ai_button_settings"

    .line 53
    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v3

    .line 57
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/android/settings/R$array;->ai_key_item_name:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move v6, v5

    :goto_0
    const/4 v7, 0x3

    if-ge v6, v7, :cond_9

    .line 58
    aget-object v7, v3, v6

    .line 60
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v8

    .line 59
    invoke-static {v8, v7}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->getPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;

    move-result-object v8

    .line 61
    iget-object v9, v8, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_5

    move v9, v5

    :goto_1
    const/16 v10, 0x8

    if-ge v9, v10, :cond_1

    .line 63
    iget-object v10, v8, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    aget-object v11, v4, v9

    invoke-static {v10, v11}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 64
    iput v9, v8, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    goto :goto_2

    :cond_0
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 68
    :cond_1
    :goto_2
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 69
    iget-object v9, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mClickPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v10, v8, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 70
    :cond_2
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 71
    iget-object v9, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v10, v8, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_3

    .line 72
    :cond_3
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 73
    iget-object v9, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget-object v10, v8, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    invoke-virtual {v9, v10}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 75
    :cond_4
    :goto_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v9

    invoke-static {v9, v7, v8}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->setPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/ai/AiSettingsItem;)V

    goto :goto_4

    .line 77
    :cond_5
    invoke-static {v7, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 78
    iget-object v7, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mClickPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget v8, v8, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 79
    :cond_6
    invoke-static {v7, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 80
    iget-object v7, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mLongTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget v8, v8, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_4

    .line 81
    :cond_7
    invoke-static {v7, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_8

    .line 82
    iget-object v7, p0, Lcom/android/settings/ai/AiSettingsActivity$AiSettingsFragment;->mDoubleTaskPref:Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    iget v8, v8, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    aget-object v8, v4, v8

    invoke-virtual {v7, v8}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    :cond_8
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto/16 :goto_0

    :cond_9
    return-void
.end method
