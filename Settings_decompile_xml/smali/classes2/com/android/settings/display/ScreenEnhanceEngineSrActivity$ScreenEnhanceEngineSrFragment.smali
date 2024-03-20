.class public Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEnhanceEngineSrActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineSrActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEnhanceEngineSrFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

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

    .line 79
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 47
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 48
    sget p1, Lcom/android/settings/R$xml;->screen_enhance_engine_sr_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 49
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    const-string/jumbo p1, "screen_enhance_top_view"

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const-string/jumbo p1, "screen_enhance_note_info"

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    const-string/jumbo p1, "screen_enhance_note_info_list"

    .line 52
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    const-string/jumbo p1, "screen_enhance_engine_sr_for_video"

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 55
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 56
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    const-string/jumbo p1, "screen_enhance_engine_sr_for_image"

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    .line 61
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 62
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result p1

    if-nez p1, :cond_1

    .line 63
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 66
    :cond_1
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    sget v1, Lcom/android/settings/R$raw;->screen_enhance_engine_sr_video:I

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->addVideoView(I)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_sr_pic_summary_video_only:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 70
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 73
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_sr_note:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 74
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 75
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 99
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 100
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "screen_enhance_engine_sr_for_video"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, " failed!"

    const-string/jumbo v2, "on"

    const-string/jumbo v3, "off"

    const-string v4, "ScreenEnhanceSr"

    if-eqz v0, :cond_2

    .line 101
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setSrForVideoStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 104
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen Enhance SR for video turn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 108
    :cond_2
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "screen_enhance_engine_sr_for_image"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 109
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setSrForImageStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 110
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 113
    :cond_3
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 114
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen Enhance SR for image turn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v2, v3

    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 2

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 86
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForVideoSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getSrForVideoStatus(Landroid/content/Context;)Z

    move-result v0

    .line 88
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForVideoPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 91
    :cond_0
    invoke-static {}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->isSrForImageSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getSrForImageStatus(Landroid/content/Context;)Z

    move-result v0

    .line 93
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineSrActivity$ScreenEnhanceEngineSrFragment;->mEnableSrForImagePref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    :cond_1
    return-void
.end method
