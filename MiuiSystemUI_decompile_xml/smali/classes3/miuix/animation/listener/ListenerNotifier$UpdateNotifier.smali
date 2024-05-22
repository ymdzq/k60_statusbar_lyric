.class Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/listener/ListenerNotifier$INotifier;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private notifySingleProperty(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 12

    .line 1
    iget-object p0, p3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 2
    invoke-virtual {p3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 4
    move-result v0

    .line 7
    iget-boolean v1, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 8
    invoke-virtual {p2, p1, p0, v0, v1}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FZ)V

    .line 10
    iget-boolean p0, p3, Lmiuix/animation/listener/UpdateInfo;->useInt:Z

    .line 13
    if-eqz p0, :cond_0

    .line 15
    iget-object p0, p3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 17
    move-object v2, p0

    .line 19
    check-cast v2, Lmiuix/animation/property/IIntValueProperty;

    .line 20
    invoke-virtual {p3}, Lmiuix/animation/listener/UpdateInfo;->getIntValue()I

    .line 22
    move-result v3

    .line 25
    iget-wide v0, p3, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 26
    double-to-float v4, v0

    .line 28
    iget-boolean v5, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 29
    move-object v0, p2

    .line 31
    move-object v1, p1

    .line 32
    invoke-virtual/range {v0 .. v5}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/IIntValueProperty;IFZ)V

    .line 33
    goto :goto_0

    .line 36
    :cond_0
    iget-object v8, p3, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 37
    invoke-virtual {p3}, Lmiuix/animation/listener/UpdateInfo;->getFloatValue()F

    .line 39
    move-result v9

    .line 42
    iget-wide v0, p3, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 43
    double-to-float v10, v0

    .line 45
    iget-boolean v11, p3, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 46
    move-object v6, p2

    .line 48
    move-object v7, p1

    .line 49
    invoke-virtual/range {v6 .. v11}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;FFZ)V

    .line 50
    :goto_0
    return-void
    .line 53
.end method


# virtual methods
.method public doNotify(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Ljava/util/Collection;Lmiuix/animation/listener/UpdateInfo;)V
    .locals 1

    .line 1
    if-eqz p3, :cond_0

    .line 2
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    .line 4
    move-result p4

    .line 7
    const/16 v0, 0xfa0

    .line 8
    if-gt p4, v0, :cond_0

    .line 10
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p4

    .line 15
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/animation/listener/UpdateInfo;

    .line 26
    invoke-direct {p0, p1, p2, v0}, Lmiuix/animation/listener/ListenerNotifier$UpdateNotifier;->notifySingleProperty(Ljava/lang/Object;Lmiuix/animation/listener/TransitionListener;Lmiuix/animation/listener/UpdateInfo;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    invoke-virtual {p2, p1, p3}, Lmiuix/animation/listener/TransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 32
    return-void
    .line 35
.end method
