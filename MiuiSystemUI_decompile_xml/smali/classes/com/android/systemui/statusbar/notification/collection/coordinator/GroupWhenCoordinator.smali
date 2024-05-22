.class public final Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/coordinator/Coordinator;


# instance fields
.field public cancelInvalidateListRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public final delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final invalidateListRunnable:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;

.field public final invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

.field public final notificationGroupTimes:Landroid/util/ArrayMap;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 7
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    .line 9
    invoke-direct {p1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    .line 14
    new-instance p1, Landroid/util/ArrayMap;

    .line 16
    invoke-direct {p1}, Landroid/util/ArrayMap;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidateListRunnable:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final attach(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    .line 4
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->addOnBeforeFinalizeFilterListener(Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;)V

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$2;

    .line 10
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V

    .line 12
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mRenderStageManager:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    .line 17
    check-cast v1, Ljava/util/ArrayList;

    .line 19
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->mShadeListBuilder:Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;

    .line 24
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 29
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;->mPipelineState:Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/PipelineState;->requireState()V

    .line 34
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;

    .line 37
    const/4 v1, 0x5

    .line 39
    invoke-direct {v0, p1, v1}, Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/notification/collection/ShadeListBuilder;I)V

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidator:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidator$1;

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable;->mListener:Lcom/android/systemui/statusbar/notification/collection/listbuilder/pluggable/Pluggable$PluggableListener;

    .line 45
    return-void
    .line 47
.end method
