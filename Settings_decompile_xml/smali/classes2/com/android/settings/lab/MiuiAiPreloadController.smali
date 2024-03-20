.class public Lcom/android/settings/lab/MiuiAiPreloadController;
.super Lcom/android/settings/lab/MiuiLabBaseController;
.source "MiuiAiPreloadController.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settings/lab/MiuiLabBaseController<",
        "Lcom/android/settings/widget/MiuiIconCheckBoxPreference;",
        ">;"
    }
.end annotation


# direct methods
.method static bridge synthetic -$$Nest$mbackgroundStartSwitchPreferenceOnChange(Lcom/android/settings/lab/MiuiAiPreloadController;Ljava/lang/Object;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiAiPreloadController;->backgroundStartSwitchPreferenceOnChange(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/PreferenceGroup;)V
    .locals 1

    .line 25
    invoke-direct {p0, p1}, Lcom/android/settings/lab/MiuiLabBaseController;-><init>(Landroidx/preference/PreferenceGroup;)V

    .line 26
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    .line 27
    invoke-static {}, Lcom/android/settings/lab/MiuiAiPreloadController;->isNotSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 28
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {p1, p0}, Landroidx/preference/PreferenceGroup;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    .line 30
    :cond_0
    iget-object p1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p1, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    new-instance v0, Lcom/android/settings/lab/MiuiAiPreloadController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/lab/MiuiAiPreloadController$1;-><init>(Lcom/android/settings/lab/MiuiAiPreloadController;)V

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private backgroundStartSwitchPreferenceOnChange(Ljava/lang/Object;)V
    .locals 1

    .line 43
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string p1, "ai_preload_user_state"

    .line 43
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private close()V
    .locals 3

    .line 87
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 88
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ai_preload_user_state"

    .line 90
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 88
    invoke-static {p0, v0, v1, v2}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    return-void
.end method

.method public static isCloudDisabled()Z
    .locals 3

    const-string/jumbo v0, "persist.sys.ai_preload_cloud"

    const/4 v1, 0x0

    .line 99
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static isNotSupported()Z
    .locals 2

    const-string/jumbo v0, "persist.sys.ai_preload_cloud"

    const/4 v1, 0x0

    .line 95
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method


# virtual methods
.method protected getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string/jumbo p0, "miui_lab_ai_preload"

    return-object p0
.end method

.method protected onClick()V
    .locals 5

    .line 54
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v1, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {v1}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result v1

    const-string v2, "ai_preload_user_state"

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 56
    invoke-static {}, Lcom/android/settings/lab/MiuiAiPreloadController;->isCloudDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 57
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->miui_lab_ai_cloud_closed:I

    .line 58
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 57
    invoke-static {v0, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 60
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    check-cast p0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 62
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 60
    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 64
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const/4 v0, 0x1

    .line 66
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 64
    invoke-static {p0, v2, v0, v1}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 71
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 69
    invoke-static {p0, v2, v3, v0}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 77
    invoke-static {}, Lcom/android/settings/lab/MiuiAiPreloadController;->isCloudDisabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 78
    invoke-direct {p0}, Lcom/android/settings/lab/MiuiAiPreloadController;->close()V

    return-void

    .line 82
    :cond_0
    iget-object p0, p0, Lcom/android/settings/lab/MiuiLabBaseController;->mPreference:Landroidx/preference/Preference;

    move-object v0, p0

    check-cast v0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    check-cast p0, Lcom/android/settings/widget/MiuiIconCheckBoxPreference;

    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "ai_preload_user_state"

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    const/4 v3, 0x0

    .line 82
    invoke-static {p0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    const/4 v1, 0x1

    if-ne p0, v1, :cond_1

    move v3, v1

    :cond_1
    invoke-virtual {v0, v3}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    return-void
.end method
