.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

.field public final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$3;->val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$3;->val$cellState:Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->hwAnimating:Z

    .line 5
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$3;->val$finishRunnable:Ljava/lang/Runnable;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method
