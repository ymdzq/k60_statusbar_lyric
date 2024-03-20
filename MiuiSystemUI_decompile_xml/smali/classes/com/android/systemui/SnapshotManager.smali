.class public final Lcom/android/systemui/SnapshotManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final listeners:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/dump/DumpManager;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcom/android/systemui/dump/DumpPriority;->CRITICAL:Lcom/android/systemui/dump/DumpPriority;

    .line 5
    const-string v1, "SnapshotManager"

    .line 7
    invoke-virtual {p3, v1, p0, v0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;Lcom/android/systemui/dump/DumpPriority;)V

    .line 9
    new-instance v3, Lcom/android/systemui/SnapshotManager$1;

    .line 12
    invoke-direct {v3, p0}, Lcom/android/systemui/SnapshotManager$1;-><init>(Lcom/android/systemui/SnapshotManager;)V

    .line 14
    new-instance v4, Landroid/content/IntentFilter;

    .line 17
    const-string p3, "miui.intent.TAKE_SCREENSHOT"

    .line 19
    invoke-direct {v4, p3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 21
    const/4 v6, 0x0

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x0

    .line 26
    const/16 v9, 0x38

    .line 27
    move-object v2, p2

    .line 29
    move-object v5, p1

    .line 30
    invoke-static/range {v2 .. v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 31
    new-instance p1, Ljava/util/ArrayList;

    .line 34
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/android/systemui/SnapshotManager;->listeners:Ljava/util/List;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
