.class public final Lcom/android/wm/shell/common/split/DividerHandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerHandleView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerHandleView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView$3;->this$0:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerHandleView$3;->this$0:Lcom/android/wm/shell/common/split/DividerHandleView;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerHandleView;->mAnimator:Landroid/animation/AnimatorSet;

    .line 5
    return-void
    .line 7
.end method
