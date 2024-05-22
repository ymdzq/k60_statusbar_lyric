.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController$$ExternalSyntheticLambda1;->f$1:Z

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->shouldShow()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleController;->mStackView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 17
    if-eqz v0, :cond_1

    .line 19
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mHandler:Landroid/os/Handler;

    .line 21
    new-instance v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;

    .line 23
    invoke-direct {v2, v0, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Z)V

    .line 25
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    :cond_1
    return-void
    .line 31
.end method
