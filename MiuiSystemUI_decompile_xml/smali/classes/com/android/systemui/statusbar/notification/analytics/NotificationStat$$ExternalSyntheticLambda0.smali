.class public final synthetic Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    sget-object v0, Lcom/miui/systemui/events/NotificationEvent;->Companion:Lcom/miui/systemui/events/NotificationEvent$Companion;

    .line 7
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {v0, v1}, Lcom/miui/systemui/events/NotificationEvent$Companion;->getAppInfos(Landroid/content/Context;)Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 15
    move-result v1

    .line 18
    const/4 v2, 0x0

    .line 19
    invoke-static {v2, v1}, Ljava/util/stream/IntStream;->range(II)Ljava/util/stream/IntStream;

    .line 20
    move-result-object v1

    .line 23
    new-instance v3, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;

    .line 24
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;Ljava/util/List;)V

    .line 26
    invoke-interface {v1, v3}, Ljava/util/stream/IntStream;->mapToObj(Ljava/util/function/IntFunction;)Ljava/util/stream/Stream;

    .line 29
    move-result-object v0

    .line 32
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Ljava/util/List;

    .line 41
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 43
    move-result v1

    .line 46
    :goto_0
    if-ge v2, v1, :cond_0

    .line 47
    add-int/lit8 v3, v2, 0x64

    .line 49
    invoke-static {v3, v1}, Ljava/lang/Math;->min(II)I

    .line 51
    move-result v4

    .line 54
    invoke-interface {v0, v2, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 55
    move-result-object v2

    .line 58
    new-instance v4, Lcom/miui/systemui/events/NotificationAppStateEvent;

    .line 59
    const-string v5, "49.1.0.1.23419"

    .line 61
    const v6, 0x1509c44

    .line 63
    invoke-direct {v4, v2, v5, v6}, Lcom/miui/systemui/events/NotificationAppStateEvent;-><init>(Ljava/util/List;Ljava/lang/String;I)V

    .line 66
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mEventTracker:Lcom/miui/interfaces/IEventTracker;

    .line 69
    invoke-interface {v2, v4}, Lcom/miui/interfaces/IEventTracker;->track(Ljava/lang/Object;)V

    .line 71
    move v2, v3

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    return-void
    .line 76
.end method
