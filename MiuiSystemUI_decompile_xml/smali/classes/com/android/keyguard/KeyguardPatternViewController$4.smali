.class public final Lcom/android/keyguard/KeyguardPatternViewController$4;
.super Landroid/os/CountDownTimer;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPatternViewController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternViewController;J)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 2
    const-wide/16 v0, 0x3e8

    .line 4
    invoke-direct {p0, p2, p3, v0, v1}, Landroid/os/CountDownTimer;-><init>(JJ)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onFinish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/KeyguardPatternViewController;->mLockPatternView:Lcom/android/keyguard/widget/MiuiLockPatternView;

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 7
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternViewController$4;->this$0:Lcom/android/keyguard/KeyguardPatternViewController;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    return-void
    .line 15
.end method

.method public final onTick(J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
