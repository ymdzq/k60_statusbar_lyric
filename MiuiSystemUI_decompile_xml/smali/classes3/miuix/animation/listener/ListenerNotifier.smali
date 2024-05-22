.class public Lmiuix/animation/listener/ListenerNotifier;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field static final sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

.field static final sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

.field static final sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

.field static final sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

.field static final sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

.field static final sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

.field static final sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;


# instance fields
.field final mListenerMap:Ljava/util/Map;

.field final mTarget:Lmiuix/animation/IAnimTarget;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;-><init>()V

    .line 4
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 7
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 9
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;-><init>()V

    .line 11
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 14
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 16
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;-><init>()V

    .line 18
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 21
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 23
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;-><init>()V

    .line 25
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 28
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 30
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;-><init>()V

    .line 32
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 35
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 37
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;-><init>()V

    .line 39
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 42
    new-instance v0, Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 44
    invoke-direct {v0}, Lmiuix/animation/listener/ListenerNotifier$EndNotifier;-><init>()V

    .line 46
    sput-object v0, Lmiuix/animation/listener/ListenerNotifier;->sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 49
    return-void
    .line 51
.end method

.method public constructor <init>(Lmiuix/animation/IAnimTarget;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 10
    iput-object p1, p0, Lmiuix/animation/listener/ListenerNotifier;->mTarget:Lmiuix/animation/IAnimTarget;

    .line 12
    return-void
    .line 14
.end method

.method private getListenerSet(Ljava/lang/Object;)Ljava/util/List;
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/util/List;

    .line 8
    if-nez v0, :cond_0

    .line 10
    const-class v0, Ljava/util/ArrayList;

    .line 12
    const/4 v1, 0x0

    .line 14
    new-array v1, v1, [Ljava/lang/Object;

    .line 15
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Ljava/util/List;

    .line 21
    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 23
    invoke-interface {p0, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    :cond_0
    return-object v0
    .line 28
.end method

.method private notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Ljava/util/List;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    invoke-static {p2, p0, p3, p4, p5}, Lmiuix/animation/listener/ListenerNotifier;->notifyListenerSet(Ljava/lang/Object;Ljava/util/List;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method private static notifyListenerSet(Ljava/lang/Object;Ljava/util/List;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 3

    .line 1
    const-class v0, Ljava/util/HashSet;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v1, v1, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Lmiuix/animation/utils/ObjectPool;->acquire(Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Set;

    .line 11
    invoke-interface {v0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 13
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p1

    .line 19
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Lmiuix/animation/listener/TransitionListener;

    .line 30
    if-nez v1, :cond_0

    .line 32
    new-instance v1, Ljava/lang/StringBuilder;

    .line 34
    const-string v2, "listener null tag="

    .line 36
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    const-string v2, "miuix_anim"

    .line 48
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    goto :goto_0

    .line 53
    :cond_0
    invoke-interface {p2, p0, v1, p3, p4}, Lmiuix/animation/listener/ListenerNotifier$INotifier;->doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 54
    goto :goto_0

    .line 57
    :cond_1
    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 58
    return-void
    .line 61
.end method


# virtual methods
.method public addListeners(Ljava/lang/Object;Lmiuix/animation/base/AnimConfig;)Z
    .locals 1

    .line 1
    iget-object v0, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0}, Ljava/util/HashSet;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    invoke-direct {p0, p1}, Lmiuix/animation/listener/ListenerNotifier;->getListenerSet(Ljava/lang/Object;)Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    iget-object p1, p2, Lmiuix/animation/base/AnimConfig;->listeners:Ljava/util/HashSet;

    .line 16
    invoke-static {p1, p0}, Lmiuix/animation/utils/CommonUtils;->addTo(Ljava/util/Collection;Ljava/util/Collection;)V

    .line 18
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method

.method public notifyBegin(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sBegin:Lmiuix/animation/listener/ListenerNotifier$BeginNotifier;

    .line 2
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyCancelAll(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sCancelAll:Lmiuix/animation/listener/ListenerNotifier$CancelNotifier;

    .line 2
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyEndAll(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sEndAll:Lmiuix/animation/listener/ListenerNotifier$EndNotifier;

    .line 2
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyMassUpdate(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sMassUpdate:Lmiuix/animation/listener/ListenerNotifier$MassUpdateNotifier;

    .line 2
    const/4 v4, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    move-object v0, p0

    .line 6
    move-object v1, p1

    .line 7
    move-object v2, p2

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyPropertyBegin(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sPropertyBegin:Lmiuix/animation/listener/ListenerNotifier$PropertyBeginNotifier;

    .line 2
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyPropertyEnd(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sPropertyEnd:Lmiuix/animation/listener/ListenerNotifier$PropertyEndNotifier;

    .line 2
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public notifyUpdate(Ljava/lang/Object;Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 6

    .line 1
    sget-object v3, Lmiuix/animation/listener/ListenerNotifier;->sUpdate:Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;

    .line 2
    const/4 v5, 0x0

    .line 4
    move-object v0, p0

    .line 5
    move-object v1, p1

    .line 6
    move-object v2, p2

    .line 7
    move-object v4, p3

    .line 8
    invoke-direct/range {v0 .. v5}, Lmiuix/animation/listener/ListenerNotifier;->notify(Ljava/lang/Object;Ljava/lang/Object;Lmiuix/animation/listener/ListenerNotifier$INotifier;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V

    .line 9
    return-void
    .line 12
.end method

.method public removeListeners()V
    .locals 1

    .line 3
    iget-object v0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    .line 4
    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public removeListeners(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/listener/ListenerNotifier;->mListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 2
    invoke-static {p0}, Lmiuix/animation/utils/ObjectPool;->release(Ljava/lang/Object;)V

    return-void
.end method
