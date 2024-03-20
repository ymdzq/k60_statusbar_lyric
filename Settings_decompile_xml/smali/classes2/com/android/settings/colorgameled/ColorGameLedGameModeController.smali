.class public Lcom/android/settings/colorgameled/ColorGameLedGameModeController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorGameLedGameModeController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/colorgameled/IVisibleListener;


# instance fields
.field private mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method private getBreathGameModeEnable()Z
    .locals 3

    .line 70
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "breath_gamemode_enable"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v2, v0

    :cond_0
    return v2
.end method

.method private isLightEnable()Z
    .locals 3

    .line 65
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "light_turn_on"

    const/4 v2, 0x1

    invoke-static {p0, v1, v2, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private setBreathGameModeEnable(Z)V
    .locals 2

    .line 75
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, -0x2

    const-string v1, "breath_gamemode_enable"

    invoke-static {p0, v1, p1, v0}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 41
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_led_game_mode"

    .line 42
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->isLightEnable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 44
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->getBreathGameModeEnable()Z

    move-result p0

    invoke-virtual {p1, p0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    goto :goto_0

    .line 46
    :cond_0
    iget-object p1, p0, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->mPreference:Landroidx/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 47
    invoke-direct {p0, v0}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->setBreathGameModeEnable(Z)V

    :goto_0
    return-void
.end method

.method public ensureVisible(Z)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->mPreference:Landroidx/preference/SwitchPreference;

    if-eqz p0, :cond_0

    .line 82
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setVisible(Z)V

    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_led_game_mode"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 53
    invoke-virtual {p1}, Landroidx/preference/Preference;->hasKey()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "color_led_game_mode"

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 54
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_0

    .line 55
    invoke-direct {p0, p2}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->setBreathGameModeEnable(Z)V

    goto :goto_0

    .line 57
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/colorgameled/ColorGameLedGameModeController;->setBreathGameModeEnable(Z)V

    :goto_0
    return p2

    :cond_1
    return v1
.end method
