.class public final Lcom/android/wm/shell/bubbles/BubbleController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/onehanded/OneHandedTransitionCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onStartFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public final onStopFinished(Landroid/graphics/Rect;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    iget p1, p1, Landroid/graphics/Rect;->top:I

    .line 8
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleStackView;->mDismissView:Lcom/android/wm/shell/bubbles/DismissView;

    .line 10
    const/4 v0, 0x0

    .line 12
    invoke-virtual {p0, v0, v0, v0, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
