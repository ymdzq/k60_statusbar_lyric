.class public final Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDozingChanged(Z)V
    .locals 6

    .line 1
    if-nez p1, :cond_3

    .line 2
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 4
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 6
    check-cast p1, Ljava/util/LinkedHashMap;

    .line 8
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 10
    move-result-object p1

    .line 13
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 14
    move-result-object p1

    .line 17
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Ljava/util/Map$Entry;

    .line 28
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 30
    move-result-object v1

    .line 33
    check-cast v1, Ljava/lang/String;

    .line 34
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 36
    move-result-object v0

    .line 39
    check-cast v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 40
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 42
    if-eqz v2, :cond_0

    .line 44
    iget-wide v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    .line 46
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 48
    check-cast v4, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 52
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 55
    move-result-wide v4

    .line 58
    cmp-long v2, v2, v4

    .line 59
    if-gtz v2, :cond_0

    .line 61
    const-string/jumbo v2, "timeout happened while dozing"

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->doTimeout()V

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->recommendationListeners:Ljava/util/Map;

    .line 73
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 75
    invoke-virtual {p0}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 77
    move-result-object p0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 81
    move-result-object p0

    .line 84
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    move-result p1

    .line 88
    if-nez p1, :cond_2

    .line 89
    goto :goto_1

    .line 91
    :cond_2
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 92
    move-result-object p0

    .line 95
    check-cast p0, Ljava/util/Map$Entry;

    .line 96
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    check-cast p1, Ljava/lang/String;

    .line 102
    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 104
    move-result-object p0

    .line 107
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 108
    const/4 p0, 0x0

    .line 111
    throw p0

    .line 112
    :cond_3
    :goto_1
    return-void
    .line 113
.end method
