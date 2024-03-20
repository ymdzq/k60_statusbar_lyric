.class final Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

.field final synthetic $canceled:Z

.field final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field final synthetic $value:F

.field final synthetic $velocity:F


# direct methods
.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 2
    iput-boolean p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    .line 4
    iput p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    .line 6
    iput p4, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    .line 8
    iput-object p5, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 10
    const/4 p1, 0x1

    .line 12
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 14

    .line 1
    check-cast p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;

    .line 2
    iget-object v7, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 4
    iget-boolean v8, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$canceled:Z

    .line 6
    iget v9, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$value:F

    .line 8
    iget v10, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$velocity:F

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 12
    instance-of p0, p0, Landroidx/dynamicanimation/animation/FlingAnimation;

    .line 14
    iget-object v0, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->properties:Ljava/util/Set;

    .line 16
    invoke-interface {v0, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    goto :goto_1

    .line 24
    :cond_0
    iget v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    .line 25
    add-int/lit8 v1, v1, -0x1

    .line 27
    iput v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->numPropertiesAnimating:I

    .line 29
    invoke-virtual {p1}, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->maybeDispatchUpdates()V

    .line 31
    iget-object v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->undispatchedUpdates:Landroid/util/ArrayMap;

    .line 34
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_2

    .line 40
    iget-object v2, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->updateListeners:Ljava/util/List;

    .line 42
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v2

    .line 47
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_1

    .line 52
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v3

    .line 57
    check-cast v3, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;

    .line 58
    new-instance v4, Landroid/util/ArrayMap;

    .line 60
    invoke-direct {v4}, Landroid/util/ArrayMap;-><init>()V

    .line 62
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 68
    invoke-virtual {v4, v7, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v4, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    .line 72
    invoke-interface {v3, v4}, Lcom/android/wm/shell/animation/PhysicsAnimator$UpdateListener;->onAnimationUpdateForProperty(Ljava/lang/Object;)V

    .line 74
    goto :goto_0

    .line 77
    :cond_1
    invoke-virtual {v1, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    :cond_2
    iget-object v11, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 81
    invoke-virtual {v11, v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->arePropertiesAnimating(Ljava/util/Set;)Z

    .line 83
    move-result v0

    .line 86
    xor-int/lit8 v12, v0, 0x1

    .line 87
    iget-object v0, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endListeners:Ljava/util/List;

    .line 89
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v13

    .line 94
    :cond_3
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v0

    .line 98
    if-eqz v0, :cond_4

    .line 99
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v0

    .line 104
    check-cast v0, Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;

    .line 105
    iget-object v1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->target:Ljava/lang/Object;

    .line 107
    move-object v2, v7

    .line 109
    move v3, p0

    .line 110
    move v4, v8

    .line 111
    move v5, v9

    .line 112
    move v6, v10

    .line 113
    invoke-interface/range {v0 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$EndListener;->onAnimationEnd(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZZFF)V

    .line 114
    invoke-virtual {v11, v7}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    .line 117
    move-result v0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    :goto_1
    const/4 v12, 0x0

    .line 123
    goto :goto_3

    .line 124
    :cond_4
    if-eqz v12, :cond_5

    .line 125
    if-nez v8, :cond_5

    .line 127
    iget-object p0, p1, Lcom/android/wm/shell/animation/PhysicsAnimator$InternalListener;->endActions:Ljava/util/List;

    .line 129
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object p0

    .line 134
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result p1

    .line 138
    if-eqz p1, :cond_5

    .line 139
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 144
    check-cast p1, Lkotlin/jvm/functions/Function0;

    .line 145
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 147
    goto :goto_2

    .line 150
    :cond_5
    :goto_3
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 151
    move-result-object p0

    .line 154
    return-object p0
    .line 155
.end method
