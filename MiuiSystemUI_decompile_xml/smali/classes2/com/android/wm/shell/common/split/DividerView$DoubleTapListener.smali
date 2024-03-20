.class public final Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView$DoubleTapListener;->this$0:Lcom/android/wm/shell/common/split/DividerView;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/common/split/DividerView;->mSplitLayout:Lcom/android/wm/shell/common/split/SplitLayout;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/common/split/SplitLayout;->mSplitLayoutHandler:Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;

    .line 8
    invoke-interface {p0}, Lcom/android/wm/shell/common/split/SplitLayout$SplitLayoutHandler;->onDoubleTappedDivider()V

    .line 10
    :cond_0
    const/4 p0, 0x1

    .line 13
    return p0
    .line 14
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method
