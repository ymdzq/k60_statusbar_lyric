.class public final Landroidx/constraintlayout/motion/widget/KeyPosition;
.super Landroidx/constraintlayout/motion/widget/Key;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mAltPercentX:F

.field public mAltPercentY:F

.field public mCurveFit:I

.field public mDrawPath:I

.field public mPathMotionArc:I

.field public mPercentHeight:F

.field public mPercentWidth:F

.field public mPercentX:F

.field public mPercentY:F

.field public mPositionType:I

.field public mTransitionEasing:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/constraintlayout/motion/widget/Key;-><init>()V

    .line 2
    const/4 v0, -0x1

    .line 5
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 9
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 11
    const/4 v0, 0x0

    .line 13
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 14
    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 16
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 18
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 20
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 22
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 24
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 26
    iput v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    .line 28
    iput v0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 30
    return-void
    .line 32
.end method


# virtual methods
.method public final addValues(Ljava/util/HashMap;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final clone()Landroidx/constraintlayout/motion/widget/Key;
    .locals 2

    .line 2
    new-instance v0, Landroidx/constraintlayout/motion/widget/KeyPosition;

    invoke-direct {v0}, Landroidx/constraintlayout/motion/widget/KeyPosition;-><init>()V

    .line 3
    invoke-super {v0, p0}, Landroidx/constraintlayout/motion/widget/Key;->copy(Landroidx/constraintlayout/motion/widget/Key;)Landroidx/constraintlayout/motion/widget/Key;

    .line 4
    iget-object v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    iput-object v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 5
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 6
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 7
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    const/high16 v1, 0x7fc00000    # Float.NaN

    .line 8
    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 9
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 10
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 11
    iget v1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    iput v1, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentX:F

    .line 12
    iget p0, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    iput p0, v0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mAltPercentY:F

    return-object v0
.end method

.method public final bridge synthetic clone()Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroidx/constraintlayout/motion/widget/KeyPosition;->clone()Landroidx/constraintlayout/motion/widget/Key;

    move-result-object p0

    return-object p0
.end method

.method public final bridge synthetic getAttributeNames(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final load(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .line 1
    sget-object v0, Landroidx/constraintlayout/widget/R$styleable;->KeyPosition:[I

    .line 2
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    .line 4
    move-result-object p1

    .line 7
    sget-object p2, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 8
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->getIndexCount()I

    .line 10
    move-result p2

    .line 13
    const/4 v0, 0x0

    .line 14
    move v1, v0

    .line 15
    :goto_0
    const-string v2, "KeyPosition"

    .line 16
    const/4 v3, -0x1

    .line 18
    if-ge v1, p2, :cond_4

    .line 19
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->getIndex(I)I

    .line 21
    move-result v4

    .line 24
    sget-object v5, Landroidx/constraintlayout/motion/widget/KeyPosition$Loader;->sAttrMap:Landroid/util/SparseIntArray;

    .line 25
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 27
    move-result v6

    .line 30
    const/4 v7, 0x3

    .line 31
    packed-switch v6, :pswitch_data_0

    .line 32
    new-instance v3, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v6, "unused attribute 0x"

    .line 37
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 43
    move-result-object v6

    .line 46
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 47
    const-string v6, "   "

    .line 50
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v5, v4}, Landroid/util/SparseIntArray;->get(I)I

    .line 55
    move-result v4

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 59
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 62
    move-result-object v3

    .line 65
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    goto/16 :goto_1

    .line 69
    :pswitch_0
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 71
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 73
    move-result v2

    .line 76
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 77
    goto/16 :goto_1

    .line 79
    :pswitch_1
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 81
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 83
    move-result v2

    .line 86
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 87
    goto/16 :goto_1

    .line 89
    :pswitch_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 91
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 93
    move-result v2

    .line 96
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPathMotionArc:I

    .line 97
    goto/16 :goto_1

    .line 99
    :pswitch_3
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 101
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 103
    move-result v2

    .line 106
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPositionType:I

    .line 107
    goto/16 :goto_1

    .line 109
    :pswitch_4
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 111
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 113
    move-result v2

    .line 116
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 117
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 119
    goto/16 :goto_1

    .line 121
    :pswitch_5
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 123
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 125
    move-result v2

    .line 128
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 129
    goto/16 :goto_1

    .line 131
    :pswitch_6
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 133
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 135
    move-result v2

    .line 138
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 139
    goto :goto_1

    .line 141
    :pswitch_7
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 142
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 144
    move-result v2

    .line 147
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 148
    goto :goto_1

    .line 150
    :pswitch_8
    iget v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    .line 151
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 153
    move-result v2

    .line 156
    iput v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mCurveFit:I

    .line 157
    goto :goto_1

    .line 159
    :pswitch_9
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 160
    move-result-object v2

    .line 163
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 164
    if-ne v2, v7, :cond_0

    .line 166
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 168
    move-result-object v2

    .line 171
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 172
    goto :goto_1

    .line 174
    :cond_0
    sget-object v2, Landroidx/constraintlayout/core/motion/utils/Easing;->NAMED_EASING:[Ljava/lang/String;

    .line 175
    invoke-virtual {p1, v4, v0}, Landroid/content/res/TypedArray;->getInteger(II)I

    .line 177
    move-result v3

    .line 180
    aget-object v2, v2, v3

    .line 181
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 183
    goto :goto_1

    .line 185
    :pswitch_a
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 186
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 188
    move-result v2

    .line 191
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 192
    goto :goto_1

    .line 194
    :pswitch_b
    sget-boolean v2, Landroidx/constraintlayout/motion/widget/MotionLayout;->IS_IN_EDIT_MODE:Z

    .line 195
    if-eqz v2, :cond_1

    .line 197
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 199
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 201
    move-result v2

    .line 204
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 205
    if-ne v2, v3, :cond_3

    .line 207
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v2

    .line 212
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 213
    goto :goto_1

    .line 215
    :cond_1
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->peekValue(I)Landroid/util/TypedValue;

    .line 216
    move-result-object v2

    .line 219
    iget v2, v2, Landroid/util/TypedValue;->type:I

    .line 220
    if-ne v2, v7, :cond_2

    .line 222
    invoke-virtual {p1, v4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 224
    move-result-object v2

    .line 227
    iput-object v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetString:Ljava/lang/String;

    .line 228
    goto :goto_1

    .line 230
    :cond_2
    iget v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 231
    invoke-virtual {p1, v4, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 233
    move-result v2

    .line 236
    iput v2, p0, Landroidx/constraintlayout/motion/widget/Key;->mTargetId:I

    .line 237
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 239
    goto/16 :goto_0

    .line 241
    :cond_4
    iget p0, p0, Landroidx/constraintlayout/motion/widget/Key;->mFramePosition:I

    .line 243
    if-ne p0, v3, :cond_5

    .line 245
    const-string p0, "no frame position"

    .line 247
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_5
    return-void

    .line 252
    nop

    .line 253
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 254
.end method

.method public final setValue(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, -0x1

    .line 6
    sparse-switch v0, :sswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :sswitch_0
    const-string v0, "percentY"

    .line 11
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 13
    move-result p2

    .line 16
    if-nez p2, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x6

    .line 20
    goto :goto_0

    .line 21
    :sswitch_1
    const-string v0, "percentX"

    .line 22
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result p2

    .line 27
    if-nez p2, :cond_1

    .line 28
    goto :goto_0

    .line 30
    :cond_1
    const/4 v1, 0x5

    .line 31
    goto :goto_0

    .line 32
    :sswitch_2
    const-string/jumbo v0, "sizePercent"

    .line 33
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result p2

    .line 39
    if-nez p2, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    const/4 v1, 0x4

    .line 43
    goto :goto_0

    .line 44
    :sswitch_3
    const-string v0, "drawPath"

    .line 45
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 47
    move-result p2

    .line 50
    if-nez p2, :cond_3

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    const/4 v1, 0x3

    .line 54
    goto :goto_0

    .line 55
    :sswitch_4
    const-string v0, "percentHeight"

    .line 56
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result p2

    .line 61
    if-nez p2, :cond_4

    .line 62
    goto :goto_0

    .line 64
    :cond_4
    const/4 v1, 0x2

    .line 65
    goto :goto_0

    .line 66
    :sswitch_5
    const-string v0, "percentWidth"

    .line 67
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p2

    .line 72
    if-nez p2, :cond_5

    .line 73
    goto :goto_0

    .line 75
    :cond_5
    const/4 v1, 0x1

    .line 76
    goto :goto_0

    .line 77
    :sswitch_6
    const-string/jumbo v0, "transitionEasing"

    .line 78
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p2

    .line 84
    if-nez p2, :cond_6

    .line 85
    goto :goto_0

    .line 87
    :cond_6
    const/4 v1, 0x0

    .line 88
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 89
    goto :goto_2

    .line 92
    :pswitch_0
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 93
    move-result p1

    .line 96
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentY:F

    .line 97
    goto :goto_2

    .line 99
    :pswitch_1
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 100
    move-result p1

    .line 103
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentX:F

    .line 104
    goto :goto_2

    .line 106
    :pswitch_2
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 107
    move-result p1

    .line 110
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 111
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 113
    goto :goto_2

    .line 115
    :pswitch_3
    instance-of p2, p1, Ljava/lang/Integer;

    .line 116
    if-eqz p2, :cond_7

    .line 118
    check-cast p1, Ljava/lang/Integer;

    .line 120
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 122
    move-result p1

    .line 125
    goto :goto_1

    .line 126
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 127
    move-result-object p1

    .line 130
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 131
    move-result p1

    .line 134
    :goto_1
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mDrawPath:I

    .line 135
    goto :goto_2

    .line 137
    :pswitch_4
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 138
    move-result p1

    .line 141
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentHeight:F

    .line 142
    goto :goto_2

    .line 144
    :pswitch_5
    invoke-static {p1}, Landroidx/constraintlayout/motion/widget/Key;->toFloat(Ljava/lang/Object;)F

    .line 145
    move-result p1

    .line 148
    iput p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mPercentWidth:F

    .line 149
    goto :goto_2

    .line 151
    :pswitch_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 152
    move-result-object p1

    .line 155
    iput-object p1, p0, Landroidx/constraintlayout/motion/widget/KeyPosition;->mTransitionEasing:Ljava/lang/String;

    .line 156
    :goto_2
    return-void

    .line 158
    nop

    .line 159
    :sswitch_data_0
    .sparse-switch
        -0x6c0d7d20 -> :sswitch_6
        -0x4330437f -> :sswitch_5
        -0x3ca72634 -> :sswitch_4
        -0x314b3c77 -> :sswitch_3
        -0xbefb6fc -> :sswitch_2
        0x198424b3 -> :sswitch_1
        0x198424b4 -> :sswitch_0
    .end sparse-switch

    .line 160
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 190
.end method
