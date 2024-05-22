.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic val$config:Lmiuix/animation/base/AnimConfig;

.field public final synthetic val$onFinished:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;Lmiuix/animation/base/AnimConfig;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;->val$onFinished:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onComplete(Ljava/lang/Object;)V
    .locals 1

    .line 1
    const-string p1, "MiuiBubbleAnimator"

    .line 2
    const-string v0, "animMoveBubbleTo onComplete"

    .line 4
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;->val$config:Lmiuix/animation/base/AnimConfig;

    .line 9
    filled-new-array {p0}, [Lmiuix/animation/listener/TransitionListener;

    .line 11
    move-result-object v0

    .line 14
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->removeListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator$2;->val$onFinished:Ljava/lang/Runnable;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
