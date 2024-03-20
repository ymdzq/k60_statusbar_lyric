.class public Lcom/android/settings/lab/MiuiDriveModeController;
.super Lcom/android/settings/lab/MiuiLabBaseController;
.source "MiuiDriveModeController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/lab/MiuiLabBaseController<",
        "Lcom/android/settingslib/miuisettings/preference/ValuePreference;",
        ">;"
    }
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 2

    .line 44
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiLabBaseController;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 45
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_0

    .line 46
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/lab/MiuiDriveModeController;->isNeedHideDriveMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    const/4 p1, 0x0

    .line 49
    iput-object p1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    :cond_0
    return-void
.end method

.method public static buildDriveModeIntent()Landroid/content/Intent;
    .locals 4

    .line 79
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 80
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.xiaomi.drivemode"

    const-string v3, "com.xiaomi.drivemode.MiuiLabDriveModeActivity"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    return-object v0
.end method

.method public static isDriveModeInstalled(Landroid/content/Context;)Z
    .locals 2

    .line 86
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-static {}, Lcom/android/settings/lab/MiuiDriveModeController;->buildDriveModeIntent()Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 87
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNeedHideDriveMode(Landroid/content/Context;)Z
    .locals 2

    .line 91
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_1

    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez v0, :cond_1

    .line 94
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->SIMPLIFIED_CHINESE:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 95
    invoke-static {p0}, Lcom/android/settings/lab/MiuiDriveModeController;->isDriveModeInstalled(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_lab_drive_mode"

    return-object p0
.end method

.method protected onClick()V
    .locals 1

    .line 73
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onClick()V

    .line 74
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    .line 75
    invoke-static {}, Lcom/android/settings/lab/MiuiDriveModeController;->buildDriveModeIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method protected onResume()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/android/settings/lab/MiuiLabBaseController;->onResume()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 63
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    .line 64
    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "drive_mode_drive_mode"

    const/4 v2, -0x1

    .line 63
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 66
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settingslib/miuisettings/preference/ValuePreference;

    if-eq v0, v2, :cond_0

    .line 67
    sget v0, Lcom/android/settings/R$string;->miui_lab_feature_on:I

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->miui_lab_feature_off:I

    .line 66
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settingslib/miuisettings/preference/ValuePreference;->setValue(I)V

    :cond_1
    return-void
.end method
