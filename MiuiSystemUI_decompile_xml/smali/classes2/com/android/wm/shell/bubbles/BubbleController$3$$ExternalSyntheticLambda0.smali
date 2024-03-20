.class public final synthetic Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:I


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;II)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$1:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$3;

    .line 10
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$1:I

    .line 12
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleController$3;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 14
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 16
    const/4 v2, -0x1

    .line 18
    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 21
    move-result-object v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/BubbleController;->isStackExpanded()Z

    .line 27
    move-result v1

    .line 30
    if-eqz v1, :cond_0

    .line 31
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mStackView:Lcom/android/wm/shell/bubbles/BubbleStackView;

    .line 33
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsExpansionAnimating:Z

    .line 35
    if-nez v3, :cond_0

    .line 37
    iget-boolean v3, v1, Lcom/android/wm/shell/bubbles/BubbleStackView;->mIsBubbleSwitchAnimating:Z

    .line 39
    if-nez v3, :cond_0

    .line 41
    invoke-virtual {v1}, Lcom/android/wm/shell/bubbles/BubbleStackView;->getExpandedBubble()Lcom/android/wm/shell/bubbles/BubbleViewProvider;

    .line 43
    move-result-object v1

    .line 46
    invoke-interface {v1}, Lcom/android/wm/shell/bubbles/BubbleViewProvider;->getTaskId()I

    .line 47
    move-result v1

    .line 50
    goto :goto_0

    .line 51
    :cond_0
    move v1, v2

    .line 52
    :goto_0
    if-eq v1, v2, :cond_1

    .line 53
    if-eq v1, p0, :cond_1

    .line 55
    iget-object p0, v0, Lcom/android/wm/shell/bubbles/BubbleController;->mBubbleData:Lcom/android/wm/shell/bubbles/BubbleData;

    .line 57
    const/4 v0, 0x0

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/bubbles/BubbleData;->setExpanded(Z)V

    .line 60
    :cond_1
    return-void

    .line 63
    :goto_1
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 64
    check-cast v0, Ljava/util/function/IntConsumer;

    .line 66
    iget p0, p0, Lcom/android/wm/shell/bubbles/BubbleController$3$$ExternalSyntheticLambda0;->f$1:I

    .line 68
    invoke-interface {v0, p0}, Ljava/util/function/IntConsumer;->accept(I)V

    .line 70
    return-void

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 74
.end method
