.class public final Landroidx/constraintlayout/motion/widget/ViewTransition;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClearsTag:I

.field public final mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

.field public final mContext:Landroid/content/Context;

.field public mDefaultInterpolator:I

.field public mDefaultInterpolatorID:I

.field public mDefaultInterpolatorString:Ljava/lang/String;

.field public mDisabled:Z

.field public mDuration:I

.field public mId:I

.field public mIfTagNotSet:I

.field public mIfTagSet:I

.field public final mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

.field public mOnStateTransition:I

.field public mPathMotionArc:I

.field public mSetsTag:I

.field public mSharedValueID:I

.field public mSharedValueTarget:I

.field public mTargetId:I

.field public mTargetString:Ljava/lang/String;

.field public mUpDuration:I

.field public mViewTransitionMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 10

    .line 1
    const-string v0, "Error parsing XML resource"

    .line 2
    const-string v1, "ViewTransition"

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    const/4 v2, -0x1

    .line 9
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 10
    const/4 v3, 0x0

    .line 12
    iput-boolean v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 13
    iput v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 15
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 17
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 19
    iput v3, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 21
    const/4 v4, 0x0

    .line 23
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 24
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 26
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 28
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 30
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 32
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 34
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 36
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 38
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    .line 40
    :try_start_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    .line 42
    move-result v4

    .line 45
    :goto_0
    const/4 v5, 0x1

    .line 46
    if-eq v4, v5, :cond_8

    .line 47
    const/4 v6, 0x3

    .line 49
    const/4 v7, 0x2

    .line 50
    if-eq v4, v7, :cond_1

    .line 51
    if-eq v4, v6, :cond_0

    .line 53
    goto/16 :goto_3

    .line 55
    :cond_0
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 57
    move-result-object v4

    .line 60
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 61
    move-result v4

    .line 64
    if-eqz v4, :cond_7

    .line 65
    return-void

    .line 67
    :cond_1
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 68
    move-result-object v4

    .line 71
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    .line 72
    move-result v8

    .line 75
    const/4 v9, 0x4

    .line 76
    sparse-switch v8, :sswitch_data_0

    .line 77
    goto :goto_1

    .line 80
    :sswitch_0
    const-string v8, "CustomAttribute"

    .line 81
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result v8

    .line 86
    if-eqz v8, :cond_2

    .line 87
    move v8, v6

    .line 89
    goto :goto_2

    .line 90
    :sswitch_1
    const-string v8, "CustomMethod"

    .line 91
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 93
    move-result v8

    .line 96
    if-eqz v8, :cond_2

    .line 97
    move v8, v9

    .line 99
    goto :goto_2

    .line 100
    :sswitch_2
    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 101
    move-result v8

    .line 104
    if-eqz v8, :cond_2

    .line 105
    move v8, v3

    .line 107
    goto :goto_2

    .line 108
    :sswitch_3
    const-string v8, "KeyFrameSet"

    .line 109
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result v8

    .line 114
    if-eqz v8, :cond_2

    .line 115
    move v8, v5

    .line 117
    goto :goto_2

    .line 118
    :sswitch_4
    const-string v8, "ConstraintOverride"

    .line 119
    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 121
    move-result v8

    .line 124
    if-eqz v8, :cond_2

    .line 125
    move v8, v7

    .line 127
    goto :goto_2

    .line 128
    :cond_2
    :goto_1
    move v8, v2

    .line 129
    :goto_2
    if-eqz v8, :cond_6

    .line 130
    if-eq v8, v5, :cond_5

    .line 132
    if-eq v8, v7, :cond_4

    .line 134
    if-eq v8, v6, :cond_3

    .line 136
    if-eq v8, v9, :cond_3

    .line 138
    new-instance v5, Ljava/lang/StringBuilder;

    .line 140
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 142
    invoke-static {}, Landroidx/constraintlayout/motion/widget/Debug;->getLoc()Ljava/lang/String;

    .line 145
    move-result-object v6

    .line 148
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v6, " unknown tag "

    .line 152
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object v4

    .line 163
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    new-instance v4, Ljava/lang/StringBuilder;

    .line 167
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 169
    const-string v5, ".xml:"

    .line 172
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->getLineNumber()I

    .line 177
    move-result v5

    .line 180
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 181
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 184
    move-result-object v4

    .line 187
    invoke-static {v1, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    goto :goto_3

    .line 191
    :cond_3
    iget-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 192
    iget-object v4, v4, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 194
    invoke-static {p1, p2, v4}, Landroidx/constraintlayout/widget/ConstraintAttribute;->parse(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;Ljava/util/HashMap;)V

    .line 196
    goto :goto_3

    .line 199
    :cond_4
    invoke-static {p1, p2}, Landroidx/constraintlayout/widget/ConstraintSet;->buildDelta(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 200
    move-result-object v4

    .line 203
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 204
    goto :goto_3

    .line 206
    :cond_5
    new-instance v4, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 207
    invoke-direct {v4, p1, p2}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 209
    iput-object v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 212
    goto :goto_3

    .line 214
    :cond_6
    invoke-virtual {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/ViewTransition;->parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V

    .line 215
    :cond_7
    :goto_3
    invoke-interface {p2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 218
    move-result v4
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    goto/16 :goto_0

    .line 222
    :catch_0
    move-exception p0

    .line 224
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 225
    goto :goto_4

    .line 228
    :catch_1
    move-exception p0

    .line 229
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 230
    :cond_8
    :goto_4
    return-void

    .line 233
    :sswitch_data_0
    .sparse-switch
        -0x74f4db17 -> :sswitch_4
        -0x49df9cec -> :sswitch_3
        0x3b205fa -> :sswitch_2
        0x15d883d2 -> :sswitch_1
        0x6acd460b -> :sswitch_0
    .end sparse-switch
    .line 234
.end method


# virtual methods
.method public final varargs applyTransition(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionLayout;ILandroidx/constraintlayout/widget/ConstraintSet;[Landroid/view/View;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    move/from16 v2, p3

    .line 6
    move-object/from16 v3, p4

    .line 8
    move-object/from16 v4, p5

    .line 10
    iget-boolean v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 12
    if-eqz v5, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget v5, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    .line 17
    const/4 v6, -0x1

    .line 19
    const/4 v7, 0x1

    .line 20
    iget-object v8, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mKeyFrames:Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 21
    const/4 v9, 0x2

    .line 23
    const/4 v10, 0x0

    .line 24
    if-ne v5, v9, :cond_c

    .line 25
    aget-object v2, v4, v10

    .line 27
    new-instance v12, Landroidx/constraintlayout/motion/widget/MotionController;

    .line 29
    invoke-direct {v12, v2}, Landroidx/constraintlayout/motion/widget/MotionController;-><init>(Landroid/view/View;)V

    .line 31
    iget-object v3, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStartMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 34
    const/4 v4, 0x0

    .line 36
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mTime:F

    .line 37
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionPaths;->mPosition:F

    .line 39
    iput-boolean v7, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mNoMovement:Z

    .line 41
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 43
    move-result v5

    .line 46
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 47
    move-result v10

    .line 50
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 51
    move-result v11

    .line 54
    int-to-float v11, v11

    .line 55
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 56
    move-result v13

    .line 59
    int-to-float v13, v13

    .line 60
    invoke-virtual {v3, v5, v10, v11, v13}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 61
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 64
    move-result v3

    .line 67
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 68
    move-result v5

    .line 71
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 72
    move-result v10

    .line 75
    int-to-float v10, v10

    .line 76
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 77
    move-result v11

    .line 80
    int-to-float v11, v11

    .line 81
    iget-object v13, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mEndMotionPath:Landroidx/constraintlayout/motion/widget/MotionPaths;

    .line 82
    invoke-virtual {v13, v3, v5, v10, v11}, Landroidx/constraintlayout/motion/widget/MotionPaths;->setBounds(FFFF)V

    .line 84
    iget-object v3, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mStartPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 87
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 89
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 92
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 95
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 98
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 101
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 104
    move-result v5

    .line 107
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 108
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 110
    move-result v5

    .line 113
    if-eqz v5, :cond_1

    .line 114
    move v5, v4

    .line 116
    goto :goto_0

    .line 117
    :cond_1
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 118
    move-result v5

    .line 121
    :goto_0
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 122
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 124
    move-result v5

    .line 127
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 128
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 130
    move-result v5

    .line 133
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 134
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    .line 136
    move-result v5

    .line 139
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 140
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    .line 142
    move-result v5

    .line 145
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 146
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 148
    move-result v5

    .line 151
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 152
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    .line 154
    move-result v5

    .line 157
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 158
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    .line 160
    move-result v5

    .line 163
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 164
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    .line 166
    move-result v5

    .line 169
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 170
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 172
    move-result v5

    .line 175
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 176
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 178
    move-result v5

    .line 181
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 182
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    .line 184
    move-result v5

    .line 187
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 188
    iget-object v3, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mEndPoint:Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;

    .line 190
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 192
    invoke-virtual {v2}, Landroid/view/View;->getX()F

    .line 195
    invoke-virtual {v2}, Landroid/view/View;->getY()F

    .line 198
    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    .line 201
    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    .line 204
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 207
    move-result v5

    .line 210
    iput v5, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mVisibility:I

    .line 211
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    .line 213
    move-result v5

    .line 216
    if-eqz v5, :cond_2

    .line 217
    goto :goto_1

    .line 219
    :cond_2
    invoke-virtual {v2}, Landroid/view/View;->getAlpha()F

    .line 220
    move-result v4

    .line 223
    :goto_1
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mAlpha:F

    .line 224
    invoke-virtual {v2}, Landroid/view/View;->getElevation()F

    .line 226
    move-result v4

    .line 229
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mElevation:F

    .line 230
    invoke-virtual {v2}, Landroid/view/View;->getRotation()F

    .line 232
    move-result v4

    .line 235
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotation:F

    .line 236
    invoke-virtual {v2}, Landroid/view/View;->getRotationX()F

    .line 238
    move-result v4

    .line 241
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mRotationX:F

    .line 242
    invoke-virtual {v2}, Landroid/view/View;->getRotationY()F

    .line 244
    move-result v4

    .line 247
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->rotationY:F

    .line 248
    invoke-virtual {v2}, Landroid/view/View;->getScaleX()F

    .line 250
    move-result v4

    .line 253
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleX:F

    .line 254
    invoke-virtual {v2}, Landroid/view/View;->getScaleY()F

    .line 256
    move-result v4

    .line 259
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mScaleY:F

    .line 260
    invoke-virtual {v2}, Landroid/view/View;->getPivotX()F

    .line 262
    move-result v4

    .line 265
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotX:F

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->getPivotY()F

    .line 268
    move-result v4

    .line 271
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mPivotY:F

    .line 272
    invoke-virtual {v2}, Landroid/view/View;->getTranslationX()F

    .line 274
    move-result v4

    .line 277
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationX:F

    .line 278
    invoke-virtual {v2}, Landroid/view/View;->getTranslationY()F

    .line 280
    move-result v4

    .line 283
    iput v4, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationY:F

    .line 284
    invoke-virtual {v2}, Landroid/view/View;->getTranslationZ()F

    .line 286
    move-result v2

    .line 289
    iput v2, v3, Landroidx/constraintlayout/motion/widget/MotionConstrainedPoint;->mTranslationZ:F

    .line 290
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 292
    move-result-object v2

    .line 295
    iget-object v3, v8, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    .line 296
    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    move-result-object v2

    .line 301
    check-cast v2, Ljava/util/ArrayList;

    .line 302
    if-eqz v2, :cond_3

    .line 304
    iget-object v3, v12, Landroidx/constraintlayout/motion/widget/MotionController;->mKeyList:Ljava/util/ArrayList;

    .line 306
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 308
    :cond_3
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getWidth()I

    .line 311
    move-result v2

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getHeight()I

    .line 315
    move-result v3

    .line 318
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    .line 319
    move-result-wide v4

    .line 322
    invoke-virtual {v12, v2, v3, v4, v5}, Landroidx/constraintlayout/motion/widget/MotionController;->setup(IIJ)V

    .line 323
    new-instance v10, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;

    .line 326
    iget v13, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 328
    iget v14, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 330
    iget v15, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 332
    invoke-virtual/range {p2 .. p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 334
    move-result-object v1

    .line 337
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 338
    const/4 v3, -0x2

    .line 340
    if-eq v2, v3, :cond_b

    .line 341
    if-eq v2, v6, :cond_a

    .line 343
    if-eqz v2, :cond_9

    .line 345
    if-eq v2, v7, :cond_8

    .line 347
    if-eq v2, v9, :cond_7

    .line 349
    const/4 v1, 0x4

    .line 351
    if-eq v2, v1, :cond_6

    .line 352
    const/4 v1, 0x5

    .line 354
    if-eq v2, v1, :cond_5

    .line 355
    const/4 v1, 0x6

    .line 357
    if-eq v2, v1, :cond_4

    .line 358
    const/4 v1, 0x0

    .line 360
    goto :goto_2

    .line 361
    :cond_4
    new-instance v1, Landroid/view/animation/AnticipateInterpolator;

    .line 362
    invoke-direct {v1}, Landroid/view/animation/AnticipateInterpolator;-><init>()V

    .line 364
    goto :goto_2

    .line 367
    :cond_5
    new-instance v1, Landroid/view/animation/OvershootInterpolator;

    .line 368
    invoke-direct {v1}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    .line 370
    goto :goto_2

    .line 373
    :cond_6
    new-instance v1, Landroid/view/animation/BounceInterpolator;

    .line 374
    invoke-direct {v1}, Landroid/view/animation/BounceInterpolator;-><init>()V

    .line 376
    goto :goto_2

    .line 379
    :cond_7
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    .line 380
    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    .line 382
    goto :goto_2

    .line 385
    :cond_8
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 386
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 388
    goto :goto_2

    .line 391
    :cond_9
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    .line 392
    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 394
    goto :goto_2

    .line 397
    :cond_a
    iget-object v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 398
    invoke-static {v1}, Landroidx/constraintlayout/core/motion/utils/Easing;->getInterpolator(Ljava/lang/String;)Landroidx/constraintlayout/core/motion/utils/Easing;

    .line 400
    move-result-object v1

    .line 403
    new-instance v2, Landroidx/constraintlayout/motion/widget/ViewTransition$1;

    .line 404
    invoke-direct {v2, v1}, Landroidx/constraintlayout/motion/widget/ViewTransition$1;-><init>(Landroidx/constraintlayout/core/motion/utils/Easing;)V

    .line 406
    move-object/from16 v16, v2

    .line 409
    goto :goto_3

    .line 411
    :cond_b
    iget v2, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 412
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    .line 414
    move-result-object v1

    .line 417
    :goto_2
    move-object/from16 v16, v1

    .line 418
    :goto_3
    iget v1, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 420
    iget v0, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 422
    move-object/from16 v11, p1

    .line 424
    move/from16 v17, v1

    .line 426
    move/from16 v18, v0

    .line 428
    invoke-direct/range {v10 .. v18}, Landroidx/constraintlayout/motion/widget/ViewTransition$Animate;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransitionController;Landroidx/constraintlayout/motion/widget/MotionController;IIILandroid/view/animation/Interpolator;II)V

    .line 430
    return-void

    .line 433
    :cond_c
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mConstraintDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 434
    if-ne v5, v7, :cond_11

    .line 436
    invoke-virtual/range {p2 .. p2}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSetIds()[I

    .line 438
    move-result-object v5

    .line 441
    move v7, v10

    .line 442
    :goto_4
    array-length v11, v5

    .line 443
    if-ge v7, v11, :cond_11

    .line 444
    aget v11, v5, v7

    .line 446
    if-ne v11, v2, :cond_d

    .line 448
    goto :goto_6

    .line 450
    :cond_d
    invoke-virtual {v1, v11}, Landroidx/constraintlayout/motion/widget/MotionLayout;->getConstraintSet(I)Landroidx/constraintlayout/widget/ConstraintSet;

    .line 451
    move-result-object v11

    .line 454
    array-length v12, v4

    .line 455
    move v13, v10

    .line 456
    :goto_5
    if-ge v13, v12, :cond_10

    .line 457
    aget-object v14, v4, v13

    .line 459
    invoke-virtual {v14}, Landroid/view/View;->getId()I

    .line 461
    move-result v14

    .line 464
    invoke-virtual {v11, v14}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 465
    move-result-object v14

    .line 468
    if-eqz v9, :cond_f

    .line 469
    iget-object v15, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 471
    if-eqz v15, :cond_e

    .line 473
    invoke-virtual {v15, v14}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 475
    :cond_e
    iget-object v14, v14, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 478
    iget-object v15, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 480
    invoke-virtual {v14, v15}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 482
    :cond_f
    add-int/lit8 v13, v13, 0x1

    .line 485
    goto :goto_5

    .line 487
    :cond_10
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 488
    goto :goto_4

    .line 490
    :cond_11
    new-instance v5, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 491
    invoke-direct {v5}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 493
    iget-object v7, v5, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 496
    invoke-virtual {v7}, Ljava/util/HashMap;->clear()V

    .line 498
    iget-object v11, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 501
    invoke-virtual {v11}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 503
    move-result-object v11

    .line 506
    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 507
    move-result-object v11

    .line 510
    :goto_7
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    .line 511
    move-result v12

    .line 514
    if-eqz v12, :cond_13

    .line 515
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 517
    move-result-object v12

    .line 520
    check-cast v12, Ljava/lang/Integer;

    .line 521
    iget-object v13, v3, Landroidx/constraintlayout/widget/ConstraintSet;->mConstraints:Ljava/util/HashMap;

    .line 523
    invoke-virtual {v13, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 525
    move-result-object v13

    .line 528
    check-cast v13, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 529
    if-nez v13, :cond_12

    .line 531
    goto :goto_7

    .line 533
    :cond_12
    invoke-virtual {v13}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->clone()Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 534
    move-result-object v13

    .line 537
    invoke-virtual {v7, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 538
    goto :goto_7

    .line 541
    :cond_13
    array-length v7, v4

    .line 542
    move v11, v10

    .line 543
    :goto_8
    if-ge v11, v7, :cond_16

    .line 544
    aget-object v12, v4, v11

    .line 546
    invoke-virtual {v12}, Landroid/view/View;->getId()I

    .line 548
    move-result v12

    .line 551
    invoke-virtual {v5, v12}, Landroidx/constraintlayout/widget/ConstraintSet;->getConstraint(I)Landroidx/constraintlayout/widget/ConstraintSet$Constraint;

    .line 552
    move-result-object v12

    .line 555
    if-eqz v9, :cond_15

    .line 556
    iget-object v13, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mDelta:Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;

    .line 558
    if-eqz v13, :cond_14

    .line 560
    invoke-virtual {v13, v12}, Landroidx/constraintlayout/widget/ConstraintSet$Constraint$Delta;->applyDelta(Landroidx/constraintlayout/widget/ConstraintSet$Constraint;)V

    .line 562
    :cond_14
    iget-object v12, v12, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 565
    iget-object v13, v9, Landroidx/constraintlayout/widget/ConstraintSet$Constraint;->mCustomConstraints:Ljava/util/HashMap;

    .line 567
    invoke-virtual {v12, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 569
    :cond_15
    add-int/lit8 v11, v11, 0x1

    .line 572
    goto :goto_8

    .line 574
    :cond_16
    invoke-virtual {v1, v2, v5}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 575
    const v5, 0x7f0a0a66    # @id/view_transition

    .line 578
    invoke-virtual {v1, v5, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->updateState(ILandroidx/constraintlayout/widget/ConstraintSet;)V

    .line 581
    invoke-virtual {v1, v5, v6, v6}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setState(III)V

    .line 584
    new-instance v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;

    .line 587
    iget-object v5, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mScene:Landroidx/constraintlayout/motion/widget/MotionScene;

    .line 589
    invoke-direct {v3, v5, v2}, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;-><init>(Landroidx/constraintlayout/motion/widget/MotionScene;I)V

    .line 591
    array-length v2, v4

    .line 594
    :goto_9
    if-ge v10, v2, :cond_1a

    .line 595
    aget-object v5, v4, v10

    .line 597
    iget v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 599
    if-eq v7, v6, :cond_17

    .line 601
    const/16 v9, 0x8

    .line 603
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    .line 605
    move-result v7

    .line 608
    iput v7, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDuration:I

    .line 609
    :cond_17
    iget v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 611
    iput v7, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mPathMotionArc:I

    .line 613
    iget v7, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 615
    iget-object v9, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 617
    iget v11, v0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 619
    iput v7, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolator:I

    .line 621
    iput-object v9, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 623
    iput v11, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mDefaultInterpolatorID:I

    .line 625
    invoke-virtual {v5}, Landroid/view/View;->getId()I

    .line 627
    move-result v5

    .line 630
    if-eqz v8, :cond_19

    .line 631
    iget-object v7, v8, Landroidx/constraintlayout/motion/widget/KeyFrames;->mFramesMap:Ljava/util/HashMap;

    .line 633
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 635
    move-result-object v9

    .line 638
    invoke-virtual {v7, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 639
    move-result-object v7

    .line 642
    check-cast v7, Ljava/util/ArrayList;

    .line 643
    new-instance v9, Landroidx/constraintlayout/motion/widget/KeyFrames;

    .line 645
    invoke-direct {v9}, Landroidx/constraintlayout/motion/widget/KeyFrames;-><init>()V

    .line 647
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 650
    move-result-object v7

    .line 653
    :goto_a
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 654
    move-result v11

    .line 657
    if-eqz v11, :cond_18

    .line 658
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 660
    move-result-object v11

    .line 663
    check-cast v11, Landroidx/constraintlayout/motion/widget/Key;

    .line 664
    invoke-virtual {v11}, Landroidx/constraintlayout/motion/widget/Key;->clone()Landroidx/constraintlayout/motion/widget/Key;

    .line 666
    move-result-object v11

    .line 669
    iput v5, v11, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 670
    invoke-virtual {v9, v11}, Landroidx/constraintlayout/motion/widget/KeyFrames;->addKey(Landroidx/constraintlayout/motion/widget/Key;)V

    .line 672
    goto :goto_a

    .line 675
    :cond_18
    iget-object v5, v3, Landroidx/constraintlayout/motion/widget/MotionScene$Transition;->mKeyFramesList:Ljava/util/ArrayList;

    .line 676
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 678
    :cond_19
    add-int/lit8 v10, v10, 0x1

    .line 681
    goto :goto_9

    .line 683
    :cond_1a
    invoke-virtual {v1, v3}, Landroidx/constraintlayout/motion/widget/MotionLayout;->setTransition(Landroidx/constraintlayout/motion/widget/MotionScene$Transition;)V

    .line 684
    new-instance v2, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;

    .line 687
    invoke-direct {v2, v0, v4}, Landroidx/constraintlayout/motion/widget/ViewTransition$$ExternalSyntheticLambda0;-><init>(Landroidx/constraintlayout/motion/widget/ViewTransition;[Landroid/view/View;)V

    .line 689
    const/high16 v0, 0x3f800000    # 1.0f

    .line 692
    invoke-virtual {v1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout;->animateTo(F)V

    .line 694
    iput-object v2, v1, Landroidx/constraintlayout/motion/widget/MotionLayout;->mOnComplete:Ljava/lang/Runnable;

    .line 697
    return-void
    .line 699
.end method

.method public final checkTags(Landroid/view/View;)Z
    .locals 4

    .line 1
    iget v0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, -0x1

    .line 6
    if-ne v0, v3, :cond_0

    .line 7
    :goto_0
    move v0, v2

    .line 9
    goto :goto_1

    .line 10
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    if-eqz v0, :cond_1

    .line 15
    goto :goto_0

    .line 17
    :cond_1
    move v0, v1

    .line 18
    :goto_1
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 19
    if-ne p0, v3, :cond_2

    .line 21
    :goto_2
    move p0, v2

    .line 23
    goto :goto_3

    .line 24
    :cond_2
    invoke-virtual {p1, p0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    if-nez p0, :cond_3

    .line 29
    goto :goto_2

    .line 31
    :cond_3
    move p0, v1

    .line 32
    :goto_3
    if-eqz v0, :cond_4

    .line 33
    if-eqz p0, :cond_4

    .line 35
    move v1, v2

    .line 37
    :cond_4
    return v1
    .line 38
.end method

.method public final matchesView(Landroid/view/View;)Z
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    iget v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 6
    const/4 v2, -0x1

    .line 8
    if-ne v1, v2, :cond_1

    .line 9
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    .line 11
    if-nez v1, :cond_1

    .line 13
    return v0

    .line 15
    :cond_1
    invoke-virtual {p0, p1}, Landroidx/constraintlayout/motion/widget/ViewTransition;->checkTags(Landroid/view/View;)Z

    .line 16
    move-result v1

    .line 19
    if-nez v1, :cond_2

    .line 20
    return v0

    .line 22
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    .line 23
    move-result v1

    .line 26
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 27
    const/4 v3, 0x1

    .line 29
    if-ne v1, v2, :cond_3

    .line 30
    return v3

    .line 32
    :cond_3
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    .line 33
    if-nez v1, :cond_4

    .line 35
    return v0

    .line 37
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 38
    move-result-object v1

    .line 41
    instance-of v1, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 42
    if-eqz v1, :cond_5

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object p1

    .line 49
    check-cast p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 50
    iget-object p1, p1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->constraintTag:Ljava/lang/String;

    .line 52
    if-eqz p1, :cond_5

    .line 54
    iget-object p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    .line 56
    invoke-virtual {p1, p0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 58
    move-result p0

    .line 61
    if-eqz p0, :cond_5

    .line 62
    return v3

    .line 64
    :cond_5
    return v0
    .line 65
.end method

.method public final parseViewTransitionTags(Landroid/content/Context;Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 2
    move-result-object p2

    .line 5
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->ViewTransition:[I

    .line 6
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 12
    move-result p2

    .line 15
    const/4 v0, 0x0

    .line 16
    :goto_0
    if-ge v0, p2, :cond_14

    .line 17
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_0

    .line 23
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 25
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 27
    move-result v1

    .line 30
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 31
    goto/16 :goto_1

    .line 33
    :cond_0
    const/16 v2, 0x8

    .line 35
    const/4 v3, 0x3

    .line 37
    const/4 v4, -0x1

    .line 38
    if-ne v1, v2, :cond_3

    .line 39
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 41
    if-eqz v2, :cond_1

    .line 43
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 45
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 47
    move-result v2

    .line 50
    iput v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 51
    if-ne v2, v4, :cond_13

    .line 53
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    .line 59
    goto/16 :goto_1

    .line 61
    :cond_1
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 63
    move-result-object v2

    .line 66
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 67
    if-ne v2, v3, :cond_2

    .line 69
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 71
    move-result-object v1

    .line 74
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetString:Ljava/lang/String;

    .line 75
    goto/16 :goto_1

    .line 77
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 79
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 81
    move-result v1

    .line 84
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mTargetId:I

    .line 85
    goto/16 :goto_1

    .line 87
    :cond_3
    const/16 v2, 0x9

    .line 89
    if-ne v1, v2, :cond_4

    .line 91
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 93
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 95
    move-result v1

    .line 98
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mOnStateTransition:I

    .line 99
    goto/16 :goto_1

    .line 101
    :cond_4
    const/16 v2, 0xc

    .line 103
    if-ne v1, v2, :cond_5

    .line 105
    iget-boolean v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 107
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 109
    move-result v1

    .line 112
    iput-boolean v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDisabled:Z

    .line 113
    goto/16 :goto_1

    .line 115
    :cond_5
    const/16 v2, 0xa

    .line 117
    if-ne v1, v2, :cond_6

    .line 119
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 121
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 123
    move-result v1

    .line 126
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mPathMotionArc:I

    .line 127
    goto/16 :goto_1

    .line 129
    :cond_6
    const/4 v2, 0x4

    .line 131
    if-ne v1, v2, :cond_7

    .line 132
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 134
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 136
    move-result v1

    .line 139
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDuration:I

    .line 140
    goto/16 :goto_1

    .line 142
    :cond_7
    const/16 v2, 0xd

    .line 144
    if-ne v1, v2, :cond_8

    .line 146
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 148
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 150
    move-result v1

    .line 153
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mUpDuration:I

    .line 154
    goto/16 :goto_1

    .line 156
    :cond_8
    const/16 v2, 0xe

    .line 158
    if-ne v1, v2, :cond_9

    .line 160
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    .line 162
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 164
    move-result v1

    .line 167
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mViewTransitionMode:I

    .line 168
    goto/16 :goto_1

    .line 170
    :cond_9
    const/4 v2, 0x7

    .line 172
    const/4 v5, 0x1

    .line 173
    if-ne v1, v2, :cond_d

    .line 174
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 176
    move-result-object v2

    .line 179
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 180
    const/4 v6, -0x2

    .line 182
    if-ne v2, v5, :cond_a

    .line 183
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 185
    move-result v1

    .line 188
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 189
    if-eq v1, v4, :cond_13

    .line 191
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 193
    goto/16 :goto_1

    .line 195
    :cond_a
    if-ne v2, v3, :cond_c

    .line 197
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 202
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorString:Ljava/lang/String;

    .line 203
    if-eqz v2, :cond_b

    .line 205
    const-string v3, "/"

    .line 207
    invoke-virtual {v2, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 209
    move-result v2

    .line 212
    if-lez v2, :cond_b

    .line 213
    invoke-virtual {p1, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 215
    move-result v1

    .line 218
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolatorID:I

    .line 219
    iput v6, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 221
    goto :goto_1

    .line 223
    :cond_b
    iput v4, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 224
    goto :goto_1

    .line 226
    :cond_c
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 227
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 229
    move-result v1

    .line 232
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mDefaultInterpolator:I

    .line 233
    goto :goto_1

    .line 235
    :cond_d
    const/16 v2, 0xb

    .line 236
    if-ne v1, v2, :cond_e

    .line 238
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 240
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 242
    move-result v1

    .line 245
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSetsTag:I

    .line 246
    goto :goto_1

    .line 248
    :cond_e
    if-ne v1, v3, :cond_f

    .line 249
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 251
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 253
    move-result v1

    .line 256
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mClearsTag:I

    .line 257
    goto :goto_1

    .line 259
    :cond_f
    const/4 v2, 0x6

    .line 260
    if-ne v1, v2, :cond_10

    .line 261
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 263
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 265
    move-result v1

    .line 268
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagSet:I

    .line 269
    goto :goto_1

    .line 271
    :cond_10
    const/4 v2, 0x5

    .line 272
    if-ne v1, v2, :cond_11

    .line 273
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 275
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 277
    move-result v1

    .line 280
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mIfTagNotSet:I

    .line 281
    goto :goto_1

    .line 283
    :cond_11
    const/4 v2, 0x2

    .line 284
    if-ne v1, v2, :cond_12

    .line 285
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 287
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 289
    move-result v1

    .line 292
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueID:I

    .line 293
    goto :goto_1

    .line 295
    :cond_12
    if-ne v1, v5, :cond_13

    .line 296
    iget v2, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 298
    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 300
    move-result v1

    .line 303
    iput v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mSharedValueTarget:I

    .line 304
    :cond_13
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 306
    goto/16 :goto_0

    .line 308
    :cond_14
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 310
    return-void
    .line 313
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "ViewTransition("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mContext:Landroid/content/Context;

    .line 9
    iget p0, p0, Landroidx/constraintlayout/motion/widget/ViewTransition;->mId:I

    .line 11
    invoke-static {p0, v1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(ILandroid/content/Context;)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    const-string p0, ")"

    .line 20
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method
