.class public final Lmiuix/androidbasewidget/widget/SpringScroller;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCurrX:D

.field public mCurrY:D

.field public mCurrentTime:J

.field public mEndX:D

.field public mEndY:D

.field public mFinished:Z

.field public mLastStep:Z

.field public mOrientation:I

.field public mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

.field public mStartTime:J

.field public mStartX:D

.field public mStartY:D

.field public mVelocity:D


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final computeScrollOffset()Z
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 4
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_8

    .line 7
    iget-boolean v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 9
    if-eqz v1, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    iget-boolean v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    .line 15
    const/4 v3, 0x1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    iput-boolean v3, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mFinished:Z

    .line 20
    iget-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    .line 22
    iput-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 24
    iget-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    .line 26
    iput-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 28
    return v3

    .line 30
    :cond_1
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    .line 31
    move-result-wide v4

    .line 34
    iput-wide v4, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    .line 35
    iget-wide v6, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    .line 37
    sub-long/2addr v4, v6

    .line 39
    long-to-float v1, v4

    .line 40
    const/high16 v4, 0x447a0000    # 1000.0f

    .line 41
    div-float/2addr v1, v4

    .line 43
    const v4, 0x3c83126f    # 0.016f

    .line 44
    invoke-static {v1, v4}, Ljava/lang/Math;->min(FF)F

    .line 47
    move-result v1

    .line 50
    const/4 v5, 0x0

    .line 51
    cmpl-float v5, v1, v5

    .line 52
    if-nez v5, :cond_2

    .line 54
    goto :goto_0

    .line 56
    :cond_2
    move v4, v1

    .line 57
    :goto_0
    iget-wide v5, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrentTime:J

    .line 58
    iput-wide v5, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartTime:J

    .line 60
    iget v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mOrientation:I

    .line 62
    const/4 v5, 0x2

    .line 64
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    .line 65
    if-ne v1, v5, :cond_5

    .line 67
    iget-object v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 69
    iget-wide v8, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 71
    iget-wide v10, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndY:D

    .line 73
    iget-wide v12, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    .line 75
    float-to-double v4, v4

    .line 77
    iget-wide v14, v1, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    .line 78
    mul-double/2addr v14, v4

    .line 80
    sub-double v14, v6, v14

    .line 81
    mul-double/2addr v14, v8

    .line 83
    iget-wide v8, v1, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    .line 84
    sub-double v16, v10, v12

    .line 86
    mul-double v16, v16, v8

    .line 88
    mul-double v8, v16, v4

    .line 90
    double-to-float v1, v8

    .line 92
    float-to-double v8, v1

    .line 93
    add-double/2addr v14, v8

    .line 94
    mul-double/2addr v4, v14

    .line 95
    add-double/2addr v4, v12

    .line 96
    iput-wide v4, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 97
    iput-wide v14, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 99
    sub-double/2addr v4, v10

    .line 101
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 102
    move-result-wide v4

    .line 105
    cmpg-double v1, v4, v6

    .line 106
    if-gez v1, :cond_3

    .line 108
    move v2, v3

    .line 110
    :cond_3
    if-eqz v2, :cond_4

    .line 111
    iput-boolean v3, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    .line 113
    goto :goto_1

    .line 115
    :cond_4
    iget-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrY:D

    .line 116
    iput-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartY:D

    .line 118
    goto :goto_1

    .line 120
    :cond_5
    iget-object v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mSpringOperator:Lmiuix/androidbasewidget/widget/SpringOperator;

    .line 121
    iget-wide v8, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 123
    iget-wide v10, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mEndX:D

    .line 125
    iget-wide v12, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    .line 127
    float-to-double v4, v4

    .line 129
    iget-wide v14, v1, Lmiuix/androidbasewidget/widget/SpringOperator;->damping:D

    .line 130
    mul-double/2addr v14, v4

    .line 132
    sub-double v14, v6, v14

    .line 133
    mul-double/2addr v14, v8

    .line 135
    iget-wide v8, v1, Lmiuix/androidbasewidget/widget/SpringOperator;->tension:D

    .line 136
    sub-double v16, v10, v12

    .line 138
    mul-double v16, v16, v8

    .line 140
    mul-double v8, v16, v4

    .line 142
    double-to-float v1, v8

    .line 144
    float-to-double v8, v1

    .line 145
    add-double/2addr v14, v8

    .line 146
    mul-double/2addr v4, v14

    .line 147
    add-double/2addr v4, v12

    .line 148
    iput-wide v4, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 149
    iput-wide v14, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mVelocity:D

    .line 151
    sub-double/2addr v4, v10

    .line 153
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    .line 154
    move-result-wide v4

    .line 157
    cmpg-double v1, v4, v6

    .line 158
    if-gez v1, :cond_6

    .line 160
    move v2, v3

    .line 162
    :cond_6
    if-eqz v2, :cond_7

    .line 163
    iput-boolean v3, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mLastStep:Z

    .line 165
    goto :goto_1

    .line 167
    :cond_7
    iget-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mCurrX:D

    .line 168
    iput-wide v1, v0, Lmiuix/androidbasewidget/widget/SpringScroller;->mStartX:D

    .line 170
    :goto_1
    return v3

    .line 172
    :cond_8
    :goto_2
    return v2
    .line 173
.end method
