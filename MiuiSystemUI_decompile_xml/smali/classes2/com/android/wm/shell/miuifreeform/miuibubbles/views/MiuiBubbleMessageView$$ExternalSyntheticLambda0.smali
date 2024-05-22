.class public final synthetic Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

.field public final synthetic f$1:Landroid/graphics/PointF;

.field public final synthetic f$2:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;Landroid/graphics/PointF;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;Landroid/graphics/PointF;)V
    .locals 1

    .line 2
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->$r8$classId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_2

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    .line 10
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 12
    check-cast p0, Ljava/lang/Runnable;

    .line 14
    sget v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->$r8$clinit:I

    .line 16
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    iget v2, v1, Landroid/graphics/PointF;->y:F

    .line 21
    iget v3, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mBubbleSize:I

    .line 23
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 25
    invoke-virtual {v4}, Landroid/view/ViewGroup;->getHeight()I

    .line 27
    move-result v4

    .line 30
    sub-int/2addr v3, v4

    .line 31
    int-to-float v3, v3

    .line 32
    const/high16 v4, 0x40000000    # 2.0f

    .line 33
    div-float/2addr v3, v4

    .line 35
    add-float/2addr v3, v2

    .line 36
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 37
    iget v2, v1, Landroid/graphics/PointF;->x:F

    .line 40
    const/4 v3, 0x0

    .line 42
    cmpg-float v2, v2, v3

    .line 43
    if-gez v2, :cond_0

    .line 45
    const/4 v2, 0x1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    const/4 v2, 0x0

    .line 49
    :goto_0
    iput-boolean v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->isOnLeft:Z

    .line 50
    iget-object v4, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 52
    if-eqz v2, :cond_1

    .line 54
    const v2, 0x7f0817cc    # @drawable/shape_bubble_message_bg_left 'res/drawable/shape_bubble_message_bg_left.xml'

    .line 56
    goto :goto_1

    .line 59
    :cond_1
    const v2, 0x7f0817cd    # @drawable/shape_bubble_message_bg_right 'res/drawable/shape_bubble_message_bg_right.xml'

    .line 60
    :goto_1
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setBackgroundResource(I)V

    .line 63
    iget v1, v1, Landroid/graphics/PointF;->x:F

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->updateFlyoutX(F)V

    .line 68
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 71
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 73
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getWidth()I

    .line 75
    move-result v2

    .line 78
    iput v2, v1, Landroid/graphics/Point;->x:I

    .line 79
    iget-object v1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageViewSize:Landroid/graphics/Point;

    .line 81
    iget-object v2, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mMessageContainer:Landroid/view/ViewGroup;

    .line 83
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    .line 85
    move-result v2

    .line 88
    iput v2, v1, Landroid/graphics/Point;->y:I

    .line 89
    if-eqz p0, :cond_2

    .line 91
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 93
    :cond_2
    iget-object p0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->mShadowBounds:Landroid/graphics/RectF;

    .line 96
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 98
    move-result v1

    .line 101
    int-to-float v1, v1

    .line 102
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 103
    move-result v0

    .line 106
    int-to-float v0, v0

    .line 107
    invoke-virtual {p0, v3, v3, v1, v0}, Landroid/graphics/RectF;->set(FFFF)V

    .line 108
    return-void

    .line 111
    :goto_2
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;

    .line 112
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$2:Ljava/lang/Object;

    .line 114
    check-cast v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;

    .line 116
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda0;->f$1:Landroid/graphics/PointF;

    .line 118
    sget v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->$r8$clinit:I

    .line 120
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;->updateFlyoutMessage(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble$FlyoutMessage;)V

    .line 122
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda2;

    .line 125
    invoke-direct {v1, v0, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleMessageView;Landroid/graphics/PointF;)V

    .line 127
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 130
    return-void

    .line 133
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 134
.end method
