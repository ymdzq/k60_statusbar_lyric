.class public final Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $endController:Lcom/android/systemui/animation/LaunchAnimator$Controller;

.field public final synthetic $isExpandingFullyAbove:Z

.field public final synthetic $onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

.field public final synthetic $startController:Lcom/android/systemui/animation/LaunchAnimator$Controller;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/LaunchAnimator$Controller;ZLcom/android/systemui/animation/LaunchAnimator$Controller;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$startController:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$isExpandingFullyAbove:Z

    .line 4
    iput-object p3, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$endController:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$startController:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$isExpandingFullyAbove:Z

    .line 4
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$endController:Lcom/android/systemui/animation/LaunchAnimator$Controller;

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$isExpandingFullyAbove:Z

    .line 11
    invoke-interface {v0, v1}, Lcom/android/systemui/animation/LaunchAnimator$Controller;->onLaunchAnimationEnd(Z)V

    .line 13
    iget-object p0, p0, Lcom/android/systemui/animation/AnimatedDialog$startAnimation$controller$1$onLaunchAnimationEnd$1;->$onLaunchAnimationEnd:Lkotlin/jvm/functions/Function0;

    .line 16
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    return-void
    .line 21
.end method
