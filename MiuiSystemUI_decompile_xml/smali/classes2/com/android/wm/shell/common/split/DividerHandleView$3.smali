.class public final Lcom/android/wm/shell/common/split/DividerHandleView$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
