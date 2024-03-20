.class public Lcom/android/settings/colorlamp/ColorLampController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ColorLampController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFragment:Lcom/android/settings/colorlamp/ColorLampSettings;

.field mPreference:Landroidx/preference/SwitchPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/colorlamp/ColorLampSettings;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 31
    iput-object p1, p0, Lcom/android/settings/colorlamp/ColorLampController;->mContext:Landroid/content/Context;

    .line 32
    iput-object p2, p0, Lcom/android/settings/colorlamp/ColorLampController;->mFragment:Lcom/android/settings/colorlamp/ColorLampSettings;

    return-void
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 4

    .line 37
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    const-string v0, "color_lamp_switch"

    .line 38
    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/colorlamp/ColorLampController;->mPreference:Landroidx/preference/SwitchPreference;

    .line 40
    iget-object v0, p0, Lcom/android/settings/colorlamp/ColorLampController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, -0x2

    const-string v2, "color_lamp_turn_on"

    const/4 v3, 0x1

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {p1, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 41
    iget-object p1, p0, Lcom/android/settings/colorlamp/ColorLampController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/colorlamp/ColorLampController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "color_lamp_switch"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 46
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNeedShowColorLamp()Z

    move-result p0

    return p0
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    const-string v0, "color_lamp_switch"

    .line 69
    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 70
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 71
    iget-object p2, p0, Lcom/android/settings/colorlamp/ColorLampController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "color_lamp_turn_on"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    iget-object p0, p0, Lcom/android/settings/colorlamp/ColorLampController;->mFragment:Lcom/android/settings/colorlamp/ColorLampSettings;

    if-eqz p0, :cond_0

    .line 73
    invoke-virtual {p0, p1}, Lcom/android/settings/colorlamp/ColorLampSettings;->ensureVisibleOtherPreference(Z)V

    :cond_0
    const/4 p0, 0x1

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 2

    .line 52
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroidx/preference/Preference;)V

    .line 53
    instance-of v0, p1, Landroidx/preference/SwitchPreference;

    if-nez v0, :cond_0

    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/android/settings/colorlamp/ColorLampController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    check-cast p1, Landroidx/preference/SwitchPreference;

    invoke-virtual {p1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p1

    const-string v1, "color_lamp_turn_on"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 57
    iget-object p1, p0, Lcom/android/settings/colorlamp/ColorLampController;->mFragment:Lcom/android/settings/colorlamp/ColorLampSettings;

    if-eqz p1, :cond_1

    .line 58
    iget-object p0, p0, Lcom/android/settings/colorlamp/ColorLampController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/android/settings/colorlamp/ColorLampSettings;->ensureVisibleOtherPreference(Z)V

    :cond_1
    return-void
.end method
