.class public Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEnhanceEngineAiActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineAiActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEnhanceEngineAiFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

.field private noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

.field private topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/preference/Preference;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 70
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    sget p1, Lcom/android/settings/R$xml;->screen_enhance_engine_ai_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 45
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    const-string/jumbo p1, "screen_enhance_top_view"

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const-string/jumbo p1, "screen_enhance_engine_ai_enable"

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    const-string/jumbo p1, "screen_enhance_note_info"

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    const-string/jumbo p1, "screen_enhance_note_info_list"

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    .line 52
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    sget v0, Lcom/android/settings/R$drawable;->screen_enhance_engine_ai_image:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->addImageView(I)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 57
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_ai_pic_summary:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 58
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 59
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 61
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_ai_note:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_enhance_engine_ai_note_2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 63
    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    sget v3, Lcom/android/settings/R$string;->screen_enhance_engine_ai_note_3:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "%s%n%s%n%s"

    .line 64
    filled-new-array {p1, v1, v2}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v3, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 65
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 66
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 94
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 95
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "screen_enhance_engine_ai_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 96
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setAiStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 100
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 101
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen Enhance AI turn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    const-string/jumbo p1, "on"

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "off"

    :goto_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " failed!"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ScreenEnhanceAi"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 3

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_optimize_mode"

    sget v2, Landroid/provider/MiuiSettings$ScreenEffect;->DEFAULT_SCREEN_OPTIMIZE_MODE:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "screen effect mode is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ScreenEnhanceAi"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getAiStatus(Landroid/content/Context;)Z

    move-result v0

    .line 87
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 81
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->context:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setAiStatus(Landroid/content/Context;Z)Z

    .line 82
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 83
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineAiActivity$ScreenEnhanceEngineAiFragment;->mEnableAiPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :goto_1
    return-void
.end method
