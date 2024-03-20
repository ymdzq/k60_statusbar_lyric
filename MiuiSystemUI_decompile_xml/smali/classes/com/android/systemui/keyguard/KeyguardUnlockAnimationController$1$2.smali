.class public final Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->$r8$classId:I

    .line 2
    const-string v0, "KeyguardUnlock"

    .line 4
    const/4 v1, 0x0

    .line 6
    packed-switch p1, :pswitch_data_0

    .line 7
    goto :goto_1

    .line 10
    :pswitch_0
    const-string/jumbo p1, "wallpaperCannedUnlockAnimator#onAnimationEnd"

    .line 11
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 19
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 25
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 27
    return-void

    .line 30
    :pswitch_1
    iget-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 31
    iget p1, p1, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindAlpha:F

    .line 33
    const/4 v2, 0x0

    .line 35
    cmpg-float v2, p1, v2

    .line 36
    if-nez v2, :cond_0

    .line 38
    const/4 v1, 0x1

    .line 40
    :cond_0
    if-eqz v1, :cond_1

    .line 41
    const-string/jumbo p1, "surfaceBehindAlphaAnimator#onAnimationEnd"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 49
    const/4 p1, 0x0

    .line 51
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->surfaceBehindRemoteAnimationTargets:[Landroid/view/RemoteAnimationTarget;

    .line 52
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->wallpaperTargets:[Landroid/view/RemoteAnimationTarget;

    .line 54
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 56
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 58
    move-result-object p0

    .line 61
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 62
    invoke-virtual {p0}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->finishSurfaceBehindRemoteAnimation()V

    .line 64
    goto :goto_0

    .line 67
    :cond_1
    new-instance p0, Ljava/lang/StringBuilder;

    .line 68
    const-string/jumbo v1, "skip finishSurfaceBehindRemoteAnimation surfaceBehindAlpha="

    .line 70
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p0

    .line 82
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :goto_0
    return-void

    .line 86
    :goto_1
    const-string/jumbo p1, "surfaceBehindEntryAnimator#onAnimationEnd"

    .line 87
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController$1$2;->this$0:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 93
    iput-boolean v1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->playingCannedUnlockAnimation:Z

    .line 95
    iget-object p0, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->keyguardViewMediator:Ldagger/Lazy;

    .line 97
    invoke-interface {p0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 99
    move-result-object p0

    .line 102
    check-cast p0, Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 103
    invoke-virtual {p0, v1}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->exitKeyguardAndFinishSurfaceBehindRemoteAnimation(Z)V

    .line 105
    return-void

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 110
.end method
