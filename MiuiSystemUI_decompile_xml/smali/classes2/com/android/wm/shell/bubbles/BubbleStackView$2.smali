.class public final Lcom/android/wm/shell/bubbles/BubbleStackView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleStackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 8
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdater:Lcom/android/wm/shell/bubbles/BubbleStackView$2;

    .line 10
    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 12
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 15
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleStackView;->updateExpandedView()V

    .line 17
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView$2;->this$0:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 20
    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mViewUpdatedRequested:Z

    .line 23
    const/4 p0, 0x1

    .line 25
    return p0
    .line 26
.end method
