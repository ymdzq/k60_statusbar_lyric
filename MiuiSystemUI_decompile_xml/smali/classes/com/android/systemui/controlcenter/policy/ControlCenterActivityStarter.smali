.class public final Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/ActivityStarter;


# instance fields
.field public final actualStarter:Ldagger/Lazy;

.field public final controlCenterController:Ldagger/Lazy;

.field public final handler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/os/Handler;Ldagger/Lazy;Ldagger/Lazy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->handler:Landroid/os/Handler;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->controlCenterController:Ldagger/Lazy;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final collapseControlCenter()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter$collapseControlCenter$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter$collapseControlCenter$1;-><init>(Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->handler:Landroid/os/Handler;

    .line 7
    invoke-virtual {p0, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;ZLjava/lang/String;)V
    .locals 0

    .line 3
    iget-object p4, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {p4}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {p4, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->dismissKeyguardThenExecute(Lcom/android/systemui/plugins/ActivityStarter$OnDismissAction;Ljava/lang/Runnable;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    return-void
.end method

.method public final executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V
    .locals 8

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p0

    move-object v0, p0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-interface/range {v0 .. v7}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZZLjava/lang/String;)V

    return-void
.end method

.method public final postQSRunnableDismissingKeyguard(ZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    .line 4
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    .line 7
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Lcom/android/systemui/plugins/ActivityStarter;

    .line 13
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postQSRunnableDismissingKeyguard(ZLjava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/app/PendingIntent;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ljava/lang/String;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;Z)V
    .locals 1

    .line 3
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {p2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/ActivityStarter;

    const/4 v0, 0x1

    invoke-interface {p2, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;Z)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V
    .locals 1

    .line 11
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Z)V

    .line 12
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V
    .locals 7

    .line 13
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLandroid/os/UserHandle;)V

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZLcom/android/systemui/plugins/ActivityStarter$Callback;)V

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZ)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivity(Landroid/content/Intent;ZZI)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/systemui/plugins/ActivityStarter;->startActivity(Landroid/content/Intent;ZZI)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZ)V
    .locals 0

    .line 1
    return-void
.end method

.method public final startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V
    .locals 10

    move-object v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/android/systemui/plugins/ActivityStarter;

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-interface/range {v1 .. v9}, Lcom/android/systemui/plugins/ActivityStarter;->startActivityDismissingKeyguard(Landroid/content/Intent;ZZZLcom/android/systemui/plugins/ActivityStarter$Callback;ILcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/os/UserHandle;)V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V
    .locals 1

    .line 3
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;)V

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V
    .locals 1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Landroid/view/View;)V

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method

.method public final startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V
    .locals 1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->actualStarter:Ldagger/Lazy;

    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/ActivityStarter;

    invoke-interface {v0, p1, p2, p3}, Lcom/android/systemui/plugins/ActivityStarter;->startPendingIntentDismissingKeyguard(Landroid/app/PendingIntent;Ljava/lang/Runnable;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;)V

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/policy/ControlCenterActivityStarter;->collapseControlCenter()V

    return-void
.end method
