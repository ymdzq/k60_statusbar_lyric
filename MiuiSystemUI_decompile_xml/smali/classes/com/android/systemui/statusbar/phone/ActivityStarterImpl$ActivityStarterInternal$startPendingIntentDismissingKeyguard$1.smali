.class public final Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $animate:Z

.field public final synthetic $animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

.field public final synthetic $collapse:Z

.field public final synthetic $intent:Landroid/app/PendingIntent;

.field public final synthetic $intentSentUiThreadCallback:Ljava/lang/Runnable;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

.field public final synthetic this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;Landroid/app/PendingIntent;Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;ZZLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intent:Landroid/app/PendingIntent;

    .line 6
    iput-object p4, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 8
    iput-boolean p5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$animate:Z

    .line 10
    iput-boolean p6, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$collapse:Z

    .line 12
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intentSentUiThreadCallback:Ljava/lang/Runnable;

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$0:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$animationController:Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intent:Landroid/app/PendingIntent;

    .line 6
    invoke-virtual {v2}, Landroid/app/PendingIntent;->isActivity()Z

    .line 8
    move-result v2

    .line 11
    const/4 v3, 0x1

    .line 12
    invoke-virtual {v0, v1, v3, v2}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal;->wrapAnimationController(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZZ)Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 17
    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 19
    iget-boolean v2, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$animate:Z

    .line 21
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intent:Landroid/app/PendingIntent;

    .line 23
    invoke-virtual {v3}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    .line 25
    move-result-object v3

    .line 28
    new-instance v4, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;

    .line 29
    iget-object v5, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 31
    iget-object v6, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intent:Landroid/app/PendingIntent;

    .line 33
    invoke-direct {v4, v5, v6}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1$1;-><init>(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;Landroid/app/PendingIntent;)V

    .line 35
    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/android/systemui/animation/ActivityLaunchAnimator;->startPendingIntentWithAnimation(Lcom/android/systemui/animation/ActivityLaunchAnimator$Controller;ZLjava/lang/String;Lcom/android/systemui/animation/ActivityLaunchAnimator$PendingIntentStarter;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 38
    goto :goto_0

    .line 41
    :catch_0
    move-exception v0

    .line 42
    new-instance v1, Ljava/lang/StringBuilder;

    .line 43
    const-string v2, "Sending intent failed: "

    .line 45
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 50
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    move-result-object v0

    .line 56
    const-string v1, "ActivityStarterImpl"

    .line 57
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$collapse:Z

    .line 62
    if-nez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 66
    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->access$getCentralSurfaces(Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;)Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 68
    move-result-object v0

    .line 71
    if-eqz v0, :cond_0

    .line 72
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 74
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanelOnMainThread()V

    .line 76
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intent:Landroid/app/PendingIntent;

    .line 79
    invoke-virtual {v0}, Landroid/app/PendingIntent;->isActivity()Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 87
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->assistManagerLazy:Ldagger/Lazy;

    .line 89
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 91
    move-result-object v0

    .line 94
    check-cast v0, Lcom/android/systemui/assist/AssistManager;

    .line 95
    iget-object v0, v0, Lcom/android/systemui/assist/AssistManager;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 97
    invoke-virtual {v0}, Lcom/android/internal/app/AssistUtils;->hideCurrentSession()V

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->$intentSentUiThreadCallback:Ljava/lang/Runnable;

    .line 102
    if-eqz v0, :cond_2

    .line 104
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl$ActivityStarterInternal$startPendingIntentDismissingKeyguard$1;->this$1:Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;

    .line 106
    const/4 v1, 0x0

    .line 108
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/phone/ActivityStarterImpl;->postOnUiThread(ILjava/lang/Runnable;)V

    .line 109
    :cond_2
    return-void
    .line 112
.end method
