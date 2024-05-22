.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/ActivityLaunchAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onLaunchAnimationEnd()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 20
    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationEnd()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final onLaunchAnimationProgress(F)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 20
    invoke-interface {v0, p1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationProgress(F)V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method

.method public final onLaunchAnimationStart()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$lifecycleListener$1;->this$0:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 4
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;

    .line 20
    invoke-interface {v0}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Listener;->onLaunchAnimationStart()V

    .line 22
    goto :goto_0

    .line 25
    :cond_0
    return-void
    .line 26
.end method
