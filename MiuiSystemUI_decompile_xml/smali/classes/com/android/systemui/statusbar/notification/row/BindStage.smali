.class public abstract Lcom/android/systemui/statusbar/notification/row/BindStage;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBindRequestListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;

.field public final mContentParams:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mContentParams:Ljava/util/Map;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mContentParams:Ljava/util/Map;

    .line 2
    check-cast p0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    if-nez p0, :cond_0

    .line 10
    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 12
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    const-string p1, "Entry does not have any stage parameters. key: %s"

    .line 18
    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    const-string p1, "BindStage"

    .line 24
    invoke-static {p1, p0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    new-instance p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 29
    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;-><init>()V

    .line 31
    :cond_0
    return-object p0
    .line 34
.end method

.method public final requestRebind(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)Landroidx/core/os/CancellationSignal;
    .locals 3

    .line 1
    new-instance v0, Landroidx/core/os/CancellationSignal;

    .line 2
    invoke-direct {v0}, Landroidx/core/os/CancellationSignal;-><init>()V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/BindStage;->mBindRequestListener:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;

    .line 7
    if-eqz p0, :cond_2

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    .line 13
    check-cast v1, Landroid/util/ArrayMap;

    .line 15
    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    .line 21
    if-nez v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    .line 27
    if-eqz p2, :cond_1

    .line 29
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    .line 31
    check-cast v1, Landroid/util/ArraySet;

    .line 33
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 35
    new-instance v2, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;

    .line 38
    invoke-direct {v2, v1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda1;-><init>(Ljava/util/Set;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;)V

    .line 40
    invoke-virtual {v0, v2}, Landroidx/core/os/CancellationSignal;->setOnCancelListener(Landroidx/core/os/CancellationSignal$OnCancelListener;)V

    .line 43
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->requestPipelineRun(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 46
    :cond_2
    :goto_0
    return-object v0
    .line 49
.end method
