.class public final Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic $anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

.field public final synthetic $property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public final synthetic this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/animation/PhysicsAnimator;Landroidx/dynamicanimation/animation/FloatPropertyCompat;Landroidx/dynamicanimation/animation/DynamicAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 8

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->this$0:Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 2
    iget-object v0, p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->internalListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 4
    new-instance v7, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;

    .line 6
    iget-object v2, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 8
    iget-object v6, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 10
    move-object v1, v7

    .line 12
    move v3, p2

    .line 13
    move v4, p3

    .line 14
    move v5, p4

    .line 15
    invoke-direct/range {v1 .. v6}, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2$1;-><init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;ZFFLandroidx/dynamicanimation/animation/DynamicAnimation;)V

    .line 16
    const/4 p2, 0x1

    .line 19
    invoke-static {v0, v7, p2}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->filterInPlace$CollectionsKt__MutableCollectionsKt(Ljava/util/List;Lkotlin/jvm/functions/Function1;Z)Z

    .line 20
    iget-object p2, p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->springAnimations:Landroid/util/ArrayMap;

    .line 23
    iget-object p3, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$property:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 25
    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object p4

    .line 30
    iget-object p0, p0, Lcom/android/wm/shell/animation/PhysicsAnimator$configureDynamicAnimation$2;->$anim:Landroidx/dynamicanimation/animation/DynamicAnimation;

    .line 31
    invoke-static {p4, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 33
    move-result p4

    .line 36
    if-eqz p4, :cond_0

    .line 37
    invoke-virtual {p2, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    :cond_0
    iget-object p1, p1, Lcom/android/wm/shell/animation/PhysicsAnimator;->flingAnimations:Landroid/util/ArrayMap;

    .line 42
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object p2

    .line 47
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 51
    if-eqz p0, :cond_1

    .line 52
    invoke-virtual {p1, p3}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    :cond_1
    return-void
    .line 57
.end method
