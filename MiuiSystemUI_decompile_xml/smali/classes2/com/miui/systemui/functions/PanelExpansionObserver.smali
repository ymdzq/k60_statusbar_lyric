.class public final Lcom/miui/systemui/functions/PanelExpansionObserver;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final addCallback(Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;)V
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    monitor-enter v0

    .line 3
    :try_start_0
    iget-object p0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;

    invoke-virtual {p0, p1}, Lcom/miui/systemui/functions/PanelExpansionObserver;->addCallback(Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;)V

    return-void
.end method

.method public final dispatchPanelExpansionChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/functions/PanelExpansionObserver$dispatchPanelExpansionChanged$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/miui/systemui/functions/PanelExpansionObserver$dispatchPanelExpansionChanged$1;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/systemui/functions/PanelExpansionObserver;->foreachDispatch(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final dispatchQsExpansionChanged(Z)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/systemui/functions/PanelExpansionObserver$dispatchQsExpansionChanged$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/miui/systemui/functions/PanelExpansionObserver$dispatchQsExpansionChanged$1;-><init>(Z)V

    .line 4
    invoke-virtual {p0, v0}, Lcom/miui/systemui/functions/PanelExpansionObserver;->foreachDispatch(Lkotlin/jvm/functions/Function1;)V

    .line 7
    return-void
    .line 10
.end method

.method public final foreachDispatch(Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    new-instance v1, Ljava/util/ArrayList;

    .line 5
    iget-object p0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-direct {v1, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 12
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;

    .line 27
    invoke-interface {p1, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0

    .line 35
    throw p0
    .line 36
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/miui/interfaces/IPanelExpansionObserver$NotificationPanelExpansionListener;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/miui/systemui/functions/PanelExpansionObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    monitor-exit v0

    .line 12
    return-void

    .line 13
    :catchall_0
    move-exception p0

    .line 14
    monitor-exit v0

    .line 15
    throw p0
    .line 16
.end method
