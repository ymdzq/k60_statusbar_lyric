.class public Lcom/android/settings/lab/MiuiFlashbackController;
.super Lcom/android/settings/lab/MiuiLabBaseController;
.source "MiuiFlashbackController.java"


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
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiLabBaseController;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 26
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/settings/lab/MiuiFlashbackController;->isNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 27
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 28
    iput-object p1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public static isNotSupported()Z
    .locals 2

    .line 53
    invoke-static {}, Landroid/util/MiuiMultiWindowUtils;->supportFreeform()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    sget-object v0, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    const-string v1, "cetus"

    .line 54
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    sget-boolean v1, Lmiui/util/DeviceLevel;->IS_MIUI_LITE_VERSION:Z

    if-nez v1, :cond_1

    const-string/jumbo v1, "zizhan"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "babylon"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

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
    return v0
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "flashback_entrance_preference"

    return-object p0
.end method

.method public onResume()V
    .locals 3

    .line 35
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "FlashBackMainSwitch"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v2, :cond_0

    move v0, v1

    .line 40
    :cond_0
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-ne v0, v1, :cond_1

    sget v0, Lcom/android/settings/R$string;->flashback_status_open:I

    goto :goto_0

    .line 41
    :cond_1
    sget v0, Lcom/android/settings/R$string;->flashback_status_close:I

    .line 40
    :goto_0
    invoke-virtual {p0, v0}, Lmiuix/preference/TextPreference;->setText(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 43
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method
