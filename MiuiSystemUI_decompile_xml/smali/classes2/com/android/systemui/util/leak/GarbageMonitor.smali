.class public final Lcom/android/systemui/util/leak/GarbageMonitor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final DEBUG:Z

.field public static final ENABLE_AM_HEAP_LIMIT:Z

.field public static final HEAP_TRACKING_ENABLED:Z

.field public static final LEAK_REPORTING_ENABLED:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mData:Landroid/util/LongSparseArray;

.field public final mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

.field public final mHeapLimit:J

.field public final mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

.field public final mPids:Ljava/util/ArrayList;

.field public mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;


# direct methods
.method public static -$$Nest$smformatBytes(J)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "K"

    .line 2
    const-string v1, "M"

    .line 4
    const-string v2, "B"

    .line 6
    const-string v3, "G"

    .line 8
    const-string v4, "T"

    .line 10
    filled-new-array {v2, v0, v1, v3, v4}, [Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    const/4 v2, 0x5

    .line 17
    if-ge v1, v2, :cond_1

    .line 18
    const-wide/16 v2, 0x400

    .line 20
    cmp-long v4, p0, v2

    .line 22
    if-gez v4, :cond_0

    .line 24
    goto :goto_1

    .line 26
    :cond_0
    div-long/2addr p0, v2

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 31
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 33
    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    aget-object p0, v0, v1

    .line 39
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    return-object p0
    .line 48
.end method

.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    const-string v0, "debug.enable_leak_reporting"

    .line 8
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    move v0, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    :goto_0
    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->LEAK_REPORTING_ENABLED:Z

    .line 19
    sget-boolean v0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 21
    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->HEAP_TRACKING_ENABLED:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    const-string v0, "debug.enable_sysui_heap_limit"

    .line 27
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    move v1, v2

    .line 36
    :goto_1
    sput-boolean v1, Lcom/android/systemui/util/leak/GarbageMonitor;->ENABLE_AM_HEAP_LIMIT:Z

    .line 37
    const-string v0, "GarbageMonitor"

    .line 39
    const/4 v1, 0x3

    .line 41
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 42
    move-result v0

    .line 45
    sput-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->DEBUG:Z

    .line 46
    return-void
    .line 48
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/concurrency/MessageRouter;Lcom/android/systemui/util/leak/LeakDetector;Lcom/android/systemui/util/leak/LeakReporter;Lcom/android/systemui/dump/DumpManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p2, Landroid/util/LongSparseArray;

    .line 5
    invoke-direct {p2}, Landroid/util/LongSparseArray;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 19
    move-result-object p2

    .line 22
    iput-object p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mContext:Landroid/content/Context;

    .line 23
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 25
    new-instance p5, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;

    .line 27
    const/4 v0, 0x0

    .line 29
    invoke-direct {p5, p0, v0}, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;I)V

    .line 30
    check-cast p3, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 33
    const/16 v0, 0x3e8

    .line 35
    invoke-virtual {p3, v0, p5}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    .line 37
    new-instance p5, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;

    .line 40
    const/4 v0, 0x1

    .line 42
    invoke-direct {p5, p0, v0}, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/util/leak/GarbageMonitor;I)V

    .line 43
    const/16 v0, 0xbb8

    .line 46
    invoke-virtual {p3, v0, p5}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->subscribeTo(ILcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;)V

    .line 48
    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    new-instance p3, Lcom/android/systemui/util/leak/DumpTruck;

    .line 54
    invoke-direct {p3, p2, p0}, Lcom/android/systemui/util/leak/DumpTruck;-><init>(Landroid/content/Context;Lcom/android/systemui/util/leak/GarbageMonitor;)V

    .line 56
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mDumpTruck:Lcom/android/systemui/util/leak/DumpTruck;

    .line 59
    const-string p3, "GarbageMonitor"

    .line 61
    invoke-virtual {p6, p3, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 63
    sget-boolean p3, Lcom/android/systemui/util/leak/GarbageMonitor;->ENABLE_AM_HEAP_LIMIT:Z

    .line 66
    if-eqz p3, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 74
    move-result-object p2

    .line 77
    const p3, 0x7f0b010f    # @integer/watch_heap_limit '256000'

    .line 78
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 81
    move-result p2

    .line 84
    const-string/jumbo p3, "systemui_am_heap_limit"

    .line 85
    invoke-static {p1, p3, p2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 88
    move-result p1

    .line 91
    int-to-long p1, p1

    .line 92
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    .line 93
    :cond_0
    return-void
    .line 95
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string v0, "GarbageMonitor params:"

    .line 2
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mHeapLimit:J

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "   mHeapLimit=%d KB"

    .line 17
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    const-wide/32 v0, 0xdbba0

    .line 26
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 29
    move-result-object v0

    .line 32
    const/high16 v1, 0x41700000    # 15.0f

    .line 33
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object v1

    .line 38
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 39
    move-result-object v0

    .line 42
    const-string v1, "   GARBAGE_INSPECTION_INTERVAL=%d (%.1f mins)"

    .line 43
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 49
    const-wide/32 v0, 0xea60

    .line 52
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 55
    move-result-object v0

    .line 58
    const/high16 v1, 0x3f800000    # 1.0f

    .line 59
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object v1

    .line 64
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 65
    move-result-object v0

    .line 68
    const-string v1, "   HEAP_TRACK_INTERVAL=%d (%.1f mins)"

    .line 69
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    const/16 v0, 0x2d0

    .line 78
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 80
    move-result-object v0

    .line 83
    const/high16 v1, 0x41400000    # 12.0f

    .line 84
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 86
    move-result-object v1

    .line 89
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 90
    move-result-object v0

    .line 93
    const-string v1, "   HEAP_TRACK_HISTORY_LEN=%d (%.1f hr total)"

    .line 94
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 96
    move-result-object v0

    .line 99
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 100
    const-string v0, "GarbageMonitor tracked processes:"

    .line 103
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 108
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 110
    move-result-object v0

    .line 113
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 114
    move-result v1

    .line 117
    if-eqz v1, :cond_1

    .line 118
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 120
    move-result-object v1

    .line 123
    check-cast v1, Ljava/lang/Long;

    .line 124
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 126
    move-result-wide v1

    .line 129
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 130
    invoke-virtual {v3, v1, v2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 132
    move-result-object v1

    .line 135
    check-cast v1, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 136
    if-eqz v1, :cond_0

    .line 138
    invoke-virtual {v1, p1, p2}, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 140
    goto :goto_0

    .line 143
    :cond_1
    return-void
    .line 144
.end method

.method public final logPids()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/systemui/util/leak/GarbageMonitor;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuffer;

    .line 6
    const-string v1, "Now tracking processes: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    .line 10
    const/4 v1, 0x0

    .line 13
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v3

    .line 19
    if-ge v1, v3, :cond_0

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Ljava/lang/Long;

    .line 26
    invoke-virtual {v2}, Ljava/lang/Long;->intValue()I

    .line 28
    const-string v2, " "

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 33
    add-int/lit8 v1, v1, 0x1

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    return-void
    .line 39
.end method
