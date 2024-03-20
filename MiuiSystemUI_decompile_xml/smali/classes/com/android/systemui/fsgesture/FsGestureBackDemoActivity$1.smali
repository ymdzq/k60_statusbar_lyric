.class public final Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F

    .line 6
    move-result v0

    .line 9
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    .line 10
    move-result v1

    .line 13
    const/4 v2, 0x2

    .line 14
    const/4 v3, 0x1

    .line 15
    if-eqz p1, :cond_9

    .line 16
    if-eq p1, v3, :cond_5

    .line 18
    if-eq p1, v2, :cond_0

    .line 20
    const/4 v1, 0x3

    .line 22
    if-eq p1, v1, :cond_5

    .line 23
    goto/16 :goto_3

    .line 25
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 27
    iget v4, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 29
    if-nez v4, :cond_1

    .line 31
    goto/16 :goto_3

    .line 33
    :cond_1
    iget v4, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 35
    if-ne v4, v3, :cond_2

    .line 37
    iget v4, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    .line 39
    sub-float/2addr v0, v4

    .line 41
    goto :goto_0

    .line 42
    :cond_2
    iget v4, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    .line 43
    sub-float v0, v4, v0

    .line 45
    :goto_0
    iput v0, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    .line 47
    iget p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    .line 49
    sub-float/2addr v1, p1

    .line 51
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    .line 52
    const/high16 p1, 0x41a00000    # 20.0f

    .line 55
    cmpl-float p1, v0, p1

    .line 57
    if-ltz p1, :cond_e

    .line 59
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 61
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 63
    if-ne v1, v3, :cond_3

    .line 65
    iput v2, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 67
    :cond_3
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionMove(F)V

    .line 71
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 74
    move-result-wide v1

    .line 77
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 78
    move-result-wide p1

    .line 81
    sub-long/2addr v1, p1

    .line 82
    long-to-int p1, v1

    .line 83
    int-to-float p1, p1

    .line 84
    div-float p1, v0, p1

    .line 85
    float-to-int p1, p1

    .line 87
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 88
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 90
    invoke-static {v0, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    .line 92
    move-result p1

    .line 95
    if-eqz p1, :cond_4

    .line 96
    sget-object p1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_BACK:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 98
    goto :goto_1

    .line 100
    :cond_4
    sget-object p1, Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;->READY_STATE_NONE:Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;

    .line 101
    :goto_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->setReadyFinish(Lcom/android/systemui/fsgesture/GestureBackArrowView$ReadyState;)V

    .line 103
    goto/16 :goto_3

    .line 106
    :cond_5
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 108
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 110
    if-nez v1, :cond_6

    .line 112
    goto/16 :goto_3

    .line 114
    :cond_6
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 116
    if-ne v1, v3, :cond_7

    .line 118
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    .line 120
    sub-float/2addr v0, v1

    .line 122
    goto :goto_2

    .line 123
    :cond_7
    iget v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    .line 124
    sub-float v0, v1, v0

    .line 126
    :goto_2
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 128
    invoke-static {v0}, Lcom/android/systemui/fsgesture/GesturesBackController;->convertOffset(F)F

    .line 130
    move-result v0

    .line 133
    const/4 v1, 0x0

    .line 134
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionUp(FLcom/android/systemui/fsgesture/GestureStubView$1;)V

    .line 135
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getEventTime()J

    .line 138
    move-result-wide v0

    .line 141
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getDownTime()J

    .line 142
    move-result-wide p1

    .line 145
    sub-long/2addr v0, p1

    .line 146
    long-to-int p1, v0

    .line 147
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 148
    iget p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mOffsetX:F

    .line 150
    int-to-float p1, p1

    .line 152
    div-float p1, p2, p1

    .line 153
    float-to-int p1, p1

    .line 155
    invoke-static {p2, p1}, Lcom/android/systemui/fsgesture/GesturesBackController;->isFinished(FI)Z

    .line 156
    move-result p1

    .line 159
    iget-object p2, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 160
    if-nez p2, :cond_8

    .line 162
    goto :goto_3

    .line 164
    :cond_8
    new-array p2, v2, [F

    .line 165
    fill-array-data p2, :array_0

    .line 167
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 170
    move-result-object p2

    .line 173
    const-wide/16 v0, 0xc8

    .line 174
    invoke-virtual {p2, v0, v1}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 176
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;

    .line 179
    invoke-direct {v0, p0}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V

    .line 181
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 184
    new-instance v0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;

    .line 187
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$5;-><init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;Z)V

    .line 189
    invoke-virtual {p2, v0}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 192
    invoke-virtual {p2}, Landroid/animation/ValueAnimator;->start()V

    .line 195
    goto :goto_3

    .line 198
    :cond_9
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 199
    iget p2, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 201
    const/4 v4, 0x0

    .line 203
    if-ne p2, v2, :cond_a

    .line 204
    return v4

    .line 206
    :cond_a
    iput v0, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownX:F

    .line 207
    iput v1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDownY:F

    .line 209
    iget p2, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mStatus:I

    .line 211
    if-ne p2, v3, :cond_b

    .line 213
    const/high16 v5, 0x428c0000    # 70.0f

    .line 215
    cmpg-float v5, v0, v5

    .line 217
    if-ltz v5, :cond_c

    .line 219
    :cond_b
    if-ne p2, v2, :cond_d

    .line 221
    iget p2, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayWidth:I

    .line 223
    add-int/lit8 p2, p2, -0x46

    .line 225
    int-to-float p2, p2

    .line 227
    cmpl-float p2, v0, p2

    .line 228
    if-lez p2, :cond_d

    .line 230
    :cond_c
    iget p2, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDisplayHeight:I

    .line 232
    div-int/lit8 p2, p2, 0x5

    .line 234
    mul-int/2addr p2, v2

    .line 236
    int-to-float p2, p2

    .line 237
    cmpl-float p2, v1, p2

    .line 238
    if-lez p2, :cond_d

    .line 240
    iput v3, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 242
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 244
    const/4 p2, 0x0

    .line 246
    const/high16 v0, -0x40800000    # -1.0f

    .line 247
    invoke-virtual {p1, v1, p2, v0}, Lcom/android/systemui/fsgesture/GestureBackArrowView;->onActionDown(FFF)V

    .line 249
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$1;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 252
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mFsGestureDemoSwipeView:Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;

    .line 254
    invoke-virtual {p0}, Lcom/android/systemui/fsgesture/FsGestureDemoSwipeView;->cancelAnimation()V

    .line 256
    goto :goto_3

    .line 259
    :cond_d
    iput v4, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mGestureStatus:I

    .line 260
    :cond_e
    :goto_3
    return v3

    .line 262
    nop

    .line 263
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 264
.end method
