.class public final Lcom/android/wm/shell/common/split/SplitLayout$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/SplitLayout;

.field public final synthetic val$dividerPos:I

.field public final synthetic val$finishCallback:Ljava/util/function/Consumer;

.field public final synthetic val$insets:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/SplitLayout;ILjava/util/function/Consumer;Landroid/graphics/Rect;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    .line 6
    iput-object p4, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    .line 8
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->this$0:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 2
    iget v0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$dividerPos:I

    .line 4
    iput v0, p1, Lcom/android/wm/shell/common/split/SplitLayout;->mDividePosition:I

    .line 6
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/common/split/SplitLayout;->updateBounds(I)V

    .line 8
    iget-object p1, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$finishCallback:Ljava/util/function/Consumer;

    .line 11
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout$2;->val$insets:Landroid/graphics/Rect;

    .line 13
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 15
    return-void
    .line 18
.end method
