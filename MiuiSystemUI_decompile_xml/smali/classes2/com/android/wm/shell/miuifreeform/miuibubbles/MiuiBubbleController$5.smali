.class public final Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;
.super Landroid/database/ContentObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final onChange(Z)V
    .locals 2

    .line 1
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->$r8$classId:I

    .line 2
    const/4 v0, 0x1

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->onVisibilityChanged(Z)V

    .line 11
    return-void

    .line 14
    :pswitch_1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->updateBubbleAppStates(Landroid/content/Context;)V

    .line 19
    return-void

    .line 22
    :pswitch_2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 23
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 25
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3$$ExternalSyntheticLambda0;

    .line 27
    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 29
    invoke-virtual {p1, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;->execute(Ljava/lang/Runnable;)V

    .line 32
    return-void

    .line 35
    :pswitch_3
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 36
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mContext:Landroid/content/Context;

    .line 38
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/utils/FocusModeUtils;->hasFinishFocusMode(Landroid/content/Context;)Z

    .line 40
    move-result p1

    .line 43
    xor-int/2addr p1, v0

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 45
    xor-int/2addr p1, v0

    .line 47
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->onVisibilityChanged(Z)V

    .line 48
    return-void

    .line 51
    :goto_0
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$5;->this$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 52
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mMainExecutor:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;

    .line 54
    new-instance v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3$$ExternalSyntheticLambda0;

    .line 56
    const/4 v1, 0x2

    .line 58
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$3$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 59
    invoke-virtual {p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubblesExecutor;->execute(Ljava/lang/Runnable;)V

    .line 62
    return-void

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 66
.end method
