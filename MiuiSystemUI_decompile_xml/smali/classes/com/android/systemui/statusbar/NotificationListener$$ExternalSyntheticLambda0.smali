.class public final synthetic Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/NotificationListener;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/NotificationListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/NotificationListener;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    .line 4
    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 6
    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedDeque;->pollFirst()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/service/notification/NotificationListenerService$RankingMap;

    .line 12
    if-nez v0, :cond_0

    .line 14
    const-string v1, "NotificationListener"

    .line 16
    const-string v2, "mRankingMapQueue was empty!"

    .line 18
    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mRankingMapQueue:Ljava/util/Deque;

    .line 23
    check-cast v1, Ljava/util/concurrent/ConcurrentLinkedDeque;

    .line 25
    invoke-virtual {v1}, Ljava/util/concurrent/ConcurrentLinkedDeque;->isEmpty()Z

    .line 27
    move-result v1

    .line 30
    const-wide/16 v2, -0x1

    .line 31
    if-nez v1, :cond_2

    .line 33
    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 35
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 37
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 39
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 42
    move-result-wide v4

    .line 45
    iget-wide v6, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    .line 46
    cmp-long v1, v6, v2

    .line 48
    if-nez v1, :cond_1

    .line 50
    iput-wide v4, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    .line 52
    :cond_1
    iget-wide v6, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    .line 54
    sub-long/2addr v4, v6

    .line 56
    const-wide/16 v6, 0x1f4

    .line 57
    cmp-long v1, v4, v6

    .line 59
    if-gez v1, :cond_2

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    iput-wide v2, p0, Lcom/android/systemui/statusbar/NotificationListener;->mSkippingRankingUpdatesSince:J

    .line 64
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationListener;->mNotificationHandlers:Ljava/util/List;

    .line 66
    check-cast p0, Ljava/util/ArrayList;

    .line 68
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 70
    move-result-object p0

    .line 73
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 74
    move-result v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 80
    move-result-object v1

    .line 83
    check-cast v1, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;

    .line 84
    invoke-interface {v1, v0}, Lcom/android/systemui/statusbar/NotificationListener$NotificationHandler;->onNotificationRankingUpdate(Landroid/service/notification/NotificationListenerService$RankingMap;)V

    .line 86
    goto :goto_0

    .line 89
    :cond_3
    :goto_1
    return-void
    .line 90
.end method
