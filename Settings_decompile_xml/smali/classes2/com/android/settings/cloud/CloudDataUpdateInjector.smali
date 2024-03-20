.class public Lcom/android/settings/cloud/CloudDataUpdateInjector;
.super Ljava/lang/Object;
.source "CloudDataUpdateInjector.java"


# direct methods
.method public static isSupportNightModeByCloud(Landroid/content/Context;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public static onCloudDataUpdate(Landroid/content/Context;)V
    .locals 0

    .line 17
    invoke-static {p0}, Lcom/android/settings/cloud/CloudDataUpdateInjector;->updateKeywordsCloudConfig(Landroid/content/Context;)V

    .line 18
    invoke-static {p0}, Lcom/android/settings/cloud/CloudDataUpdateInjector;->updateNightModeState(Landroid/content/Context;)V

    return-void
.end method

.method private static updateKeywordsCloudConfig(Landroid/content/Context;)V
    .locals 1

    .line 46
    invoke-static {p0}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/search/KeywordsCloudConfigHelper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/search/KeywordsCloudConfigHelper;->updateKeywordsCloudConfig(Landroid/content/Context;)V

    return-void
.end method

.method private static updateNightModeState(Landroid/content/Context;)V
    .locals 3

    .line 24
    invoke-static {p0}, Lcom/android/settings/MiuiUtils;->notifyNightModeShowStateChange(Landroid/content/Context;)V

    .line 26
    const-class v0, Landroid/app/UiModeManager;

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 27
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 v1, v1, 0x30

    .line 28
    invoke-static {p0}, Lcom/android/settings/cloud/CloudDataUpdateInjector;->isSupportNightModeByCloud(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    if-eq v1, p0, :cond_0

    const-string v1, "CloudDataUpdateInjector"

    const-string v2, "close night mode by cloud service"

    .line 30
    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {v0, p0}, Landroid/app/UiModeManager;->setNightMode(I)V

    :cond_0
    return-void
.end method
