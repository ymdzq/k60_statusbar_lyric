.class public final synthetic Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_3

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 8
    check-cast v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/util/List;

    .line 14
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    const/4 v1, 0x0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 20
    move-result v2

    .line 23
    if-ge v1, v2, :cond_2

    .line 24
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/View;

    .line 30
    const/4 v3, 0x2

    .line 32
    if-ge v1, v3, :cond_0

    .line 33
    iget v3, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mMaxBubbles:I

    .line 35
    iget v4, v0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mElevation:I

    .line 37
    mul-int/2addr v3, v4

    .line 39
    sub-int/2addr v3, v1

    .line 40
    int-to-float v3, v3

    .line 41
    goto :goto_1

    .line 42
    :cond_0
    const/4 v3, 0x0

    .line 43
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setZ(F)V

    .line 44
    check-cast v2, Lcom/android/wm/shell/bubbles/BadgedImageView;

    .line 47
    if-nez v1, :cond_1

    .line 49
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 51
    move-result v3

    .line 54
    xor-int/lit8 v3, v3, 0x1

    .line 55
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BadgedImageView;->showDotAndBadge(Z)V

    .line 57
    goto :goto_2

    .line 60
    :cond_1
    invoke-virtual {v0}, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->isStackOnLeftSide()Z

    .line 61
    move-result v3

    .line 64
    xor-int/lit8 v3, v3, 0x1

    .line 65
    invoke-virtual {v2, v3}, Lcom/android/wm/shell/bubbles/BadgedImageView;->hideDotAndBadge(Z)V

    .line 67
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    return-void

    .line 73
    :goto_3
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$0:Ljava/lang/Object;

    .line 74
    check-cast v0, Landroid/view/View;

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda4;->f$1:Ljava/lang/Object;

    .line 78
    check-cast p0, Ljava/lang/Runnable;

    .line 80
    const v1, 0x7f0a0797    # @id/reorder_animator_tag

    .line 82
    const/4 v2, 0x0

    .line 85
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 86
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 89
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 94
.end method
