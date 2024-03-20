.class public Lcom/android/settings/applications/MiuiApplicationsSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiApplicationsSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 44
    new-instance v1, Lcom/android/settings/applications/XSpaceSettingsController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "xspace"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applications/XSpaceSettingsController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v1, Lcom/android/settings/applications/PermissionManagerController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string/jumbo v3, "permission_manager"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applications/PermissionManagerController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v1, Lcom/android/settings/applications/ApplicationLockController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "application_lock"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationLockController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v1, Lcom/android/settings/applications/LauncherIconManagerController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "launcher_icon_management"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applications/LauncherIconManagerController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v1, Lcom/android/settings/applicationmode/AppController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-string v3, "application_mode"

    invoke-direct {v1, p1, v2, v3}, Lcom/android/settings/applicationmode/AppController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v1, Lcom/android/settings/applications/UninstalledSystemAppsController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const-string v2, "already_delete_system_app"

    invoke-direct {v1, p1, p0, v2}, Lcom/android/settings/applications/UninstalledSystemAppsController;-><init>(Landroid/content/Context;Landroid/app/Activity;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance p0, Lcom/android/settings/applications/SafeInstallModeController;

    const-string/jumbo v1, "safe_install_mode_pref"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/applications/SafeInstallModeController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/applications/MiuiApplicationsSettings;->buildPreferenceControllers(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiApplicationsSettings"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 28
    sget p0, Lcom/android/settings/R$xml;->applications_settings:I

    return p0
.end method
