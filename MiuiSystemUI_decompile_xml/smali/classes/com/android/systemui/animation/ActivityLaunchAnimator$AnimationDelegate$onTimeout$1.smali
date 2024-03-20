.class public final Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const-string v3, "ActivityLaunchAnimator"

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 8
    goto :goto_1

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;->this$0:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 14
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->cancelled:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    const-string v0, "Remote animation timed out"

    .line 21
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    iput-boolean v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->timedOut:Z

    .line 26
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 28
    invoke-interface {p0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 30
    const/4 p0, 0x0

    .line 33
    sput-boolean p0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->animationPending:Z

    .line 34
    :goto_0
    return-void

    .line 36
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;->this$0:Ljava/lang/Object;

    .line 37
    check-cast p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$Runner;->delegate:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->timedOut:Z

    .line 43
    if-eqz v0, :cond_1

    .line 45
    goto :goto_2

    .line 47
    :cond_1
    const-string v0, "Remote animation was cancelled"

    .line 48
    invoke-static {v3, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iput-boolean v2, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->cancelled:Z

    .line 53
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->onTimeout:Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate$onTimeout$1;

    .line 55
    iget-object v3, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->launchContainer:Landroid/view/ViewGroup;

    .line 57
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 59
    iget-object v0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->animation:Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;

    .line 62
    if-eqz v0, :cond_2

    .line 64
    iget-object v3, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$cancelled:Lkotlin/jvm/internal/Ref$BooleanRef;

    .line 66
    iput-boolean v2, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 68
    iget-object v0, v0, Lcom/android/systemui/animation/LaunchAnimator$startAnimation$3;->$animator:Landroid/animation/ValueAnimator;

    .line 70
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 72
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/animation/ActivityLaunchAnimator$AnimationDelegate;->controller:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 75
    invoke-interface {p0, v1}, Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;->onLaunchAnimationCancelled(Ljava/lang/Boolean;)V

    .line 77
    :goto_2
    return-void

    .line 80
    nop

    .line 81
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 82
.end method
