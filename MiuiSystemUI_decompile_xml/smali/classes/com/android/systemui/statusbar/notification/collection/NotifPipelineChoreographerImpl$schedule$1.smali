.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$schedule$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$schedule$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$schedule$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->frameCallback:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->viewChoreographer:Landroid/view/Choreographer;

    .line 13
    invoke-virtual {v1, v0}, Landroid/view/Choreographer;->removeFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 20
    move-result-object p0

    .line 23
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    move-result v0

    .line 27
    if-eqz v0, :cond_0

    .line 28
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Ljava/lang/Runnable;

    .line 34
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 36
    goto :goto_0

    .line 39
    :cond_0
    return-void
    .line 40
.end method
