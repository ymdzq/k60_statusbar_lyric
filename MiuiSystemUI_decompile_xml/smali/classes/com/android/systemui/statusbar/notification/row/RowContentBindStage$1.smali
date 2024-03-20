.class public final Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/row/NotificationRowContentBinder$InflationCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

.field public final synthetic val$callback:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final handleInflationException(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->setInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Ljava/lang/Exception;)V

    .line 6
    return-void
    .line 9
.end method

.method public final onAsyncInflationFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->this$0:Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage;->mNotifInflationErrorManager:Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;

    .line 4
    invoke-virtual {v1, p1}, Lcom/android/systemui/statusbar/notification/row/NotifInflationErrorManager;->clearInflationError(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 6
    invoke-virtual {v0, p1}, Lcom/android/systemui/statusbar/notification/row/BindStage;->getStageParams(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;

    .line 13
    const/4 v1, 0x0

    .line 15
    iput v1, v0, Lcom/android/systemui/statusbar/notification/row/RowContentBindParams;->mDirtyContentViews:I

    .line 16
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/RowContentBindStage$1;->val$callback:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;

    .line 20
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mBindEntries:Ljava/util/Map;

    .line 22
    check-cast v0, Landroid/util/ArrayMap;

    .line 24
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;

    .line 30
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->callbacks:Ljava/util/Set;

    .line 32
    check-cast v2, Landroid/util/ArraySet;

    .line 34
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    .line 36
    move-result v3

    .line 39
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mLogger:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;

    .line 40
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    sget-object v5, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 45
    sget-object v6, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logFinishedPipeline$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger$logFinishedPipeline$2;

    .line 47
    const/4 v7, 0x0

    .line 49
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/row/NotifBindPipelineLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 50
    const-string v8, "NotifBindPipeline"

    .line 52
    invoke-virtual {v4, v8, v5, v6, v7}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 54
    move-result-object v5

    .line 57
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/NotificationUtilsKt;->getLogKey(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Ljava/lang/String;

    .line 58
    move-result-object v6

    .line 61
    invoke-interface {v5, v6}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 62
    invoke-interface {v5, v3}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 65
    invoke-virtual {v4, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 68
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindEntry;->invalidated:Z

    .line 71
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline;->mScratchCallbacksList:Ljava/util/List;

    .line 73
    check-cast p0, Ljava/util/ArrayList;

    .line 75
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 77
    invoke-virtual {v2}, Landroid/util/ArraySet;->clear()V

    .line 80
    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 83
    move-result v0

    .line 86
    if-ge v1, v0, :cond_0

    .line 87
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 89
    move-result-object v0

    .line 92
    check-cast v0, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;

    .line 93
    invoke-interface {v0, p1}, Lcom/android/systemui/statusbar/notification/row/NotifBindPipeline$BindCallback;->onBindFinished(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 95
    add-int/lit8 v1, v1, 0x1

    .line 98
    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->clear()V

    .line 101
    return-void
    .line 104
.end method
