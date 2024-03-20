.class public Lcom/android/settings/MiuiSecurityStatusSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MiuiSecurityStatusSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
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

    .line 44
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 45
    new-instance v0, Lcom/android/settings/security/SecurityGooglePlayUpdateController;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-string/jumbo v2, "security_status_partial_system_updates"

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/security/SecurityGooglePlayUpdateController;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 46
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "MiuiSecurityStatusSettings"

    return-object p0
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 19
    const-class p0, Lcom/android/settings/MiuiSecurityStatusSettings;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 29
    sget p0, Lcom/android/settings/R$xml;->security_status_settings:I

    return p0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 24
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method
