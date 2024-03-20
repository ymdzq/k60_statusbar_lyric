.class public final Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public currentRss:J

.field public head:I

.field public max:J

.field public final name:Ljava/lang/String;

.field public final pid:J

.field public final rss:[J

.field public final startTime:J


# direct methods
.method public constructor <init>(JLjava/lang/String;J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/16 v0, 0x2d0

    .line 5
    new-array v0, v0, [J

    .line 7
    iput-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    .line 9
    const-wide/16 v0, 0x1

    .line 11
    iput-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 13
    const/4 v0, 0x0

    .line 15
    iput v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 16
    iput-wide p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    .line 18
    iput-object p3, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    .line 20
    iput-wide p4, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo p2, "{ \"pid\": "

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 5
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->pid:J

    .line 8
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 10
    const-string p2, ", \"name\": \""

    .line 13
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 15
    const/16 p2, 0x22

    .line 18
    const/16 v0, 0x2d

    .line 20
    iget-object v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->name:Ljava/lang/String;

    .line 22
    invoke-virtual {v1, p2, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    .line 24
    move-result-object p2

    .line 27
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    const-string p2, "\", \"start\": "

    .line 31
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 33
    iget-wide v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->startTime:J

    .line 36
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 38
    const-string p2, ", \"rss\": ["

    .line 41
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 43
    const/4 p2, 0x0

    .line 46
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    .line 47
    array-length v1, v0

    .line 49
    if-ge p2, v1, :cond_1

    .line 50
    if-lez p2, :cond_0

    .line 52
    const-string v1, ","

    .line 54
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    :cond_0
    iget v1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 59
    add-int/2addr v1, p2

    .line 61
    array-length v2, v0

    .line 62
    rem-int/2addr v1, v2

    .line 63
    aget-wide v0, v0, v1

    .line 64
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 66
    add-int/lit8 p2, p2, 0x1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    const-string p0, "] }"

    .line 72
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 74
    return-void
    .line 77
.end method
