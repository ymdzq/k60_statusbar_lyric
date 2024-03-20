.class public final Lcom/android/settingslib/animation/AppearAnimationUtils$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$endRunnable:Ljava/lang/Runnable;

.field public final synthetic val$targetAlpha:F

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;FLjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    .line 2
    iput p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    .line 4
    iput-object p3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

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
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$view:Landroid/view/View;

    .line 2
    iget v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$targetAlpha:F

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 6
    iget-object p0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils$2;->val$endRunnable:Ljava/lang/Runnable;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
