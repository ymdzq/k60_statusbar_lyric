.class public Lcom/miui/maml/folme/MamlTransitionListener;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

.field public mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

.field private mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

.field public mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mBeginCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 2
    iget-object p1, p1, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 4
    invoke-virtual {p1}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V

    .line 6
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mCompleteCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 9
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result p1

    .line 18
    if-eqz p1, :cond_0

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object p1

    .line 24
    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 25
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 27
    goto :goto_0

    .line 30
    :cond_0
    return-void
    .line 31
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 2
    move-result-object p1

    .line 5
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 6
    move-result p2

    .line 9
    if-eqz p2, :cond_2

    .line 10
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 12
    move-result-object p2

    .line 15
    check-cast p2, Lmiuix/animation/listener/UpdateInfo;

    .line 16
    iget-object v0, p2, Lmiuix/animation/listener/UpdateInfo;->property:Lmiuix/animation/property/FloatProperty;

    .line 18
    instance-of v1, v0, Lcom/miui/maml/folme/IAnimatedProperty;

    .line 20
    if-eqz v1, :cond_1

    .line 22
    move-object v1, v0

    .line 24
    check-cast v1, Lcom/miui/maml/folme/IAnimatedProperty;

    .line 25
    iget-object v2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 27
    iget-wide v3, p2, Lmiuix/animation/listener/UpdateInfo;->velocity:D

    .line 29
    double-to-float v3, v3

    .line 31
    invoke-interface {v1, v2, v3}, Lcom/miui/maml/folme/IAnimatedProperty;->setVelocityValue(Ljava/lang/Object;F)V

    .line 32
    :cond_1
    iget-boolean p2, p2, Lmiuix/animation/listener/UpdateInfo;->isCompleted:Z

    .line 35
    if-eqz p2, :cond_0

    .line 37
    iget-object p2, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mTarget:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 39
    iget-object p2, p2, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 41
    invoke-virtual {p2, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/folme/MamlTransitionListener;->mUpdateCallback:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 47
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object p0

    .line 52
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result p1

    .line 56
    if-eqz p1, :cond_3

    .line 57
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object p1

    .line 62
    check-cast p1, Lcom/miui/maml/elements/FunctionElement;

    .line 63
    invoke-virtual {p1}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 65
    goto :goto_1

    .line 68
    :cond_3
    return-void
    .line 69
.end method
