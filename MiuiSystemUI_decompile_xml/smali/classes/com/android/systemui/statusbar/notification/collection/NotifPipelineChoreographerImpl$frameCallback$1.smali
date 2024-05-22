.class public final Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 2
    iget-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    .line 4
    if-eqz p2, :cond_1

    .line 6
    const/4 p2, 0x0

    .line 8
    iput-boolean p2, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->isScheduled:Z

    .line 9
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->timeoutSubscription:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 11
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl$frameCallback$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifPipelineChoreographerImpl;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 22
    move-result-object p0

    .line 25
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_1

    .line 30
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 32
    move-result-object p1

    .line 35
    check-cast p1, Ljava/lang/Runnable;

    .line 36
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 38
    goto :goto_0

    .line 41
    :cond_1
    return-void
    .line 42
.end method
