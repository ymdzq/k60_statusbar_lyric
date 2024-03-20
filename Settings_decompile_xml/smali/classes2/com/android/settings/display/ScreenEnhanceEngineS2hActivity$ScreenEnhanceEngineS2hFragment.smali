.class public Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEnhanceEngineS2hActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEnhanceEngineS2hFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

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

    .line 66
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    sget p1, Lcom/android/settings/R$xml;->screen_enhance_engine_s2h_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 46
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->context:Landroid/content/Context;

    const-string/jumbo p1, "screen_enhance_top_view"

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const-string/jumbo p1, "screen_enhance_engine_s2h_enable"

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    const-string/jumbo p1, "screen_enhance_note_info"

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    const-string/jumbo p1, "screen_enhance_note_info_list"

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    .line 53
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    sget v0, Lcom/android/settings/R$raw;->screen_enhance_engine_s2h_video:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->addVideoView(I)V

    .line 56
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 58
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_s2h_pic_summary:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 59
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 62
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 78
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 79
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "screen_enhance_engine_s2h_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 80
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setS2hStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_1

    .line 84
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 85
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen Enhance SDR to HDR turn "

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

    const-string p1, "ScreenEnhanceS2H"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 1

    .line 71
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getS2hStatus(Landroid/content/Context;)Z

    move-result v0

    .line 73
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineS2hActivity$ScreenEnhanceEngineS2hFragment;->mEnableS2hPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
