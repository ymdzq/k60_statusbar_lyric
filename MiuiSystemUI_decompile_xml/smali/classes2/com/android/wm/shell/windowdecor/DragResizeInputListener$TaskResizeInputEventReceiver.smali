.class public final Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;
.super Landroid/view/InputEventReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/windowdecor/DragDetector$MotionEventHandler;


# instance fields
.field public final mChoreographer:Landroid/view/Choreographer;

.field public final mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

.field public mConsumeBatchEventScheduled:Z

.field public mShouldHandleEvents:Z

.field public final synthetic this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener;Landroid/view/InputChannel;Landroid/os/Handler;Landroid/view/Choreographer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 2
    invoke-virtual {p3}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object p1

    .line 7
    invoke-direct {p0, p2, p1}, Landroid/view/InputEventReceiver;-><init>(Landroid/view/InputChannel;Landroid/os/Looper;)V

    .line 8
    iput-object p4, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 11
    new-instance p1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {p1, p0}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;)V

    .line 15
    iput-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    .line 18
    return-void
    .line 20
.end method


# virtual methods
.method public final calculateCornersCtrlType(FF)I
    .locals 1

    .line 1
    float-to-int p1, p1

    .line 2
    float-to-int p2, p2

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftTopCornerBounds:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    const/4 p0, 0x5

    .line 14
    return p0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 16
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mLeftBottomCornerBounds:Landroid/graphics/Rect;

    .line 18
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/16 p0, 0x9

    .line 26
    return p0

    .line 28
    :cond_1
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 29
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightTopCornerBounds:Landroid/graphics/Rect;

    .line 31
    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    const/4 p0, 0x6

    .line 39
    return p0

    .line 40
    :cond_2
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mRightBottomCornerBounds:Landroid/graphics/Rect;

    .line 43
    invoke-virtual {p0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    const/16 p0, 0xa

    .line 51
    return p0

    .line 53
    :cond_3
    const/4 p0, 0x0

    .line 54
    return p0
    .line 55
.end method

.method public final calculateResizeHandlesCtrlType(FF)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-gez v1, :cond_0

    .line 5
    const/4 v1, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 10
    iget v2, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskWidth:I

    .line 12
    int-to-float v2, v2

    .line 14
    cmpl-float p1, p1, v2

    .line 15
    if-lez p1, :cond_1

    .line 17
    or-int/lit8 v1, v1, 0x2

    .line 19
    :cond_1
    cmpg-float p1, p2, v0

    .line 21
    if-gez p1, :cond_2

    .line 23
    or-int/lit8 v1, v1, 0x4

    .line 25
    :cond_2
    iget p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mTaskHeight:I

    .line 27
    int-to-float p0, p0

    .line 29
    cmpl-float p0, p2, p0

    .line 30
    if-lez p0, :cond_3

    .line 32
    or-int/lit8 v1, v1, 0x8

    .line 34
    :cond_3
    return v1
    .line 36
.end method

.method public final handleMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getSource()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x1002

    .line 6
    and-int/2addr v0, v1

    .line 8
    const/4 v2, 0x1

    .line 9
    const/4 v3, 0x0

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    move v0, v2

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v3

    .line 15
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 16
    move-result v1

    .line 19
    if-eqz v1, :cond_7

    .line 20
    if-eq v1, v2, :cond_5

    .line 22
    const/4 v0, 0x2

    .line 24
    if-eq v1, v0, :cond_3

    .line 25
    const/4 v0, 0x3

    .line 27
    if-eq v1, v0, :cond_5

    .line 28
    const/4 v0, 0x7

    .line 30
    const/16 v4, 0x3e8

    .line 31
    if-eq v1, v0, :cond_2

    .line 33
    const/16 v0, 0x9

    .line 35
    if-eq v1, v0, :cond_2

    .line 37
    const/16 p1, 0xa

    .line 39
    if-eq v1, p1, :cond_1

    .line 41
    goto/16 :goto_6

    .line 43
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 45
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 47
    invoke-virtual {p0, v4}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 49
    goto/16 :goto_7

    .line 52
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getXCursorPosition()F

    .line 54
    move-result v0

    .line 57
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getYCursorPosition()F

    .line 58
    move-result p1

    .line 61
    invoke-virtual {p0, v0, p1}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 62
    move-result p1

    .line 65
    packed-switch p1, :pswitch_data_0

    .line 66
    :pswitch_0
    goto :goto_1

    .line 69
    :pswitch_1
    const/16 v4, 0x3f8

    .line 70
    goto :goto_1

    .line 72
    :pswitch_2
    const/16 v4, 0x3f9

    .line 73
    goto :goto_1

    .line 75
    :pswitch_3
    const/16 v4, 0x3f7

    .line 76
    goto :goto_1

    .line 78
    :pswitch_4
    const/16 v4, 0x3f6

    .line 79
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 81
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mInputManager:Landroid/hardware/input/InputManager;

    .line 83
    invoke-virtual {p0, v4}, Landroid/hardware/input/InputManager;->setPointerIconType(I)V

    .line 85
    goto/16 :goto_7

    .line 88
    :cond_3
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 90
    if-nez v0, :cond_4

    .line 92
    goto/16 :goto_6

    .line 94
    :cond_4
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 96
    iget v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 98
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 100
    move-result v0

    .line 103
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 104
    move-result v1

    .line 107
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 108
    move-result p1

    .line 111
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 112
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 114
    invoke-interface {p0, v1, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningMove(FF)V

    .line 116
    goto/16 :goto_7

    .line 119
    :cond_5
    iget-boolean v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 121
    if-eqz v0, :cond_6

    .line 123
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 125
    iget v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 127
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    .line 129
    move-result v0

    .line 132
    iget-object v1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 133
    iget-object v1, v1, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 135
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 137
    move-result v4

    .line 140
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 141
    move-result p1

    .line 144
    invoke-interface {v1, v4, p1}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningEnd(FF)V

    .line 145
    :cond_6
    iput-boolean v3, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 148
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 150
    const/4 p1, -0x1

    .line 152
    iput p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 153
    goto :goto_7

    .line 155
    :cond_7
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    .line 156
    move-result v1

    .line 159
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    .line 160
    move-result v4

    .line 163
    if-eqz v0, :cond_9

    .line 164
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    .line 166
    move-result v5

    .line 169
    if-eqz v5, :cond_8

    .line 170
    move v5, v2

    .line 172
    goto :goto_2

    .line 173
    :cond_8
    move v5, v3

    .line 174
    :goto_2
    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 175
    goto :goto_4

    .line 177
    :cond_9
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 178
    move-result v5

    .line 181
    if-eqz v5, :cond_a

    .line 182
    move v5, v2

    .line 184
    goto :goto_3

    .line 185
    :cond_a
    move v5, v3

    .line 186
    :goto_3
    iput-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 187
    :goto_4
    iget-boolean v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mShouldHandleEvents:Z

    .line 189
    if-eqz v5, :cond_c

    .line 191
    iget-object v5, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 193
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    .line 195
    move-result v6

    .line 198
    iput v6, v5, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragPointerId:I

    .line 199
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawX(I)F

    .line 201
    move-result v5

    .line 204
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getRawY(I)F

    .line 205
    move-result p1

    .line 208
    if-eqz v0, :cond_b

    .line 209
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateCornersCtrlType(FF)I

    .line 211
    move-result v0

    .line 214
    goto :goto_5

    .line 215
    :cond_b
    invoke-virtual {p0, v1, v4}, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->calculateResizeHandlesCtrlType(FF)I

    .line 216
    move-result v0

    .line 219
    :goto_5
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 220
    iget-object p0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mCallback:Lcom/android/wm/shell/windowdecor/DragPositioningCallback;

    .line 222
    invoke-interface {p0, v5, p1, v0}, Lcom/android/wm/shell/windowdecor/DragPositioningCallback;->onDragPositioningStart(FFI)V

    .line 224
    goto :goto_7

    .line 227
    :cond_c
    :goto_6
    move v2, v3

    .line 228
    :goto_7
    return v2

    .line 229
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_1
        :pswitch_2
    .end packed-switch
    .line 230
.end method

.method public final onBatchedInputEventPending(I)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mChoreographer:Landroid/view/Choreographer;

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventRunnable:Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver$$ExternalSyntheticLambda0;

    .line 9
    const/4 v1, 0x0

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {p1, v2, v0, v1}, Landroid/view/Choreographer;->postCallback(ILjava/lang/Runnable;Ljava/lang/Object;)V

    .line 13
    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->mConsumeBatchEventScheduled:Z

    .line 17
    :goto_0
    return-void
    .line 19
.end method

.method public final onInputEvent(Landroid/view/InputEvent;)V
    .locals 2

    .line 1
    instance-of v0, p1, Landroid/view/MotionEvent;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener$TaskResizeInputEventReceiver;->this$0:Lcom/android/wm/shell/windowdecor/DragResizeInputListener;

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/windowdecor/DragResizeInputListener;->mDragDetector:Lcom/android/wm/shell/windowdecor/DragDetector;

    .line 10
    move-object v1, p1

    .line 12
    check-cast v1, Landroid/view/MotionEvent;

    .line 13
    invoke-virtual {v0, v1}, Lcom/android/wm/shell/windowdecor/DragDetector;->onMotionEvent(Landroid/view/MotionEvent;)Z

    .line 15
    move-result v0

    .line 18
    :goto_0
    invoke-virtual {p0, p1, v0}, Landroid/view/InputEventReceiver;->finishInputEvent(Landroid/view/InputEvent;Z)V

    .line 19
    return-void
    .line 22
.end method
