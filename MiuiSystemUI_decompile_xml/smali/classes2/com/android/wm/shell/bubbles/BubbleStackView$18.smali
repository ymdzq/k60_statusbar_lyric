.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$18;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

.field public final synthetic val$after:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;Lcom/android/wm/shell/bubbles/BubbleStackView$$ExternalSyntheticLambda8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;->val$after:Ljava/lang/Runnable;

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
    iget-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimating:Z

    .line 5
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;->val$after:Ljava/lang/Runnable;

    .line 7
    if-eqz p0, :cond_0

    .line 9
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$18;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mScrimAnimating:Z

    .line 5
    return-void
    .line 7
.end method
