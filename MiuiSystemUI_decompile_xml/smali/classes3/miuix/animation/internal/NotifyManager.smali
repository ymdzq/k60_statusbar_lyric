.class public Lmiuix/animation/internal/NotifyManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mConfig:Lmiuix/animation/base/AnimConfig;

.field mNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

.field mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 5
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 10
    iput-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 12
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    .line 14
    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 16
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 19
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier;

    .line 21
    invoke-direct {v0, p1}, Lmiuix/animation/listener/ListenerNotifier;-><init>(Lmiuix/animation/IAnimTarget;)V

    .line 23
    iput-object v0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public getNotifier()Lmiuix/animation/listener/ListenerNotifier;
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/internal/NotifyManager;->mNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 2
    return-object p0
    .line 4
.end method

.method public setToNotify(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfigLink;)V
    .locals 2

    .line 1
    if-nez p2, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getTag()Ljava/lang/Object;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-virtual {p1}, Lmiuix/animation/controller/AnimState;->getConfig()Lmiuix/animation/base/AnimConfig;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {v1, p1}, Lmiuix/animation/base/AnimConfig;->copy(Lmiuix/animation/base/AnimConfig;)V

    .line 15
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 18
    invoke-virtual {p2, p1}, Lmiuix/animation/base/AnimConfigLink;->addTo(Lmiuix/animation/base/AnimConfig;)V

    .line 20
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 23
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 25
    invoke-virtual {p1, v0, p2}, Lmiuix/animation/listener/ListenerNotifier;->addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    iget-object p0, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 33
    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 35
    return-void

    .line 38
    :cond_1
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 39
    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 41
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 44
    iget-object p1, p1, Lmiuix/animation/IAnimTarget;->animManager:Lmiuix/animation/internal/AnimManager;

    .line 46
    iget-object p1, p1, Lmiuix/animation/internal/AnimManager;->mUpdateMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 48
    invoke-virtual {p1}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;

    .line 50
    move-result-object p1

    .line 53
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 54
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 56
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 59
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 61
    iget-object p2, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 64
    invoke-virtual {p2, v0, v0, p1}, Lmiuix/animation/listener/ListenerNotifier;->notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V

    .line 66
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 69
    invoke-virtual {p1, v0, v0}, Lmiuix/animation/listener/ListenerNotifier;->notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 71
    iget-object p1, p0, Lmiuix/animation/internal/NotifyManager;->mSetToNotifier:Lmiuix/animation/listener/ListenerNotifier;

    .line 74
    invoke-virtual {p1, v0}, Lmiuix/animation/listener/ListenerNotifier;->removeListeners(Ljava/lang/Object;)V

    .line 76
    iget-object p0, p0, Lmiuix/animation/internal/NotifyManager;->mConfig:Lmiuix/animation/base/AnimConfig;

    .line 79
    invoke-virtual {p0}, Lmiuix/animation/base/AnimConfig;->clear()V

    .line 81
    return-void
    .line 84
.end method
