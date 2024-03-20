.class public Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;
.super Lcom/android/settingslib/miuisettings/preference/Preference;
.source "HapticMiddleEnabledSeekBarPreference.java"

# interfaces
.implements Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;
.implements Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;
.implements Lcom/android/settings/sound/IHapticVideoPlaying;


# static fields
.field private static final VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mIsHapticVideoPlaying:Z

.field private mSeekBar:Landroid/widget/SeekBar;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 31
    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v1, 0x11

    .line 32
    invoke-virtual {v0, v1}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    sput-object v0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->VIBRATION_ATTRIBUTES:Landroid/os/VibrationAttributes;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-direct {p0, p1, v0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 47
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/miuisettings/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    sget p1, Lcom/android/settings/R$layout;->preference_haptic_middle_enabled_seekbar:I

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 42
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mContext:Landroid/content/Context;

    .line 43
    new-instance p1, Lmiui/util/HapticFeedbackUtil;

    iget-object p2, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mContext:Landroid/content/Context;

    const/4 p3, 0x1

    invoke-direct {p1, p2, p3}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object p1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    return-void
.end method

.method private boLanguageAdapter(Landroid/view/View;)V
    .locals 1

    .line 78
    sget p0, Lcom/android/settings/R$id;->haptic_max_level:I

    invoke-virtual {p1, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 79
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "bo"

    .line 80
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/16 p1, 0x12c

    .line 81
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setWidth(I)V

    const/4 p1, 0x2

    .line 82
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    const/4 p1, 0x5

    .line 83
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setGravity(I)V

    :cond_0
    return-void
.end method

.method public static getHapticLevel(Landroid/content/Context;)F
    .locals 2

    const/high16 v0, 0x3f800000    # 1.0f

    if-nez p0, :cond_0

    return v0

    .line 121
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "haptic_feedback_infinite_intensity"

    invoke-static {p0, v1, v0}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result p0

    return p0
.end method

.method private performHaptic()V
    .locals 3

    .line 98
    iget-boolean v0, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mIsHapticVideoPlaying:Z

    if-eqz v0, :cond_0

    return-void

    .line 101
    :cond_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isAlarmHapticForHapticSeekBar()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 102
    iget-object p0, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    new-instance v0, Landroid/os/VibrationAttributes$Builder;

    invoke-direct {v0}, Landroid/os/VibrationAttributes$Builder;-><init>()V

    const/16 v2, 0x11

    .line 103
    invoke-virtual {v0, v2}, Landroid/os/VibrationAttributes$Builder;->setUsage(I)Landroid/os/VibrationAttributes$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/VibrationAttributes$Builder;->build()Landroid/os/VibrationAttributes;

    move-result-object v0

    const-string/jumbo v2, "mesh_normal"

    .line 102
    invoke-virtual {p0, v0, v2, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Landroid/os/VibrationAttributes;Ljava/lang/String;Z)Z

    goto :goto_0

    .line 106
    :cond_1
    iget-object p0, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string/jumbo v0, "mesh_light"

    invoke-virtual {p0, v0, v1}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    :goto_0
    return-void
.end method


# virtual methods
.method public hasIcon()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onBindView(Landroid/view/View;)V
    .locals 3

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 57
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isMiuiSdkSupportFolme()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 58
    filled-new-array {p1}, [Landroid/view/View;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    :cond_0
    const/4 v0, 0x0

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    invoke-virtual {p1}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {p1, v0, v1, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 62
    sget v1, Lcom/android/settings/R$id;->seekbar:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;

    .line 63
    invoke-virtual {v1, v0, v0}, Lmiuix/androidbasewidget/widget/SeekBar;->setForegroundPrimaryColor(II)V

    const/16 v2, 0x64

    .line 64
    invoke-virtual {v1, v2}, Landroid/widget/SeekBar;->setMax(I)V

    .line 65
    invoke-virtual {v1, p0}, Lcom/android/settings/widget/MiuiHapticInfinitySeekBar;->setFontWeightChangeListener(Lcom/android/settings/widget/MiuiHapticInfinitySeekBar$SeekBarProgressChangeListener;)V

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->boLanguageAdapter(Landroid/view/View;)V

    const v2, 0x1020006    # @android:id/icon

    .line 68
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/sound/VolumeStreamStateView;

    .line 69
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 70
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {v1}, Landroid/widget/SeekBar;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getAlpha()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    const/4 p1, 0x1

    .line 72
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    .line 73
    iput-object v1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 74
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setHapticFeedbackEnabled(Z)V

    return-void
.end method

.method public onSeekBarProgressChange(I)V
    .locals 1

    .line 112
    iget-boolean p1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mIsHapticVideoPlaying:Z

    if-eqz p1, :cond_0

    .line 113
    iget-object p1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/sound/VibratorFeatureUtil;->getInstance(Landroid/content/Context;)Lcom/android/settings/sound/VibratorFeatureUtil;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mContext:Landroid/content/Context;

    .line 114
    invoke-static {v0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->getHapticLevel(Landroid/content/Context;)F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/sound/VibratorFeatureUtil;->setAmplitude(F)V

    .line 116
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->performHaptic()V

    return-void
.end method

.method public onSeekBarStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->performHaptic()V

    return-void
.end method

.method public onSeekBarStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0

    .line 133
    invoke-direct {p0}, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->performHaptic()V

    return-void
.end method

.method public setIsHapticVideoPlaying(Z)V
    .locals 0

    .line 89
    iput-boolean p1, p0, Lcom/android/settings/sound/HapticMiddleEnabledSeekBarPreference;->mIsHapticVideoPlaying:Z

    return-void
.end method
