.class public final Lcom/android/keyguard/widget/MiuiLockPatternView$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

.field public final synthetic val$finishRunnable:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/widget/MiuiLockPatternView;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->val$finishRunnable:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->val$finishRunnable:Ljava/lang/Object;

    .line 8
    check-cast p0, Ljava/lang/Runnable;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 14
    :cond_0
    return-void

    .line 17
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->val$finishRunnable:Ljava/lang/Object;

    .line 18
    check-cast p1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-object v0, p1, Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;->activationAnimator:Landroid/animation/Animator;

    .line 23
    iget-object p0, p0, Lcom/android/keyguard/widget/MiuiLockPatternView$2;->this$0:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 27
    return-void

    .line 30
    nop

    .line 31
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 32
.end method
