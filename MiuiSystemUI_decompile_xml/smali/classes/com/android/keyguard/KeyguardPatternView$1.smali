.class public final Lcom/android/keyguard/KeyguardPatternView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/KeyguardPatternView;

.field public final synthetic val$finishRunnable:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardPatternView;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardPatternView$1;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardPatternView$1;->val$finishRunnable:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    const-string v0, "SecurityPatternView"

    .line 2
    const-string/jumbo v1, "startDisappearAnimation finish"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardPatternView$1;->this$0:Lcom/android/keyguard/KeyguardPatternView;

    .line 10
    sget v1, Lcom/android/keyguard/KeyguardPatternView;->$r8$clinit:I

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setClipChildren(Z)V

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/KeyguardPatternView$1;->val$finishRunnable:Ljava/lang/Runnable;

    .line 18
    if-eqz p0, :cond_0

    .line 20
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
