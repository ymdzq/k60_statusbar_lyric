.class public final Lcom/android/wm/shell/common/split/SplitLayout$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic val$dividerPos:I

.field public final synthetic val$finishCallback:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILcom/android/wm/shell/sosc/SoScStageCoordinator$$ExternalSyntheticLambda9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->val$dividerPos:I

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->val$finishCallback:Ljava/lang/Runnable;

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
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->val$dividerPos:I

    .line 4
    iput v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$3;->val$finishCallback:Ljava/lang/Runnable;

    .line 11
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 13
    return-void
    .line 16
.end method
