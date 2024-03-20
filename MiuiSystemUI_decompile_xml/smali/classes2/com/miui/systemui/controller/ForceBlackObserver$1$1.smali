.class public final Lcom/miui/systemui/controller/ForceBlackObserver$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/miui/systemui/controller/ForceBlackObserver$1;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/controller/ForceBlackObserver$1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1$1;->this$1:Lcom/miui/systemui/controller/ForceBlackObserver$1;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1$1;->this$1:Lcom/miui/systemui/controller/ForceBlackObserver$1;

    .line 2
    iget-object p0, p0, Lcom/miui/systemui/controller/ForceBlackObserver$1;->this$0:Lcom/miui/systemui/controller/ForceBlackObserver;

    .line 4
    iget-boolean v0, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mForceBlack:Z

    .line 6
    iget-object v1, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 8
    monitor-enter v1

    .line 10
    :try_start_0
    iget-object v2, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v2

    .line 16
    :cond_0
    :goto_0
    add-int/lit8 v2, v2, -0x1

    .line 17
    if-ltz v2, :cond_1

    .line 19
    iget-object v3, p0, Lcom/miui/systemui/controller/ForceBlackObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 21
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/ref/WeakReference;

    .line 27
    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Lcom/miui/systemui/controller/ForceBlackObserver$Callback;

    .line 33
    if-eqz v3, :cond_0

    .line 35
    invoke-interface {v3, v0}, Lcom/miui/systemui/controller/ForceBlackObserver$Callback;->onForceBlackChange(Z)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v1

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
    .line 45
.end method
