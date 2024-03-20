.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 7

    .line 1
    iget v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_1

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 9
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 11
    iget v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    .line 13
    iget v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 15
    int-to-float v2, v2

    .line 17
    sub-float v3, v2, v1

    .line 18
    const/high16 v4, 0x40800000    # 4.0f

    .line 20
    div-float/2addr v3, v4

    .line 22
    add-float/2addr v3, v1

    .line 23
    iput v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailX:F

    .line 24
    iget v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 26
    iget v5, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 28
    int-to-float v5, v5

    .line 30
    sub-float/2addr v5, v1

    .line 31
    div-float/2addr v5, v4

    .line 32
    add-float/2addr v5, v1

    .line 33
    iput v5, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 34
    sub-float/2addr v2, v3

    .line 36
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 37
    move-result v0

    .line 40
    iget-object v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 41
    check-cast v1, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 43
    iget v2, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 45
    int-to-float v2, v2

    .line 47
    iget v1, v1, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFollowTailY:F

    .line 48
    sub-float/2addr v2, v1

    .line 50
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    .line 51
    move-result v1

    .line 54
    mul-float/2addr v0, v0

    .line 55
    mul-float/2addr v1, v1

    .line 56
    add-float/2addr v1, v0

    .line 57
    float-to-double v0, v1

    .line 58
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 59
    move-result-wide v0

    .line 62
    iget-object v2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 63
    check-cast v2, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 65
    iget v3, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 67
    const v4, 0x10003

    .line 69
    const v5, 0x10002

    .line 72
    if-ne v3, v5, :cond_2

    .line 75
    iget v3, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 77
    iget v5, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 79
    add-int/lit16 v5, v5, -0x140

    .line 81
    int-to-float v5, v5

    .line 83
    cmpg-float v3, v3, v5

    .line 84
    if-gez v3, :cond_5

    .line 86
    const-wide/high16 v5, 0x4034000000000000L    # 20.0

    .line 88
    cmpg-double v0, v0, v5

    .line 90
    if-gez v0, :cond_5

    .line 92
    iput v4, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 94
    sget v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->$r8$clinit:I

    .line 96
    const-string v0, "NavStubDemoView"

    .line 98
    const-string v1, "current state mode: StateMode.STATE_TASK_HOLD"

    .line 100
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 105
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 107
    const/4 v1, 0x1

    .line 109
    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 110
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 113
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 115
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsCardContainer:Landroid/widget/LinearLayout;

    .line 117
    const/4 v1, 0x0

    .line 119
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 120
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 123
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 125
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 127
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 129
    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 135
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 137
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 139
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 141
    move-result v0

    .line 144
    if-eqz v0, :cond_1

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 147
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 149
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 151
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 153
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 156
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 158
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 160
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 162
    goto :goto_0

    .line 165
    :cond_2
    if-ne v3, v4, :cond_5

    .line 166
    iget v0, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurrentY:F

    .line 168
    iget v1, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 170
    add-int/lit16 v1, v1, -0xf0

    .line 172
    int-to-float v1, v1

    .line 174
    cmpl-float v0, v0, v1

    .line 175
    if-lez v0, :cond_5

    .line 177
    iput v5, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mStateMode:I

    .line 179
    iget-object v0, v2, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 181
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 183
    move-result v0

    .line 186
    if-nez v0, :cond_3

    .line 187
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 189
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 191
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 193
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isStarted()Z

    .line 195
    move-result v0

    .line 198
    if-eqz v0, :cond_4

    .line 199
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 201
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 203
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 205
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 207
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 210
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 212
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mRecentsAnimator:Landroid/animation/ValueAnimator;

    .line 214
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->reverse()V

    .line 216
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 219
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 221
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mFrameHandler:Landroid/os/Handler;

    .line 223
    const-wide/16 v1, 0x10

    .line 225
    invoke-virtual {v0, p0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 227
    return-void

    .line 230
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 231
    check-cast v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 233
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 235
    iget-object v0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 237
    const/4 v1, 0x2

    .line 239
    invoke-virtual {v0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->prepare(I)V

    .line 240
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$1;->this$0:Ljava/lang/Object;

    .line 243
    check-cast p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;

    .line 245
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$3;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 247
    iget-object p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView;->swipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 249
    invoke-virtual {p0, v1}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->startAnimation(I)V

    .line 251
    return-void

    .line 254
    nop

    .line 255
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 256
.end method
