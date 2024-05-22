.class public final Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mCornerPosition:I

.field public final mPath:Landroid/graphics/Path;

.field public final mRadius:I

.field public final synthetic this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;


# direct methods
.method public static -$$Nest$mcalculateStartPos(Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;Landroid/graphics/Point;)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 5
    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 9
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 11
    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getPrimarySplitSide(Landroid/content/Context;)I

    .line 15
    move-result v0

    .line 18
    const/4 v2, 0x3

    .line 19
    iget v3, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    .line 20
    const/4 v4, 0x0

    .line 22
    iget p0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 23
    const/4 v5, 0x2

    .line 25
    const/4 v6, 0x1

    .line 26
    if-eq v0, v6, :cond_f

    .line 27
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v7

    .line 36
    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getPrimarySplitSide(Landroid/content/Context;)I

    .line 37
    move-result v0

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    goto/16 :goto_a

    .line 43
    :cond_0
    sget v0, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->$r8$clinit:I

    .line 45
    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 51
    move-result-object v0

    .line 54
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 55
    if-ne v0, v5, :cond_1

    .line 57
    move v0, v6

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    move v0, v4

    .line 61
    :goto_0
    if-eqz v0, :cond_8

    .line 62
    if-eqz v3, :cond_3

    .line 64
    if-ne v3, v2, :cond_2

    .line 66
    goto :goto_1

    .line 68
    :cond_2
    move v0, v4

    .line 69
    goto :goto_2

    .line 70
    :cond_3
    :goto_1
    move v0, v6

    .line 71
    :goto_2
    if-eqz v0, :cond_4

    .line 72
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 74
    move-result v0

    .line 77
    div-int/2addr v0, v5

    .line 78
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 79
    div-int/2addr v2, v5

    .line 81
    add-int/2addr v2, v0

    .line 82
    goto :goto_3

    .line 83
    :cond_4
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 84
    move-result v0

    .line 87
    div-int/2addr v0, v5

    .line 88
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 89
    div-int/2addr v2, v5

    .line 91
    sub-int/2addr v0, v2

    .line 92
    sub-int v2, v0, p0

    .line 93
    :goto_3
    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 95
    if-eqz v3, :cond_6

    .line 97
    if-ne v3, v6, :cond_5

    .line 99
    goto :goto_4

    .line 101
    :cond_5
    move v6, v4

    .line 102
    :cond_6
    :goto_4
    if-eqz v6, :cond_7

    .line 103
    goto :goto_5

    .line 105
    :cond_7
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 106
    move-result v0

    .line 109
    sub-int v4, v0, p0

    .line 110
    :goto_5
    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 112
    goto/16 :goto_10

    .line 114
    :cond_8
    if-eqz v3, :cond_a

    .line 116
    if-ne v3, v2, :cond_9

    .line 118
    goto :goto_6

    .line 120
    :cond_9
    move v0, v4

    .line 121
    goto :goto_7

    .line 122
    :cond_a
    :goto_6
    move v0, v6

    .line 123
    :goto_7
    if-eqz v0, :cond_b

    .line 124
    move v0, v4

    .line 126
    goto :goto_8

    .line 127
    :cond_b
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 128
    move-result v0

    .line 131
    sub-int/2addr v0, p0

    .line 132
    :goto_8
    iput v0, p1, Landroid/graphics/Point;->x:I

    .line 133
    if-eqz v3, :cond_c

    .line 135
    if-ne v3, v6, :cond_d

    .line 137
    :cond_c
    move v4, v6

    .line 139
    :cond_d
    if-eqz v4, :cond_e

    .line 140
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 142
    move-result p0

    .line 145
    div-int/2addr p0, v5

    .line 146
    iget v0, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 147
    div-int/2addr v0, v5

    .line 149
    add-int/2addr v0, p0

    .line 150
    goto :goto_9

    .line 151
    :cond_e
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 152
    move-result v0

    .line 155
    div-int/2addr v0, v5

    .line 156
    iget v1, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 157
    div-int/2addr v1, v5

    .line 159
    sub-int/2addr v0, v1

    .line 160
    sub-int/2addr v0, p0

    .line 161
    :goto_9
    iput v0, p1, Landroid/graphics/Point;->y:I

    .line 162
    goto :goto_10

    .line 164
    :cond_f
    :goto_a
    if-eqz v3, :cond_11

    .line 165
    if-ne v3, v2, :cond_10

    .line 167
    goto :goto_b

    .line 169
    :cond_10
    move v0, v4

    .line 170
    goto :goto_c

    .line 171
    :cond_11
    :goto_b
    move v0, v6

    .line 172
    :goto_c
    if-eqz v0, :cond_12

    .line 173
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 175
    move-result v0

    .line 178
    div-int/2addr v0, v5

    .line 179
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 180
    div-int/2addr v2, v5

    .line 182
    add-int/2addr v2, v0

    .line 183
    goto :goto_d

    .line 184
    :cond_12
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    .line 185
    move-result v0

    .line 188
    div-int/2addr v0, v5

    .line 189
    iget v2, v1, Lcom/android/wm/shell/common/split/DividerRoundedCorner;->mDividerWidth:I

    .line 190
    div-int/2addr v2, v5

    .line 192
    sub-int/2addr v0, v2

    .line 193
    sub-int v2, v0, p0

    .line 194
    :goto_d
    iput v2, p1, Landroid/graphics/Point;->x:I

    .line 196
    if-eqz v3, :cond_14

    .line 198
    if-ne v3, v6, :cond_13

    .line 200
    goto :goto_e

    .line 202
    :cond_13
    move v6, v4

    .line 203
    :cond_14
    :goto_e
    if-eqz v6, :cond_15

    .line 204
    goto :goto_f

    .line 206
    :cond_15
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 207
    move-result v0

    .line 210
    sub-int v4, v0, p0

    .line 211
    :goto_f
    iput v4, p1, Landroid/graphics/Point;->y:I

    .line 213
    :goto_10
    return-void
    .line 215
.end method

.method public constructor <init>(Lcom/android/wm/shell/common/split/DividerRoundedCorner;I)V
    .locals 9

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->this$0:Lcom/android/wm/shell/common/split/DividerRoundedCorner;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Landroid/graphics/Path;

    .line 7
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mPath:Landroid/graphics/Path;

    .line 12
    iput p2, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mCornerPosition:I

    .line 14
    invoke-virtual {p1}, Landroid/view/View;->getDisplay()Landroid/view/Display;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1, p2}, Landroid/view/Display;->getRoundedCorner(I)Landroid/view/RoundedCorner;

    .line 20
    move-result-object p1

    .line 23
    const/4 v1, 0x0

    .line 24
    if-nez p1, :cond_0

    .line 25
    move p1, v1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-virtual {p1}, Landroid/view/RoundedCorner;->getRadius()I

    .line 29
    move-result p1

    .line 32
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 33
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 35
    move-result-object v2

    .line 38
    invoke-virtual {v2, p1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getDividerRoundedCornerSize(I)I

    .line 39
    move-result p1

    .line 42
    iput p1, p0, Lcom/android/wm/shell/common/split/DividerRoundedCorner$InvertedRoundedCornerDrawInfo;->mRadius:I

    .line 43
    new-instance p0, Landroid/graphics/Path;

    .line 45
    invoke-direct {p0}, Landroid/graphics/Path;-><init>()V

    .line 47
    const/4 v3, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    int-to-float p1, p1

    .line 52
    sget-object v7, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 53
    move-object v2, p0

    .line 55
    move v4, v8

    .line 56
    move v5, p1

    .line 57
    move v6, p1

    .line 58
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Path;->addRect(FFFFLandroid/graphics/Path$Direction;)V

    .line 59
    new-instance v2, Landroid/graphics/Path;

    .line 62
    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    .line 64
    const/4 v3, 0x1

    .line 67
    if-eqz p2, :cond_2

    .line 68
    const/4 v4, 0x3

    .line 70
    if-ne p2, v4, :cond_1

    .line 71
    goto :goto_1

    .line 73
    :cond_1
    move v4, v1

    .line 74
    goto :goto_2

    .line 75
    :cond_2
    :goto_1
    move v4, v3

    .line 76
    :goto_2
    if-eqz v4, :cond_3

    .line 77
    move v4, p1

    .line 79
    goto :goto_3

    .line 80
    :cond_3
    move v4, v8

    .line 81
    :goto_3
    if-eqz p2, :cond_4

    .line 82
    if-ne p2, v3, :cond_5

    .line 84
    :cond_4
    move v1, v3

    .line 86
    :cond_5
    if-eqz v1, :cond_6

    .line 87
    move v8, p1

    .line 89
    :cond_6
    sget-object p2, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 90
    invoke-virtual {v2, v4, v8, p1, p2}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 92
    sget-object p1, Landroid/graphics/Path$Op;->DIFFERENCE:Landroid/graphics/Path$Op;

    .line 95
    invoke-virtual {v0, p0, v2, p1}, Landroid/graphics/Path;->op(Landroid/graphics/Path;Landroid/graphics/Path;Landroid/graphics/Path$Op;)Z

    .line 97
    return-void
    .line 100
.end method
