.class public Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenEnhanceEngineMemcActivity.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScreenEnhanceEngineMemcFragment"
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private handler:Landroid/os/Handler;

.field private mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

.field private noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

.field private noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

.field observer:Landroid/database/ContentObserver;

.field private topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;


# direct methods
.method static bridge synthetic -$$Nest$fgetcontext(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgethandler(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->handler:Landroid/os/Handler;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 34
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$1;-><init>(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->handler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$2;

    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->handler:Landroid/os/Handler;

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment$2;-><init>(Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->observer:Landroid/database/ContentObserver;

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

    .line 114
    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    sget p1, Lcom/android/settings/R$xml;->screen_enhance_engine_memc_settings:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    const-string/jumbo p1, "screen_enhance_top_view"

    .line 92
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const-string/jumbo p1, "screen_enhance_engine_memc_enable"

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/CustomCheckBoxPreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    const-string/jumbo p1, "screen_enhance_note_info"

    .line 94
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    const-string/jumbo p1, "screen_enhance_note_info_list"

    .line 95
    invoke-direct {p0, p1}, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->findPreferenceImpl(Ljava/lang/String;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    iput-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    .line 97
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 99
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    sget v0, Lcom/android/settings/R$raw;->screen_enhance_engine_memc_video:I

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;->addVideoView(I)V

    .line 100
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->topViewPref:Lcom/android/settings/widget/ScreenEnhanceEngineTopPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_memc_pic_summary:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    sget v1, Lcom/android/settings/R$string;->screen_enhance_engine_memc_note_1:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 107
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->screen_enhance_engine_memc_note_2:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    filled-new-array {v2}, [Ljava/lang/Object;

    move-result-object v2

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s%n%s"

    .line 108
    filled-new-array {p1, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 109
    iget-object v1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;->setNoteInfo(Ljava/lang/String;)V

    .line 110
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->noteInfoListPref:Lcom/android/settings/widget/ScreenEnhanceEngineNotePreference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 137
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 138
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "screen_enhance_engine_memc_enable"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    .line 139
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiUtils;->hasExtremeAudioAndVideo(Landroid/content/Context;)Z

    move-result p1

    const-string v0, " failed!"

    const-string/jumbo v1, "on"

    const-string/jumbo v2, "off"

    const-string v3, "ScreenEnhanceMem"

    if-eqz p1, :cond_2

    .line 141
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/MiuiUtils;->setExtremeAudioAndVideoStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 142
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 144
    :cond_0
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 145
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "ExtremeAudioAndVideo turn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 150
    :cond_2
    iget-object p1, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->setMemcStatus(Landroid/content/Context;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 151
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_2

    .line 153
    :cond_3
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    xor-int/lit8 p1, p2, 0x1

    invoke-virtual {p0, p1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 154
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "Screen Enhance MEMC turn "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p2, :cond_4

    goto :goto_1

    :cond_4
    move-object v1, v2

    :goto_1
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    :goto_2
    const/4 p0, 0x1

    return p0
.end method

.method public onStart()V
    .locals 6

    .line 119
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->hasExtremeAudioAndVideo(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->getExtremeAudioAndVideoStatus(Landroid/content/Context;)Z

    move-result v0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "POWER_SAVE_MODE_OPEN"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->observer:Landroid/database/ContentObserver;

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "POWER_PERFORMANCE_MODE_OPEN"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "power_supersave_mode_open"

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->observer:Landroid/database/ContentObserver;

    invoke-virtual {v2, v3, v5, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 127
    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    iget-object v3, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->getPowerModeOpenStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->getPowerSaveModeOpenStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settings/utils/SettingsFeatures;->getSuperSavePowerModeOpenStatus(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    :cond_0
    move v1, v5

    :goto_0
    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 129
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->context:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/display/ScreenEnhanceEngineStatusCheck;->getMemcStatus(Landroid/content/Context;)Z

    move-result v0

    .line 130
    iget-object v2, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {v2, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 132
    :goto_1
    iget-object p0, p0, Lcom/android/settings/display/ScreenEnhanceEngineMemcActivity$ScreenEnhanceEngineMemcFragment;->mEnableMemcPref:Lcom/android/settings/widget/CustomCheckBoxPreference;

    invoke-virtual {p0, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
