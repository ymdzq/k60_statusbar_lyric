.class public Lcom/android/settings/display/PaperProtectionFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PaperProtectionFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final EYECARE_MAX_LEVEL:I

.field private static final EYECARE_MIN_LEVEL:I

.field private static final PAPER_MODE_MAX_LEVEL:I

.field private static final PAPER_MODE_MIN_LEVEL:F

.field private static final PER_LEVEL:F

.field private static final PER_TEXTURE_LEVEL:F


# instance fields
.field private colorTypePreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

.field private hintPreference:Lcom/android/settings/widget/PaperModeTipPreference;

.field private mAtuoAdjustState:Z

.field private mPaperModeEnableObserver:Landroid/database/ContentObserver;

.field private mPaperModeLevel:I

.field private mTextureLevel:I

.field private paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

.field private resetPreference:Landroidx/preference/Preference;

.field private texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;


# direct methods
.method static bridge synthetic -$$Nest$mrefreshPreferenceState(Lcom/android/settings/display/PaperProtectionFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->refreshPreferenceState()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 36
    sget v0, Landroid/provider/MiuiSettings$ScreenEffect;->PAPER_MODE_MAX_LEVEL:I

    sput v0, Lcom/android/settings/display/PaperProtectionFragment;->PAPER_MODE_MAX_LEVEL:I

    const-string/jumbo v1, "paper_mode_min_level"

    const/high16 v2, 0x3f800000    # 1.0f

    .line 37
    invoke-static {v1, v2}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    sput v1, Lcom/android/settings/display/PaperProtectionFragment;->PAPER_MODE_MIN_LEVEL:F

    int-to-float v0, v0

    sub-float/2addr v0, v1

    const/high16 v1, 0x447a0000    # 1000.0f

    div-float/2addr v0, v1

    .line 39
    sput v0, Lcom/android/settings/display/PaperProtectionFragment;->PER_LEVEL:F

    const-string/jumbo v0, "paper_eyecare_max_texture"

    const/16 v2, 0x19

    .line 40
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/settings/display/PaperProtectionFragment;->EYECARE_MAX_LEVEL:I

    const-string/jumbo v2, "paper_eyecare_min_texture"

    const/4 v3, 0x0

    .line 41
    invoke-static {v2, v3}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v2

    sput v2, Lcom/android/settings/display/PaperProtectionFragment;->EYECARE_MIN_LEVEL:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    div-float/2addr v0, v1

    .line 43
    sput v0, Lcom/android/settings/display/PaperProtectionFragment;->PER_TEXTURE_LEVEL:F

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 55
    new-instance v0, Lcom/android/settings/display/PaperProtectionFragment$1;

    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->getUiThreadHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/PaperProtectionFragment$1;-><init>(Lcom/android/settings/display/PaperProtectionFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private getPaperEyeCareLevel()I
    .locals 2

    .line 158
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_texture_eyecare_level"

    sget v1, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_EYECARE_LEVEL:I

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getPaperModeLevel()I
    .locals 2

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    sget v0, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_MODE_LEVEL:F

    float-to-int v0, v0

    const-string/jumbo v1, "screen_paper_texture_level"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private getTextureColorType()I
    .locals 3

    .line 214
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_texture_color_type"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 216
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget v1, Lcom/android/settings/R$array;->paper_color_index:I

    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object p0

    array-length p0, p0

    if-ge v0, p0, :cond_1

    if-gez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v0

    goto :goto_1

    .line 218
    :cond_1
    :goto_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getTextureColorType: ArrayIndexOutOfBounds index="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "PaperProtectionFragment"

    invoke-static {v0, p0}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return v2
.end method

.method private refreshPreferenceState()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 112
    :cond_0
    invoke-static {v0}, Lcom/android/settings/display/PaperModeFragment;->isPaperModeEnable(Landroid/content/Context;)Z

    move-result v0

    .line 113
    iget-object v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 114
    iget-object v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 115
    iget-object v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->colorTypePreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 116
    iget-object p0, p0, Lcom/android/settings/display/PaperProtectionFragment;->resetPreference:Landroidx/preference/Preference;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    return-void
.end method

.method private resetDefault()V
    .locals 4

    .line 226
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mAtuoAdjustState:Z

    if-nez v0, :cond_1

    .line 227
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    sget v1, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_MODE_LEVEL:F

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->PAPER_MODE_MIN_LEVEL:F

    sub-float v2, v1, v2

    sget v3, Lcom/android/settings/display/PaperProtectionFragment;->PER_LEVEL:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "screen_paper_texture_level"

    float-to-int v1, v1

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    sget v1, Lcom/android/settings/display/util/PaperConstants;->DEFAULT_TEXTURE_EYECARE_LEVEL:I

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->EYECARE_MIN_LEVEL:I

    sub-int v2, v1, v2

    int-to-float v2, v2

    sget v3, Lcom/android/settings/display/PaperProtectionFragment;->PER_TEXTURE_LEVEL:F

    div-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 232
    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->colorTypePreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 233
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "screen_texture_eyecare_level"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 235
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_texture_color_type"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setEyeCareLevel(I)V
    .locals 2

    .line 199
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getPaperEyeCareLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 200
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "previous level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getPaperEyeCareLevel()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", new level "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "setEyeCareLevel "

    invoke-static {v1, v0}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 201
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_texture_eyecare_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setPaperModeLevel(I)V
    .locals 1

    .line 192
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getPaperModeLevel()I

    move-result v0

    if-eq p1, v0, :cond_0

    .line 193
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_paper_texture_level"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    :cond_0
    return-void
.end method

.method private setTextureColorType(I)V
    .locals 1

    .line 207
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 210
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "screen_texture_color_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private updatePreference()V
    .locals 2

    .line 98
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mAtuoAdjustState:Z

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->supportSmartEyeCare()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->hintPreference:Lcom/android/settings/widget/PaperModeTipPreference;

    if-eqz v0, :cond_1

    .line 102
    iget-boolean v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mAtuoAdjustState:Z

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 104
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSecondSpace(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    if-eqz v0, :cond_2

    .line 105
    invoke-virtual {p0}, Landroidx/preference/PreferenceFragmentCompat;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {v0, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 65
    sget p1, Lcom/android/settings/R$xml;->paper_protection_mode:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string p1, "adjust_paper_mode"

    .line 67
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/display/TemperatureSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/16 v0, 0x3e8

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 71
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "adjust_paper_texture"

    .line 72
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/MiuiSeekBarPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    .line 73
    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setMax(I)V

    .line 74
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SeekBarPreference;->setContinuousUpdates(Z)V

    .line 75
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string/jumbo p1, "paper_color"

    .line 77
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->colorTypePreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 78
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    const-string/jumbo p1, "paper_reset"

    .line 79
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->resetPreference:Landroidx/preference/Preference;

    .line 80
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    const-string p1, "hint_unadjustable"

    .line 81
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/PaperModeTipPreference;

    iput-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->hintPreference:Lcom/android/settings/widget/PaperModeTipPreference;

    .line 82
    sget v0, Lcom/android/settings/R$string;->hint_unadjustable_text:I

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/Preference;->setTitle(I)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->hintPreference:Lcom/android/settings/widget/PaperModeTipPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setVisible(Z)V

    .line 85
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v2, "screen_auto_adjust"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mAtuoAdjustState:Z

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 165
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string v0, "adjust_paper_texture"

    .line 166
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    .line 167
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 168
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "eyecare_level"

    invoke-static {v0, p2}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 169
    sget p2, Lcom/android/settings/display/PaperProtectionFragment;->PER_TEXTURE_LEVEL:F

    mul-float/2addr p1, p2

    sget p2, Lcom/android/settings/display/PaperProtectionFragment;->EYECARE_MIN_LEVEL:I

    int-to-float p2, p2

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mTextureLevel:I

    .line 170
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperProtectionFragment;->setEyeCareLevel(I)V

    goto :goto_0

    :cond_0
    const-string v0, "adjust_paper_mode"

    .line 171
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 172
    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 173
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string/jumbo v0, "temp_mode_level"

    invoke-static {v0, p2}, Lmiuix/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    int-to-float p1, p1

    .line 174
    sget p2, Lcom/android/settings/display/PaperProtectionFragment;->PER_LEVEL:F

    mul-float/2addr p1, p2

    sget p2, Lcom/android/settings/display/PaperProtectionFragment;->PAPER_MODE_MIN_LEVEL:F

    add-float/2addr p1, p2

    float-to-int p1, p1

    iput p1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeLevel:I

    .line 175
    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperProtectionFragment;->setPaperModeLevel(I)V

    goto :goto_0

    :cond_1
    const-string/jumbo v0, "paper_color"

    .line 176
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 177
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/display/PaperProtectionFragment;->setTextureColorType(I)V

    :cond_2
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 1

    .line 184
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "paper_reset"

    .line 185
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 186
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->resetDefault()V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onResume()V
    .locals 3

    .line 136
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 138
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getPaperModeLevel()I

    move-result v0

    .line 139
    iget v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeLevel:I

    if-eqz v1, :cond_0

    if-eq v0, v1, :cond_1

    .line 140
    :cond_0
    iput v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeLevel:I

    .line 141
    iget-object v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->paperTempPreference:Lcom/android/settings/display/TemperatureSeekBarPreference;

    int-to-float v0, v0

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->PAPER_MODE_MIN_LEVEL:F

    sub-float/2addr v0, v2

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->PER_LEVEL:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 143
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getPaperEyeCareLevel()I

    move-result v0

    .line 144
    iget v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->mTextureLevel:I

    if-eqz v1, :cond_2

    if-eq v0, v1, :cond_3

    .line 145
    :cond_2
    iput v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mTextureLevel:I

    .line 146
    iget-object v1, p0, Lcom/android/settings/display/PaperProtectionFragment;->texturePreference:Lcom/android/settings/widget/MiuiSeekBarPreference;

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->EYECARE_MIN_LEVEL:I

    sub-int/2addr v0, v2

    int-to-float v0, v0

    sget v2, Lcom/android/settings/display/PaperProtectionFragment;->PER_TEXTURE_LEVEL:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SeekBarPreference;->setProgress(I)V

    .line 148
    :cond_3
    iget-object v0, p0, Lcom/android/settings/display/PaperProtectionFragment;->colorTypePreference:Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->getTextureColorType()I

    move-result p0

    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    return-void
.end method

.method public onStart()V
    .locals 3

    .line 121
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 122
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->refreshPreferenceState()V

    .line 123
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_paper_mode_enabled"

    .line 124
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const/4 v2, 0x0

    iget-object p0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    .line 123
    invoke-virtual {v0, v1, v2, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 130
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->onStop()V

    .line 131
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/display/PaperProtectionFragment;->mPaperModeEnableObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 92
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 93
    invoke-direct {p0}, Lcom/android/settings/display/PaperProtectionFragment;->updatePreference()V

    return-void
.end method
