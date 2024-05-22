.class public Lcom/miui/maml/folme/TransitionListenerWrapper;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mRef:Ljava/lang/ref/WeakReference;


# direct methods
.method public constructor <init>(Lcom/miui/maml/folme/MamlTransitionListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 7
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    .line 12
    :cond_0
    return-void
    .line 14
.end method


# virtual methods
.method public getListener()Lcom/miui/maml/folme/MamlTransitionListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/folme/TransitionListenerWrapper;->mRef:Ljava/lang/ref/WeakReference;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/miui/maml/folme/MamlTransitionListener;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/folme/MamlTransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/folme/TransitionListenerWrapper;->getListener()Lcom/miui/maml/folme/MamlTransitionListener;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/folme/MamlTransitionListener;->onUpdate(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method
