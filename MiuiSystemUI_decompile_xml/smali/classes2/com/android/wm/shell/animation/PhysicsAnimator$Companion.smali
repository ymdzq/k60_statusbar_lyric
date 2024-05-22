.class public abstract Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;
    .locals 2

    .line 1
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimatorKt;->animators:Ljava/util/WeakHashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    sget-object v1, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 10
    check-cast v1, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion$instanceConstructor$1;

    .line 12
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    new-instance v1, Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 17
    invoke-direct {v1, p0}, Lcom/android/wm/shell/animation/PhysicsAnimator;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p0, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    :cond_0
    invoke-virtual {v0, p0}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    check-cast p0, Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 29
    return-object p0
    .line 31
.end method
