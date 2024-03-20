.class public Lcom/android/settings/display/MiuiNightModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MiuiNightModePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final IS_OLED:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string/jumbo v0, "ro.vendor.display.type"

    const-string v1, "lcd"

    .line 43
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "oled"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string/jumbo v0, "ro.display.type"

    .line 44
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/display/MiuiNightModePreferenceController;->IS_OLED:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private updateSummary(Landroidx/preference/Preference;)V
    .locals 2

    .line 68
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 70
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    sget v1, Lcom/android/settings/R$string;->screen_paper_mode_turn_on:I

    goto :goto_0

    :cond_0
    sget v1, Lcom/android/settings/R$string;->screen_paper_mode_turn_off:I

    .line 70
    :goto_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    .line 72
    sget-boolean v0, Lcom/android/settings/display/MiuiNightModePreferenceController;->IS_OLED:Z

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->dark_color_summary_oled:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 73
    :cond_1
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v0, Lcom/android/settings/R$string;->dark_color_summary_lcd:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 74
    :goto_1
    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "night_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->notifyNightModeShowStateChange(Landroid/content/Context;)V

    .line 54
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->isSupportNightMode(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/android/settings/display/MiuiNightModePreferenceController;->updateSummary(Landroidx/preference/Preference;)V

    return-void
.end method
