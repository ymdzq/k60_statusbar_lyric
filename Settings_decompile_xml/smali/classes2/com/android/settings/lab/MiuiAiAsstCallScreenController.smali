.class public Lcom/android/settings/lab/MiuiAiAsstCallScreenController;
.super Lcom/android/settings/lab/MiuiLabBaseController;
.source "MiuiAiAsstCallScreenController.java"


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

    .line 20
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiLabBaseController;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 21
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 22
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 23
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;->isNeedHideCallScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 25
    iput-object p1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public static buildIntent()Landroid/content/Intent;
    .locals 2

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.aiasst.service.lab.launcher"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.xiaomi.aiasst.service"

    .line 57
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    return-object v0
.end method

.method public static final isNeedHideCallScreen(Landroid/content/Context;)Z
    .locals 5

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "com.xiaomi.aiasst.service.preferences.key_call_screen_visible"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v1

    .line 64
    :goto_0
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v3

    invoke-static {}, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;->buildIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v3, p0, v4}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    return v1

    :cond_1
    const-string p0, "MiuiAiAsstCallScreenController"

    const-string v0, "MiuiAiAsstCallScreenController is need hide"

    .line 70
    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_aiasst_call_screen"

    return-object p0
.end method

.method protected onClick()V
    .locals 3

    .line 48
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onClick()V

    .line 49
    invoke-static {}, Lcom/android/settings/lab/MiuiAiAsstCallScreenController;->buildIntent()Landroid/content/Intent;

    move-result-object v0

    .line 50
    iget-object v1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v2, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v2}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 51
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 37
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onResume()V

    .line 38
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz p0, :cond_1

    .line 39
    move-object v0, p0

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 41
    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 40
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "com.xiaomi.aiasst.service.preferences.key_can_use_call_screen"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_0

    .line 42
    sget p0, Lcom/android/settings/R$string;->miui_lab_feature_on:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->miui_lab_feature_off:I

    .line 39
    :goto_0
    invoke-virtual {v0, p0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method
