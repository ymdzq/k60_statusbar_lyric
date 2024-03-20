.class public final Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/qs/QSFactory;


# instance fields
.field public final activityStarter:Ldagger/Lazy;

.field public final airplaneModeTileProvider:Ljavax/inject/Provider;

.field public final alarmTileProvider:Ljavax/inject/Provider;

.field public final autoBrightnessTileProvider:Ljavax/inject/Provider;

.field public final bgLooper:Ldagger/Lazy;

.field public final bluetoothTileProvider:Ljavax/inject/Provider;

.field public final cameraToggleTileProvider:Ljavax/inject/Provider;

.field public final cellularTileProvider:Ljavax/inject/Provider;

.field public final colorCorrectionTileProvider:Ljavax/inject/Provider;

.field public final colorInversionTileProvider:Ljavax/inject/Provider;

.field public final customTileBuilderProvider:Ljavax/inject/Provider;

.field public final dataSaverTileProvider:Ljavax/inject/Provider;

.field public final deviceControlsTileProvider:Ljavax/inject/Provider;

.field public final editTileProvider:Ljavax/inject/Provider;

.field public final falsingManager:Ldagger/Lazy;

.field public final flashlightTileProvider:Ljavax/inject/Provider;

.field public final googleHomeTileProvider:Ljavax/inject/Provider;

.field public final googlePayTileProvider:Ljavax/inject/Provider;

.field public final gpsTileProvider:Ljavax/inject/Provider;

.field public final hotspotTileProvider:Ljavax/inject/Provider;

.field public final mainHandler:Ldagger/Lazy;

.field public final memoryTileProvider:Ljavax/inject/Provider;

.field public final metricsLogger:Ldagger/Lazy;

.field public final microphoneToggleTileProvider:Ljavax/inject/Provider;

.field public final muteTileProvider:Ljavax/inject/Provider;

.field public final nfcTileProvider:Ljavax/inject/Provider;

.field public final nightModeTileProvider:Ljavax/inject/Provider;

.field public final oneHandedModeTileProvider:Ljavax/inject/Provider;

.field public final paperModeTileProvider:Ljavax/inject/Provider;

.field public final powerSaverTileProvider:Ljavax/inject/Provider;

.field public final qsHostLazy:Ldagger/Lazy;

.field public final qsLogger:Ldagger/Lazy;

.field public final qsTileHostInjector:Ldagger/Lazy;

.field public final quickAccessWalletTileProvider:Ljavax/inject/Provider;

.field public final quietModeTileProvider:Ljavax/inject/Provider;

.field public final reduceBrightColorsTileProvider:Ljavax/inject/Provider;

.field public final rotationLockTileProvider:Ljavax/inject/Provider;

.field public final screenLockTileProvider:Ljavax/inject/Provider;

.field public final screenShotTileProvider:Ljavax/inject/Provider;

.field public final settingsTileProvider:Ljavax/inject/Provider;

.field public final sltTileProvider:Ljavax/inject/Provider;

.field public final statusBarStateController:Ldagger/Lazy;

.field public final syncTileProvider:Ljavax/inject/Provider;

.field public final uiEventLogger:Ldagger/Lazy;

.field public final uiModeNightTileProvider:Ljavax/inject/Provider;

.field public final vibrateTileProvider:Ljavax/inject/Provider;

.field public final voWifi1TileProvider:Ljavax/inject/Provider;

.field public final voWifi2TileProvider:Ljavax/inject/Provider;

.field public final wifiTileProvider:Ljavax/inject/Provider;

.field public final workModeTileProvider:Ljavax/inject/Provider;


# direct methods
.method public constructor <init>(Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ldagger/Lazy;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 2

    move-object v0, p0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    move-object v1, p1

    .line 2
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsHostLazy:Ldagger/Lazy;

    move-object v1, p2

    .line 3
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->uiEventLogger:Ldagger/Lazy;

    move-object v1, p3

    .line 4
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsTileHostInjector:Ldagger/Lazy;

    move-object v1, p4

    .line 5
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->customTileBuilderProvider:Ljavax/inject/Provider;

    move-object v1, p5

    .line 6
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->colorInversionTileProvider:Ljavax/inject/Provider;

    move-object v1, p6

    .line 7
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->workModeTileProvider:Ljavax/inject/Provider;

    move-object v1, p7

    .line 8
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->dataSaverTileProvider:Ljavax/inject/Provider;

    move-object v1, p8

    .line 9
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->memoryTileProvider:Ljavax/inject/Provider;

    move-object v1, p9

    .line 10
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    move-object v1, p10

    .line 11
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    move-object v1, p11

    .line 12
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->cameraToggleTileProvider:Ljavax/inject/Provider;

    move-object v1, p12

    .line 13
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    move-object v1, p13

    .line 14
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->deviceControlsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p14

    .line 15
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->alarmTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p15

    .line 16
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->quickAccessWalletTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p16

    .line 17
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->oneHandedModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p17

    .line 18
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->colorCorrectionTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p18

    .line 19
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->bgLooper:Ldagger/Lazy;

    move-object/from16 v1, p19

    .line 20
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->mainHandler:Ldagger/Lazy;

    move-object/from16 v1, p20

    .line 21
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->falsingManager:Ldagger/Lazy;

    move-object/from16 v1, p21

    .line 22
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->metricsLogger:Ldagger/Lazy;

    move-object/from16 v1, p22

    .line 23
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->statusBarStateController:Ldagger/Lazy;

    move-object/from16 v1, p23

    .line 24
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->activityStarter:Ldagger/Lazy;

    move-object/from16 v1, p24

    .line 25
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsLogger:Ldagger/Lazy;

    move-object/from16 v1, p25

    .line 26
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->autoBrightnessTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p26

    .line 27
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->editTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p27

    .line 28
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->rotationLockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p28

    .line 29
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->flashlightTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p29

    .line 30
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->cellularTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p30

    .line 31
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->hotspotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p31

    .line 32
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->muteTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p32

    .line 33
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->nightModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p33

    .line 34
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->paperModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p34

    .line 35
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->powerSaverTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p35

    .line 36
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->quietModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p36

    .line 37
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->screenLockTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p37

    .line 38
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->screenShotTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p38

    .line 39
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->syncTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p39

    .line 40
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->vibrateTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p40

    .line 41
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p41

    .line 42
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->gpsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p42

    .line 43
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->bluetoothTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p43

    .line 44
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->nfcTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p44

    .line 45
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->wifiTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p45

    .line 46
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->voWifi1TileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p46

    .line 47
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->voWifi2TileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p47

    .line 48
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->googleHomeTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p48

    .line 49
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->googlePayTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p49

    .line 50
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->settingsTileProvider:Ljavax/inject/Provider;

    move-object/from16 v1, p50

    .line 51
    iput-object v1, v0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->sltTileProvider:Ljavax/inject/Provider;

    return-void
.end method


# virtual methods
.method public final createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 14

    if-nez p1, :cond_0

    goto/16 :goto_1

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsTileHostInjector:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSTileHostExt;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/qs/QSTileHostExt;->miuiQSTilePlugin:Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 3
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsHostLazy:Ldagger/Lazy;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;->getAllPluginTiles()Ljava/util/Map;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 5
    new-instance v2, Lcom/android/systemui/qs/tiles/PluginTile;

    .line 6
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/systemui/qs/QSHost;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->uiEventLogger:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Lcom/android/systemui/qs/QsEventLogger;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->bgLooper:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Landroid/os/Looper;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->mainHandler:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Landroid/os/Handler;

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->falsingManager:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcom/android/systemui/plugins/FalsingManager;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->metricsLogger:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/android/internal/logging/MetricsLogger;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->statusBarStateController:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->activityStarter:Ldagger/Lazy;

    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, Lcom/android/systemui/plugins/ActivityStarter;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->qsLogger:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v12, p0

    check-cast v12, Lcom/android/systemui/qs/logging/QSLogger;

    .line 15
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    move-object v13, p0

    check-cast v13, Lcom/android/systemui/plugins/miui/qs/MiuiQSTile;

    move-object v3, v2

    .line 16
    invoke-direct/range {v3 .. v13}, Lcom/android/systemui/qs/tiles/PluginTile;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/plugins/miui/qs/MiuiQSTile;)V

    goto/16 :goto_2

    .line 17
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    iget-object v2, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->gpsTileProvider:Ljavax/inject/Provider;

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "location"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    .line 18
    :cond_2
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1
    const-string v0, "googlepay"

    .line 19
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    .line 20
    :cond_3
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->googlePayTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_2
    const-string/jumbo v0, "settings"

    .line 21
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    .line 22
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->settingsTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_3
    const-string v0, "quietmode"

    .line 23
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    .line 24
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->quietModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_4
    const-string v0, "hotspot"

    .line 25
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    .line 26
    :cond_6
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->hotspotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_5
    const-string/jumbo v0, "vowifi2"

    .line 27
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    .line 28
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->voWifi2TileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_6
    const-string/jumbo v0, "vowifi1"

    .line 29
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    .line 30
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->voWifi1TileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_7
    const-string/jumbo v0, "vibrate"

    .line 31
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    .line 32
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->vibrateTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_8
    const-string v0, "papermode"

    .line 33
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    .line 34
    :cond_a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->paperModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_9
    const-string/jumbo v0, "saver"

    .line 35
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    .line 36
    :cond_b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->dataSaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_a
    const-string v0, "night"

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto/16 :goto_0

    .line 38
    :cond_c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->nightModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_b
    const-string v0, "alarm"

    .line 39
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto/16 :goto_0

    .line 40
    :cond_d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->alarmTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_c
    const-string v0, "cameratoggle"

    .line 41
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto/16 :goto_0

    .line 42
    :cond_e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->cameraToggleTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_d
    const-string/jumbo v0, "work"

    .line 43
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto/16 :goto_0

    .line 44
    :cond_f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->workModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_e
    const-string/jumbo v0, "wifi"

    .line 45
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto/16 :goto_0

    .line 46
    :cond_10
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->wifiTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_f
    const-string/jumbo v0, "sync"

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto/16 :goto_0

    .line 48
    :cond_11
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->syncTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_10
    const-string v0, "mute"

    .line 49
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto/16 :goto_0

    .line 50
    :cond_12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->muteTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_11
    const-string v0, "edit"

    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto/16 :goto_0

    .line 52
    :cond_13
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->editTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_12
    const-string v0, "dark"

    .line 53
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_0

    .line 54
    :cond_14
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->uiModeNightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_13
    const-string v0, "cell"

    .line 55
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_15

    goto/16 :goto_0

    .line 56
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->cellularTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_14
    const-string v0, "nfc"

    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_16

    goto/16 :goto_0

    .line 58
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->nfcTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_15
    const-string v0, "gps"

    .line 59
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_17

    goto/16 :goto_0

    .line 60
    :cond_17
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_16
    const-string v0, "bt"

    .line 61
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_0

    .line 62
    :cond_18
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->bluetoothTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_17
    const-string v0, "mictoggle"

    .line 63
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    goto/16 :goto_0

    .line 64
    :cond_19
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->microphoneToggleTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_18
    const-string/jumbo v0, "rotation"

    .line 65
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    goto/16 :goto_0

    .line 66
    :cond_1a
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->rotationLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_19
    const-string v0, "reduce_brightness"

    .line 67
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1b

    goto/16 :goto_0

    .line 68
    :cond_1b
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->reduceBrightColorsTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1a
    const-string/jumbo v0, "screenshot"

    .line 69
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1c

    goto/16 :goto_0

    .line 70
    :cond_1c
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->screenShotTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1b
    const-string/jumbo v0, "screenlock"

    .line 71
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1d

    goto/16 :goto_0

    .line 72
    :cond_1d
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->screenLockTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1c
    const-string v0, "controls"

    .line 73
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1e

    goto/16 :goto_0

    .line 74
    :cond_1e
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->deviceControlsTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1d
    const-string v0, "color_correction"

    .line 75
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1f

    goto/16 :goto_0

    .line 76
    :cond_1f
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->colorCorrectionTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1e
    const-string v0, "airplane"

    .line 77
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_20

    goto/16 :goto_0

    .line 78
    :cond_20
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->airplaneModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_1f
    const-string/jumbo v0, "wallet"

    .line 79
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_21

    goto/16 :goto_0

    .line 80
    :cond_21
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->quickAccessWalletTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_20
    const-string v0, "autobrightness"

    .line 81
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_22

    goto/16 :goto_0

    .line 82
    :cond_22
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->autoBrightnessTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_21
    const-string v0, "flashlight"

    .line 83
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_23

    goto/16 :goto_0

    .line 84
    :cond_23
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->flashlightTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_22
    const-string v0, "googlehome"

    .line 85
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_24

    goto :goto_0

    .line 86
    :cond_24
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->googleHomeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_23
    const-string/jumbo v0, "satellite"

    .line 87
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_25

    goto :goto_0

    .line 88
    :cond_25
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->sltTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_24
    const-string v0, "batterysaver"

    .line 89
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_26

    goto :goto_0

    .line 90
    :cond_26
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->powerSaverTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto/16 :goto_2

    :sswitch_25
    const-string v0, "inversion"

    .line 91
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_0

    .line 92
    :cond_27
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->colorInversionTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_2

    :sswitch_26
    const-string v0, "onehanded"

    .line 93
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_28

    goto :goto_0

    .line 94
    :cond_28
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->oneHandedModeTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_2

    :goto_0
    const-string v0, "custom("

    .line 95
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 96
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->customTileBuilderProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/qs/external/CustomTile$Builder;

    .line 97
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/qs/QSHost;

    invoke-interface {v0}, Lcom/android/systemui/qs/QSHost;->getUserContext()Landroid/content/Context;

    move-result-object v0

    .line 98
    sget-object v1, Lcom/android/systemui/qs/external/CustomTile;->sCustomTileRef:Ljava/lang/ref/WeakReference;

    .line 99
    iput-object p1, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mSpec:Ljava/lang/String;

    .line 100
    iput-object v0, p0, Lcom/android/systemui/qs/external/CustomTile$Builder;->mUserContext:Landroid/content/Context;

    .line 101
    invoke-virtual {p0}, Lcom/android/systemui/qs/external/CustomTile$Builder;->build()Lcom/android/systemui/qs/external/CustomTile;

    move-result-object v2

    goto :goto_2

    .line 102
    :cond_29
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-eqz v0, :cond_2a

    const-string v0, "dbg:mem"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a

    .line 103
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->memoryTileProvider:Ljavax/inject/Provider;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v2, p0

    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    goto :goto_2

    :cond_2a
    const-string p0, "No stock tile spec: "

    .line 104
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiQSFactory"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_2b

    const/16 p0, 0xc

    .line 105
    iget-object p1, v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mHandler:Lcom/android/systemui/qs/tileimpl/QSTileImpl$H;

    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    const/16 p0, 0xb

    .line 106
    invoke-virtual {p1, p0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_2b
    return-object v2

    :sswitch_data_0
    .sparse-switch
        -0x7dbac8cc -> :sswitch_26
        -0x783813ed -> :sswitch_25
        -0x63b37f58 -> :sswitch_24
        -0x5e1f36c5 -> :sswitch_23
        -0x5b777168 -> :sswitch_22
        -0x468444da -> :sswitch_21
        -0x36ca04c0 -> :sswitch_20
        -0x2f65ac07 -> :sswitch_1f
        -0x285a60ae -> :sswitch_1e
        -0x27372646 -> :sswitch_1d
        -0x21cab94a -> :sswitch_1c
        -0x18d59069 -> :sswitch_1b
        -0x18d27a9a -> :sswitch_1a
        -0x1479af36 -> :sswitch_19
        -0x266f082 -> :sswitch_18
        -0x239afa5 -> :sswitch_17
        0xc52 -> :sswitch_16
        0x190aa -> :sswitch_15
        0x1a9ab -> :sswitch_14
        0x2e8962 -> :sswitch_13
        0x2eef76 -> :sswitch_12
        0x2f6e0a -> :sswitch_11
        0x335219 -> :sswitch_10
        0x361a9b -> :sswitch_f
        0x37af15 -> :sswitch_e
        0x37c711 -> :sswitch_d
        0x60ceb9 -> :sswitch_c
        0x5897a51 -> :sswitch_b
        0x63f6418 -> :sswitch_a
        0x6826e95 -> :sswitch_9
        0x11cfa52f -> :sswitch_8
        0x1ae6756f -> :sswitch_7
        0x264770a3 -> :sswitch_6
        0x264770a4 -> :sswitch_5
        0x418a9ecf -> :sswitch_4
        0x517c25d7 -> :sswitch_3
        0x5582bc23 -> :sswitch_2
        0x57e37bcf -> :sswitch_1
        0x714f9fb5 -> :sswitch_0
    .end sparse-switch
.end method

.method public final createTile(Ljava/lang/String;Z)Lcom/android/systemui/plugins/qs/QSTile;
    .locals 0

    .line 107
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/MiuiQSFactory;->createTile(Ljava/lang/String;)Lcom/android/systemui/plugins/qs/QSTile;

    move-result-object p0

    .line 108
    instance-of p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    if-eqz p1, :cond_0

    move-object p1, p0

    check-cast p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    sput-boolean p2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    :cond_0
    return-object p0
.end method

.method public final createTileView(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSTile;Z)Lcom/android/systemui/plugins/qs/QSTileView;
    .locals 0

    .line 1
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/qs/QSTile;->createTileView(Landroid/content/Context;)Lcom/android/systemui/plugins/qs/QSIconView;

    .line 2
    move-result-object p0

    .line 5
    new-instance p2, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;

    .line 6
    invoke-direct {p2, p1, p0, p3}, Lcom/android/systemui/qs/tileimpl/MiuiQSTileView;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 8
    return-object p2
    .line 11
.end method
