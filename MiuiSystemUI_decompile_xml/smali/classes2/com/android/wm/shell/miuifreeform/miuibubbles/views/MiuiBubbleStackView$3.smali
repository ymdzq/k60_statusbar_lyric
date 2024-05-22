.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 4
    invoke-virtual {v0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbleWithView(Landroid/view/View;)Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 6
    move-result-object v0

    .line 9
    sget v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    const-string v2, "onClick: "

    .line 14
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    const-string v2, "MiuiBubbleStackView"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    if-nez v0, :cond_0

    .line 31
    return-void

    .line 33
    :cond_0
    new-instance v1, Landroid/graphics/Rect;

    .line 34
    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getTranslationX()F

    .line 39
    move-result v3

    .line 42
    float-to-int v3, v3

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getTranslationY()F

    .line 44
    move-result v4

    .line 47
    float-to-int v4, v4

    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 49
    move-result v5

    .line 52
    add-int/2addr v5, v3

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 54
    move-result p1

    .line 57
    add-int/2addr p1, v4

    .line 58
    invoke-virtual {v1, v3, v4, v5, p1}, Landroid/graphics/Rect;->set(IIII)V

    .line 59
    iget-object p1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 62
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/animation/MiuiBubbleAnimator;->resetEdgeAlpha(Landroid/view/View;)V

    .line 64
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 67
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mController:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 69
    iget-object v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 71
    iget v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->key:I

    .line 73
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mPinHandler:Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;

    .line 75
    const/4 v4, 0x1

    .line 77
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModePinHandler;->unPinFloatingWindow(Landroid/graphics/Rect;IZ)Z

    .line 78
    move-result p1

    .line 81
    new-instance v1, Ljava/lang/StringBuilder;

    .line 82
    const-string v3, "onClick unpin "

    .line 84
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v1

    .line 95
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    if-eqz p1, :cond_1

    .line 99
    goto :goto_0

    .line 101
    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 102
    const-string v1, "onClick: change mode failed, "

    .line 104
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object p1

    .line 115
    invoke-static {v2, p1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object p1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 119
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$3;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 121
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 123
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDelayAlpha:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    .line 125
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 127
    :goto_0
    return-void
    .line 130
.end method
