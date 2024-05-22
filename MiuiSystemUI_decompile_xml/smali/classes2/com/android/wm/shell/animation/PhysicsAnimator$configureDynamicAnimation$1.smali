.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;


# instance fields
.field public final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationUpdate(FF)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    iget-object v1, v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_1

    .line 11
    iget-object v3, v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 13
    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v3

    .line 18
    check-cast v3, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;

    .line 19
    iget-object v4, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    .line 21
    iget-object v5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 23
    invoke-interface {v4, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 25
    move-result v4

    .line 28
    if-nez v4, :cond_0

    .line 29
    goto :goto_1

    .line 31
    :cond_0
    new-instance v4, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;

    .line 32
    invoke-direct {v4, p1, p2}, Lcom/android/wm/shell/animation/PhysicsAnimator$AnimationUpdate;-><init>(FF)V

    .line 34
    iget-object v6, v3, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    .line 37
    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    invoke-virtual {v3}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    .line 42
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    return-void
    .line 48
.end method
