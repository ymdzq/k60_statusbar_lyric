.class public final synthetic Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/keyguard/KeyguardPatternView;


# direct methods
.method public synthetic constructor <init>(Lcom/android/keyguard/KeyguardPatternView;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPatternView;

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
    iget v0, p0, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    .line 9
    sget v0, Lcom/android/keyguard/KeyguardPatternView;->$r8$clinit:I

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 15
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimationUtils:Lcom/android/settingslib/animation/AppearAnimationUtils;

    .line 18
    iget-object v2, p0, Lcom/android/keyguard/KeyguardPatternView;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 20
    invoke-virtual {v2}, Lcom/android/keyguard/widget/MiuiLockPatternView;->getCellStates()[[Lcom/android/keyguard/widget/MiuiLockPatternView$CellState;

    .line 22
    move-result-object v2

    .line 25
    new-instance v3, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v3, p0, v1}, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/KeyguardPatternView;I)V

    .line 28
    invoke-virtual {v0, v2, v3, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 31
    return-void

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$$ExternalSyntheticLambda0;->f$0:Lcom/android/keyguard/KeyguardPatternView;

    .line 35
    sget v0, Lcom/android/keyguard/KeyguardPatternView;->$r8$clinit:I

    .line 37
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 39
    const/4 v0, 0x0

    .line 42
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mAppearAnimating:Z

    .line 43
    iget-boolean v1, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimatePending:Z

    .line 45
    if-eqz v1, :cond_0

    .line 47
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearAnimatePending:Z

    .line 49
    iget-object v0, p0, Lcom/android/keyguard/KeyguardInputView;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 51
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mNeedsSlowUnlockTransition:Z

    .line 53
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView;->mDisappearFinishRunnable:Ljava/lang/Runnable;

    .line 55
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardPatternView;->startDisappearAnimation(Ljava/lang/Runnable;)V

    .line 57
    :cond_0
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method
