.class public final Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public dumpInProgress:Z

.field public final gm:Lcom/android/systemui/util/leak/GarbageMonitor;

.field public final mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

.field public pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/util/leak/GarbageMonitor;Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->mPanelInteractor:Lcom/android/systemui/qs/pipeline/domain/interactor/PanelInteractor;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 4
    return-object p0
    .line 6
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->dumpInProgress:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->dumpInProgress:Z

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 11
    new-instance p1, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;

    .line 14
    invoke-direct {p1, p0}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile$1;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;)V

    .line 16
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 19
    return-void
    .line 22
.end method

.method public final handleSetListening(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->handleSetListening(Z)V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 5
    if-eqz v0, :cond_1

    .line 7
    const/4 v1, 0x0

    .line 9
    if-eqz p1, :cond_0

    .line 10
    move-object v2, p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    move-object v2, v1

    .line 14
    :goto_0
    iput-object v2, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-virtual {v2, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 22
    const-class v1, Landroid/app/ActivityManager;

    .line 24
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    check-cast p0, Landroid/app/ActivityManager;

    .line 30
    if-eqz p1, :cond_2

    .line 32
    iget-wide v0, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    .line 34
    const-wide/16 v2, 0x0

    .line 36
    cmp-long p1, v0, v2

    .line 38
    if-lez p1, :cond_2

    .line 40
    const-wide/16 v2, 0x400

    .line 42
    mul-long/2addr v0, v2

    .line 44
    invoke-virtual {p0, v0, v1}, Landroid/app/ActivityManager;->setWatchHeapLimit(J)V

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    invoke-virtual {p0}, Landroid/app/ActivityManager;->clearWatchHeapLimit()V

    .line 49
    :goto_1
    return-void
    .line 52
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    move-result p2

    .line 5
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->gm:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 8
    int-to-long v2, p2

    .line 10
    invoke-virtual {v1, v2, v3}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 11
    move-result-object p2

    .line 14
    check-cast p2, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 15
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 17
    new-instance p2, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;

    .line 19
    const/4 v1, 0x0

    .line 21
    invoke-direct {p2, v1}, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;-><init>(I)V

    .line 22
    iget-wide v2, v0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    .line 25
    iput-wide v2, p2, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->limit:J

    .line 27
    iget-boolean v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->dumpInProgress:Z

    .line 29
    if-eqz v0, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    const/4 v1, 0x2

    .line 34
    :goto_0
    iput v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 35
    if-eqz v0, :cond_1

    .line 37
    const-string v0, "Dumping..."

    .line 39
    goto :goto_1

    .line 41
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 42
    const v1, 0x7f130512    # @string/heap_dump_tile_name 'Dump SysUI Heap'

    .line 44
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 47
    move-result-object v0

    .line 50
    :goto_1
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 51
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;->pmi:Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 53
    if-eqz p0, :cond_2

    .line 55
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentRss:J

    .line 57
    iput-wide v0, p2, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->rss:J

    .line 59
    const-wide/16 v4, 0x400

    .line 61
    mul-long/2addr v0, v4

    .line 63
    invoke-static {v0, v1}, Lcom/android/systemui/util/leak/GarbageMonitor;->-$$Nest$smformatBytes(J)Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    mul-long/2addr v2, v4

    .line 68
    invoke-static {v2, v3}, Lcom/android/systemui/util/leak/GarbageMonitor;->-$$Nest$smformatBytes(J)Ljava/lang/String;

    .line 69
    move-result-object v0

    .line 72
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 73
    move-result-object p0

    .line 76
    const-string v0, "rss: %s / %s"

    .line 77
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 83
    goto :goto_2

    .line 85
    :cond_2
    const-wide/16 v0, 0x0

    .line 86
    iput-wide v0, p2, Lcom/android/systemui/util/leak/GarbageMonitor$MemoryGraphIcon;->rss:J

    .line 88
    const/4 p0, 0x0

    .line 90
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 91
    :goto_2
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 93
    return-void
    .line 95
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method
