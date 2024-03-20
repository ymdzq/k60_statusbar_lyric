.class public final Lcom/android/systemui/qs/QSTileHostExt;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;
.implements Lcom/android/systemui/tuner/TunerService$Tunable;
.implements Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;
.implements Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterController$UseControlCenterChangeListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final bgHandler:Landroid/os/Handler;

.field public final context:Landroid/content/Context;

.field public final controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

.field public final controlCenterSuperSaveTiles$delegate:Lkotlin/Lazy;

.field public currentUser:I

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final googleTilesController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

.field public final host:Ldagger/Lazy;

.field public miuiQSTilePlugin:Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

.field public final packageManager:Landroid/content/pm/PackageManager;

.field public final pluginManager:Lcom/android/systemui/plugins/PluginManager;

.field public final qsDefaultTiles$delegate:Lkotlin/Lazy;

.field public final qsStockTiles$delegate:Lkotlin/Lazy;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public superSaveMode:Z

.field public final superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

.field public final superSaveTiles$delegate:Lkotlin/Lazy;

.field public final systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

.field public temporarySpecs:Ljava/lang/String;

.field public final tileServices:Ljava/util/ArrayList;

.field public final tunerService:Lcom/android/systemui/tuner/TunerService;

.field public final uiHandler:Landroid/os/Handler;

.field public userEdited:Z

.field public final userEditedObserver:Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;

.field public final voWifiTilesController:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ldagger/Lazy;Lcom/android/systemui/plugins/PluginManager;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;Lcom/miui/systemui/controller/SuperSaveModeController;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/controlcenter/policy/GoogleTilesController;Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/settings/SystemSettingsImpl;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHostExt;->host:Ldagger/Lazy;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/QSTileHostExt;->pluginManager:Lcom/android/systemui/plugins/PluginManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/QSTileHostExt;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveModeController:Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/qs/QSTileHostExt;->bgHandler:Landroid/os/Handler;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/qs/QSTileHostExt;->uiHandler:Landroid/os/Handler;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/qs/QSTileHostExt;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 21
    iput-object p10, p0, Lcom/android/systemui/qs/QSTileHostExt;->googleTilesController:Lcom/android/systemui/controlcenter/policy/GoogleTilesController;

    .line 23
    iput-object p11, p0, Lcom/android/systemui/qs/QSTileHostExt;->voWifiTilesController:Lcom/android/systemui/controlcenter/policy/VoWifiTilesController;

    .line 25
    iput-object p12, p0, Lcom/android/systemui/qs/QSTileHostExt;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 27
    iput-object p13, p0, Lcom/android/systemui/qs/QSTileHostExt;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 29
    iput-object p14, p0, Lcom/android/systemui/qs/QSTileHostExt;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 31
    new-instance p2, Ljava/util/ArrayList;

    .line 33
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHostExt;->tileServices:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 40
    move-result-object p1

    .line 43
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->packageManager:Landroid/content/pm/PackageManager;

    .line 44
    const/high16 p1, -0x80000000

    .line 46
    iput p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 48
    new-instance p1, Lcom/android/systemui/qs/QSTileHostExt$superSaveTiles$2;

    .line 50
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSTileHostExt$superSaveTiles$2;-><init>(Lcom/android/systemui/qs/QSTileHostExt;)V

    .line 52
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 55
    move-result-object p1

    .line 58
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveTiles$delegate:Lkotlin/Lazy;

    .line 59
    new-instance p1, Lcom/android/systemui/qs/QSTileHostExt$controlCenterSuperSaveTiles$2;

    .line 61
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSTileHostExt$controlCenterSuperSaveTiles$2;-><init>(Lcom/android/systemui/qs/QSTileHostExt;)V

    .line 63
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 66
    move-result-object p1

    .line 69
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterSuperSaveTiles$delegate:Lkotlin/Lazy;

    .line 70
    new-instance p1, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;

    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSTileHostExt$qsDefaultTiles$2;-><init>(Lcom/android/systemui/qs/QSTileHostExt;)V

    .line 74
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 77
    move-result-object p1

    .line 80
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->qsDefaultTiles$delegate:Lkotlin/Lazy;

    .line 81
    new-instance p1, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;

    .line 83
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSTileHostExt$qsStockTiles$2;-><init>(Lcom/android/systemui/qs/QSTileHostExt;)V

    .line 85
    invoke-static {p1}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 88
    move-result-object p1

    .line 91
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->qsStockTiles$delegate:Lkotlin/Lazy;

    .line 92
    check-cast p9, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 94
    invoke-virtual {p9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 96
    move-result p1

    .line 99
    new-instance p2, Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;

    .line 100
    invoke-direct {p2, p0, p13, p7, p1}, Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;-><init>(Lcom/android/systemui/qs/QSTileHostExt;Lcom/android/systemui/util/settings/SystemSettingsImpl;Landroid/os/Handler;I)V

    .line 102
    iput-object p2, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEditedObserver:Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;

    .line 105
    return-void
    .line 107
.end method

.method public static updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V
    .locals 2

    .line 1
    and-int/lit8 v0, p3, 0x1

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    move p1, v1

    .line 7
    :cond_0
    and-int/lit8 v0, p3, 0x2

    .line 8
    if-eqz v0, :cond_1

    .line 10
    const/4 v0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_1
    move v0, v1

    .line 14
    :goto_0
    and-int/lit8 p3, p3, 0x4

    .line 15
    if-eqz p3, :cond_2

    .line 17
    move p2, v1

    .line 19
    :cond_2
    iget-boolean p3, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 20
    if-eqz p3, :cond_3

    .line 22
    if-nez v0, :cond_3

    .line 24
    goto :goto_1

    .line 26
    :cond_3
    iget-object p3, p0, Lcom/android/systemui/qs/QSTileHostExt;->host:Ldagger/Lazy;

    .line 27
    invoke-interface {p3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 29
    move-result-object p3

    .line 32
    check-cast p3, Lcom/android/systemui/qs/QSTileHost;

    .line 33
    const-string/jumbo v0, "sysui_qs_tiles"

    .line 35
    if-eqz p1, :cond_4

    .line 38
    const-string p1, ""

    .line 40
    invoke-virtual {p3, v0, p1}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    :cond_4
    if-eqz p2, :cond_5

    .line 45
    const/4 p1, 0x0

    .line 47
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->temporarySpecs:Ljava/lang/String;

    .line 48
    :cond_5
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHostExt;->getTileSpecs()Ljava/lang/String;

    .line 50
    move-result-object p0

    .line 53
    invoke-virtual {p3, v0, p0}, Lcom/android/systemui/qs/QSTileHost;->onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    :goto_1
    return-void
    .line 57
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    const-string p2, "QSTileHostExt:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 7
    const-string/jumbo v0, "userEdited "

    .line 9
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 12
    iget p2, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 15
    const-string v0, "currentUser "

    .line 17
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 19
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->temporarySpecs:Ljava/lang/String;

    .line 22
    const-string/jumbo p2, "temporarySpecs "

    .line 24
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 27
    return-void
    .line 30
.end method

.method public final getDefaultTiles()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 6
    iget-boolean v1, v1, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 8
    if-eqz v1, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterSuperSaveTiles$delegate:Lkotlin/Lazy;

    .line 12
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    check-cast p0, Ljava/lang/String;

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    if-eqz v0, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveTiles$delegate:Lkotlin/Lazy;

    .line 23
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Ljava/lang/String;

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->qsDefaultTiles$delegate:Lkotlin/Lazy;

    .line 32
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    check-cast p0, Ljava/lang/String;

    .line 38
    :goto_0
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 40
    if-eqz v0, :cond_2

    .line 42
    sget-object v0, Lcom/android/systemui/controlcenter/utils/ControlCenterUtils;->mContext:Landroid/content/Context;

    .line 44
    const-string v0, "debug.show_mem_tile"

    .line 46
    const/4 v1, 0x0

    .line 48
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 49
    move-result v0

    .line 52
    if-eqz v0, :cond_2

    .line 53
    const-string v0, ",dbg:mem"

    .line 55
    invoke-static {p0, v0}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    :cond_2
    return-object p0
    .line 61
.end method

.method public final getTileSpecs()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHostExt;->getDefaultTiles()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->tunerService:Lcom/android/systemui/tuner/TunerService;

    .line 15
    const-string/jumbo v1, "sysui_qs_tiles"

    .line 17
    invoke-virtual {v0, v1}, Lcom/android/systemui/tuner/TunerService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->temporarySpecs:Ljava/lang/String;

    .line 25
    if-nez v0, :cond_2

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSTileHostExt;->getDefaultTiles()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    :cond_2
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 33
    iget-boolean p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 35
    if-eqz p0, :cond_3

    .line 37
    const-string/jumbo p0, "vowifi1,vowifi2,"

    .line 39
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 42
    move-result-object p0

    .line 45
    return-object p0

    .line 46
    :cond_3
    return-object v0
    .line 47
.end method

.method public final onPluginLoaded(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 2
    const-string p2, "QSTileHostExt"

    .line 4
    const-string p3, "on MiuiQSTilePlugin loaded"

    .line 6
    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->miuiQSTilePlugin:Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 11
    const/4 p1, 0x0

    .line 13
    const/4 p2, 0x7

    .line 14
    invoke-static {p0, p1, p1, p2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 15
    return-void
    .line 18
.end method

.method public final onPluginUnloaded(Lcom/android/systemui/plugins/Plugin;Lcom/android/systemui/plugins/PluginLifecycleManager;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 2
    const-string p1, "QSTileHostExt"

    .line 4
    const-string p2, "on MiuiQSTilePlugin unloaded"

    .line 6
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->miuiQSTilePlugin:Lcom/android/systemui/plugins/miui/qs/MiuiQSTilePlugin;

    .line 12
    const/4 p1, 0x0

    .line 14
    const/4 p2, 0x7

    .line 15
    invoke-static {p0, p1, p1, p2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 16
    return-void
    .line 19
.end method

.method public final onSuperSaveModeChange(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->superSaveMode:Z

    .line 7
    const/4 p1, 0x7

    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-static {p0, v0, v0, p1}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 11
    return-void
    .line 14
.end method

.method public final onTuningChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1
    const-string/jumbo v0, "sysui_qs_tiles"

    .line 2
    invoke-static {v0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    const-string p1, "onTuningChanged "

    .line 12
    const-string v1, "QSTileHostExt"

    .line 14
    invoke-static {p1, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 19
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 23
    move-result v2

    .line 26
    iget v3, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 27
    const/4 v4, 0x0

    .line 29
    const/4 v5, 0x1

    .line 30
    if-eq v3, v2, :cond_1

    .line 31
    move v3, v5

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    move v3, v4

    .line 35
    :goto_0
    if-eqz v3, :cond_4

    .line 36
    const-string/jumbo v6, "userChanged "

    .line 38
    invoke-static {v6, p2, v1}, Landroidx/fragment/app/DialogFragment$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    iput v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 44
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHostExt;->systemSettings:Lcom/android/systemui/util/settings/SystemSettingsImpl;

    .line 46
    const/4 v7, -0x1

    .line 48
    const-string/jumbo v8, "tile_host_edited_by_user"

    .line 49
    invoke-interface {v6, v7, v2, v8}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 52
    move-result v2

    .line 55
    if-ne v2, v7, :cond_2

    .line 56
    iget v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 58
    invoke-interface {v6, v4, v2, v8}, Lcom/android/systemui/util/settings/SettingsProxy;->putIntForUser(IILjava/lang/String;)Z

    .line 60
    :cond_2
    iget v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 63
    invoke-interface {v6, v4, v2, v8}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 65
    move-result v2

    .line 68
    if-lez v2, :cond_3

    .line 69
    move v2, v5

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v2, v4

    .line 73
    :goto_1
    iput-boolean v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 74
    iget v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->currentUser:I

    .line 76
    iget-object v6, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEditedObserver:Lcom/android/systemui/qs/QSTileHostExt$userEditedObserver$1;

    .line 78
    invoke-virtual {v6, v2}, Lcom/android/systemui/qs/SettingObserver;->setUserId(I)V

    .line 80
    invoke-virtual {v6, v5}, Lcom/android/systemui/qs/SettingObserver;->setListening(Z)V

    .line 83
    :cond_4
    if-nez v3, :cond_5

    .line 86
    iget-boolean v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->userEdited:Z

    .line 88
    if-eqz v2, :cond_6

    .line 90
    :cond_5
    const/4 v2, 0x6

    .line 92
    invoke-static {p0, v5, v4, v2}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 93
    :cond_6
    if-eqz p2, :cond_7

    .line 96
    const-string v2, ","

    .line 98
    filled-new-array {v2}, [Ljava/lang/String;

    .line 100
    move-result-object v3

    .line 103
    invoke-static {p2, v3}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 104
    move-result-object p2

    .line 107
    new-instance v3, Ljava/util/ArrayList;

    .line 108
    invoke-direct {v3, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 110
    const-string p2, "internet"

    .line 113
    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 115
    move-result p2

    .line 118
    if-ltz p2, :cond_7

    .line 119
    const-string/jumbo v4, "wifi"

    .line 121
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 124
    move-result v6

    .line 127
    if-nez v6, :cond_7

    .line 128
    const-string v6, "cell"

    .line 130
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 132
    move-result v7

    .line 135
    if-nez v7, :cond_7

    .line 136
    invoke-virtual {v3, p2, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {v3, p2, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 141
    const-string/jumbo p2, "revert InternetTile!"

    .line 144
    invoke-static {v1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 150
    move-result-object p2

    .line 153
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 154
    move-result p1

    .line 157
    iget-object p0, p0, Lcom/android/systemui/qs/QSTileHostExt;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 158
    check-cast p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 160
    invoke-virtual {p0, p1, v0, p2, v5}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 162
    :cond_7
    return-void
    .line 165
.end method

.method public final onUseControlCenterChange(Z)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/QSTileHostExt;->host:Ldagger/Lazy;

    .line 2
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 4
    move-result-object p1

    .line 7
    check-cast p1, Lcom/android/systemui/qs/QSTileHost;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/qs/QSTileHost;->mTiles:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 12
    move-result-object p1

    .line 15
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile;

    .line 30
    instance-of v1, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 32
    if-eqz v1, :cond_0

    .line 34
    move-object v1, v0

    .line 36
    check-cast v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;

    .line 37
    iget-object v2, p0, Lcom/android/systemui/qs/QSTileHostExt;->controlCenterController:Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;

    .line 39
    iget-boolean v2, v2, Lcom/android/systemui/controlcenter/policy/ControlCenterControllerImpl;->useControlCenter:Z

    .line 41
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    sput-boolean v2, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 46
    :cond_0
    invoke-interface {v0}, Lcom/android/systemui/plugins/qs/QSTile;->refreshState()V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    const/4 p1, 0x7

    .line 52
    const/4 v0, 0x0

    .line 53
    invoke-static {p0, v0, v0, p1}, Lcom/android/systemui/qs/QSTileHostExt;->updateTiles$default(Lcom/android/systemui/qs/QSTileHostExt;ZZI)V

    .line 54
    return-void
    .line 57
.end method
