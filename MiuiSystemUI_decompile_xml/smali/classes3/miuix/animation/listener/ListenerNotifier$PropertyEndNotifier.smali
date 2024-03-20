.class Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lmiuix/animation/listener/ListenerNotifier$INotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 1

    .line 1
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p0

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result p3

    .line 9
    if-eqz p3, :cond_2

    .line 10
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object p3

    .line 15
    check-cast p3, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-boolean p4, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 18
    if-eqz p4, :cond_0

    .line 20
    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 22
    iget-boolean p4, p4, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 24
    if-eqz p4, :cond_0

    .line 26
    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 28
    const/4 v0, 0x0

    .line 30
    iput-boolean v0, p4, Lmiuix/animation/internal/AnimInfo;->justEnd:Z

    .line 31
    iget-object p4, p3, Lmiuix/animation/listener/UpdateInfo;->animInfo:Lmiuix/animation/internal/AnimInfo;

    .line 33
    iget-byte p4, p4, Lmiuix/animation/internal/AnimInfo;->op:B

    .line 35
    const/4 v0, 0x3

    .line 37
    if-ne p4, v0, :cond_1

    .line 38
    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    .line 40
    goto :goto_0

    .line 43
    :cond_1
    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;Lmiuix/animation/listener/UpdateInfo;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    return-void
    .line 48
.end method
