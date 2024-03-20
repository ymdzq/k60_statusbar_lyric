.class public final synthetic Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->$r8$classId:I

    .line 2
    const-wide/16 v1, 0x12c

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 10
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 12
    new-instance v1, Landroid/graphics/Rect;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 16
    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    .line 18
    move-result v2

    .line 21
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 22
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 24
    move-result p0

    .line 27
    const/4 v3, 0x0

    .line 28
    invoke-direct {v1, v3, v3, v2, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 29
    invoke-static {v1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 35
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setSystemGestureExclusionRects(Ljava/util/List;)V

    .line 36
    return-void

    .line 39
    :pswitch_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 40
    iget-object v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 42
    invoke-virtual {v0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 44
    move-result-object v0

    .line 47
    const/4 v3, 0x0

    .line 48
    invoke-virtual {v0, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 53
    move-result-object v0

    .line 56
    new-instance v1, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;

    .line 57
    const/4 v2, 0x4

    .line 59
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/MagnificationModeSwitch;I)V

    .line 60
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 67
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mIsFadeOutAnimating:Z

    .line 71
    return-void

    .line 73
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 74
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mImageView:Landroid/widget/ImageView;

    .line 76
    invoke-virtual {p0}, Landroid/widget/ImageView;->animate()Landroid/view/ViewPropertyAnimator;

    .line 78
    move-result-object p0

    .line 81
    const/high16 v0, 0x3f800000    # 1.0f

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {p0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 88
    move-result-object p0

    .line 91
    invoke-virtual {p0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 92
    return-void

    .line 95
    :pswitch_3
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 96
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->getDraggableWindowBounds()Landroid/graphics/Rect;

    .line 98
    move-result-object v0

    .line 101
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 102
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v1

    .line 107
    if-eqz v1, :cond_0

    .line 108
    goto :goto_0

    .line 110
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mDraggableWindowBounds:Landroid/graphics/Rect;

    .line 111
    invoke-virtual {v1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 113
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->mToLeftScreenEdge:Z

    .line 116
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->stickToScreenEdge(Z)V

    .line 118
    :goto_0
    return-void

    .line 121
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/accessibility/MagnificationModeSwitch$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/accessibility/MagnificationModeSwitch;

    .line 122
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/MagnificationModeSwitch;->removeButton()V

    .line 124
    return-void

    .line 127
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 128
.end method
