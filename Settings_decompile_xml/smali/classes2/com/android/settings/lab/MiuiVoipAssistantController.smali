.class public Lcom/android/settings/lab/MiuiVoipAssistantController;
.super Lcom/android/settings/lab/MiuiLabBaseController;
.source "MiuiVoipAssistantController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/lab/MiuiLabBaseController<",
        "Lcom/android/settingslib/miuisettings/preference/ValuePreference;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 29
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiLabBaseController;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 30
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 31
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 32
    invoke-static {}, Lcom/android/settings/lab/MiuiVoipAssistantController;->isNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 33
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 34
    iput-object p1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public static buildDriveModeIntent()Landroid/content/Intent;
    .locals 4

    .line 62
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 63
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.miui.audiomonitor"

    const-string v3, "com.miui.audiomonitor.VoipAssistantActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isNotSupported()Z
    .locals 3

    .line 69
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_0

    const-string/jumbo v0, "ro.vendor.audio.voip.assistant"

    const/4 v1, 0x0

    .line 70
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 71
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v2, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v2}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_voip_assistant_screen"

    return-object p0
.end method

.method protected onClick()V
    .locals 1

    .line 56
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onClick()V

    .line 57
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 58
    invoke-static {}, Lcom/android/settings/lab/MiuiVoipAssistantController;->buildDriveModeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 46
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onResume()V

    .line 47
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 48
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "persist.sys.voip_record.open"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 49
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eqz v0, :cond_0

    .line 50
    sget v0, Lcom/android/settings/R$string;->voip_assistant_settings_on:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->voip_assistant_settings_off:I

    .line 49
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method
