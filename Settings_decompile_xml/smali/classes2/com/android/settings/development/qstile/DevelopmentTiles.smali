.class public abstract Lcom/android/settings/development/qstile/DevelopmentTiles;
.super Landroid/service/quicksettings/TileService;
.source "DevelopmentTiles.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/development/qstile/DevelopmentTiles$DesktopMode;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ShowTaps;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$WirelessDebugging;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$WinscopeTrace;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$AnimationSpeed;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ForceRTL;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$GPUProfiling;,
        Lcom/android/settings/development/qstile/DevelopmentTiles$ShowLayout;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 62
    invoke-direct {p0}, Landroid/service/quicksettings/TileService;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract isEnabled()Z
.end method

.method public onClick()V
    .locals 2

    .line 127
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0}, Landroid/service/quicksettings/Tile;->getState()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/development/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    .line 130
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    return-void
.end method

.method public onStartListening()V
    .locals 0

    .line 87
    invoke-super {p0}, Landroid/service/quicksettings/TileService;->onStartListening()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->refresh()V

    return-void
.end method

.method public refresh()V
    .locals 6

    .line 93
    invoke-static {p0}, Lcom/android/settingslib/development/DevelopmentSettingsEnabler;->isDevelopmentSettingsEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {p0, v3}, Lcom/android/settings/development/qstile/DevelopmentTiles;->setIsEnabled(Z)V

    .line 97
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 99
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v0, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    :try_start_0
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v0, v1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    const-string/jumbo v1, "statusbar"

    .line 105
    invoke-static {v1}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 104
    invoke-static {v1}, Lcom/android/internal/statusbar/IStatusBarService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/statusbar/IStatusBarService;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 107
    invoke-interface {v1, v0}, Lcom/android/internal/statusbar/IStatusBarService;->remTile(Landroid/content/ComponentName;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 110
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to modify QS tile for component "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v0}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "DevelopmentTiles"

    .line 110
    invoke-static {v2, v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 115
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/development/qstile/DevelopmentTiles;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    move v3, v1

    .line 118
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 120
    :cond_4
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/service/quicksettings/Tile;->setState(I)V

    .line 121
    invoke-virtual {p0}, Landroid/service/quicksettings/TileService;->getQsTile()Landroid/service/quicksettings/Tile;

    move-result-object p0

    invoke-virtual {p0}, Landroid/service/quicksettings/Tile;->updateTile()V

    return-void
.end method

.method protected abstract setIsEnabled(Z)V
.end method
