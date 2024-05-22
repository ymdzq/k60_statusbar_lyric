.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

.field public final synthetic f$1:Z


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;->f$1:Z

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;

    .line 2
    iget-boolean p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView$$ExternalSyntheticLambda2;->f$1:Z

    .line 4
    sget v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->$r8$clinit:I

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 11
    const-string/jumbo v2, "showOrHideBubbleTemporary: isShow = "

    .line 13
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    const-string v2, "MiuiBubbleStackView"

    .line 26
    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mBubbleData:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;

    .line 31
    invoke-virtual {v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubbleData;->getBubbles()Ljava/util/List;

    .line 33
    move-result-object v1

    .line 36
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 37
    move-result-object v1

    .line 40
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v3

    .line 44
    if-eqz v3, :cond_2

    .line 45
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 47
    move-result-object v3

    .line 50
    check-cast v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 51
    iget-object v4, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 53
    if-eqz p0, :cond_1

    .line 55
    const/4 v5, 0x0

    .line 57
    goto :goto_1

    .line 58
    :cond_1
    const/16 v5, 0x8

    .line 59
    :goto_1
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 61
    iget-object v3, v3, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mMessageView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 64
    if-eqz v3, :cond_0

    .line 66
    if-nez p0, :cond_0

    .line 68
    invoke-virtual {v3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->hideFlyout()V

    .line 70
    goto :goto_0

    .line 73
    :cond_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 74
    const-string v1, "bubble touchable region : "

    .line 76
    invoke-direct {p0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 78
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->mTempRegion:Landroid/graphics/Region;

    .line 81
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "\tBubbleCount="

    .line 86
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    invoke-virtual {v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleStackView;->getBubbleCount()I

    .line 91
    move-result v0

    .line 94
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object p0

    .line 101
    invoke-static {v2, p0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void
    .line 105
.end method
