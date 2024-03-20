.class public Lmiuix/animation/physics/SpringAnimationSet;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mAnimationContainer:Ljava/util/List;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    .line 5
    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public cancel()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lmiuix/animation/physics/DynamicAnimation;->cancel()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 36
    :cond_2
    return-void
    .line 39
.end method

.method public endAnimation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_2

    .line 8
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object v0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_1

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    check-cast v1, Lmiuix/animation/physics/SpringAnimation;

    .line 26
    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {v1}, Lmiuix/animation/physics/SpringAnimation;->skipToEnd()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 34
    invoke-interface {p0}, Ljava/util/List;->clear()V

    .line 36
    :cond_2
    return-void
    .line 39
.end method

.method public play(Lmiuix/animation/physics/SpringAnimation;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 4
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public varargs playTogether([Lmiuix/animation/physics/SpringAnimation;)V
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    aget-object v2, p1, v1

    .line 6
    if-eqz v2, :cond_0

    .line 8
    iget-object v3, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 10
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    return-void
    .line 18
.end method

.method public start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_1

    .line 8
    iget-object p0, p0, Lmiuix/animation/physics/SpringAnimationSet;->mAnimationContainer:Ljava/util/List;

    .line 10
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 12
    move-result-object p0

    .line 15
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lmiuix/animation/physics/SpringAnimation;

    .line 26
    if-eqz v0, :cond_0

    .line 28
    invoke-virtual {v0}, Lmiuix/animation/physics/SpringAnimation;->start()V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method
