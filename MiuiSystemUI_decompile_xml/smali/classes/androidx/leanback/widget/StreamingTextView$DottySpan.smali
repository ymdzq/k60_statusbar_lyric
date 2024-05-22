.class public final Landroidx/leanback/widget/StreamingTextView$DottySpan;
.super Landroid/text/style/ReplacementSpan;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mPosition:I

.field public final mSeed:I

.field public final synthetic this$0:Landroidx/leanback/widget/StreamingTextView;


# direct methods
.method public constructor <init>(Landroidx/leanback/widget/SearchEditText;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 2
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 4
    iput p2, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    .line 7
    iput p3, p0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 15

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 3
    move-object/from16 v2, p2

    .line 5
    move/from16 v3, p3

    .line 7
    move/from16 v4, p4

    .line 9
    move-object/from16 v5, p9

    .line 11
    invoke-virtual {v5, v2, v3, v4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 13
    move-result v2

    .line 16
    float-to-int v2, v2

    .line 17
    iget-object v3, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 18
    iget-object v3, v3, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    .line 20
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    .line 22
    move-result v3

    .line 25
    mul-int/lit8 v4, v3, 0x2

    .line 26
    div-int v6, v2, v4

    .line 28
    rem-int v7, v2, v4

    .line 30
    div-int/lit8 v7, v7, 0x2

    .line 32
    iget-object v8, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 34
    invoke-virtual {v8}, Landroid/view/View;->getLayoutDirection()I

    .line 36
    move-result v8

    .line 39
    const/4 v9, 0x0

    .line 40
    const/4 v10, 0x1

    .line 41
    if-ne v10, v8, :cond_0

    .line 42
    move v8, v10

    .line 44
    goto :goto_0

    .line 45
    :cond_0
    move v8, v9

    .line 46
    :goto_0
    iget-object v11, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 47
    iget-object v11, v11, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    .line 49
    iget v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mSeed:I

    .line 51
    int-to-long v12, v12

    .line 53
    invoke-virtual {v11, v12, v13}, Ljava/util/Random;->setSeed(J)V

    .line 54
    invoke-virtual/range {p9 .. p9}, Landroid/graphics/Paint;->getAlpha()I

    .line 57
    move-result v11

    .line 60
    :goto_1
    if-ge v9, v6, :cond_4

    .line 61
    iget v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->mPosition:I

    .line 63
    add-int/2addr v12, v9

    .line 65
    iget-object v13, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 66
    iget v14, v13, Landroidx/leanback/widget/StreamingTextView;->mStreamPosition:I

    .line 68
    if-lt v12, v14, :cond_1

    .line 70
    goto :goto_4

    .line 72
    :cond_1
    mul-int v12, v9, v4

    .line 73
    add-int/2addr v12, v7

    .line 75
    div-int/lit8 v14, v3, 0x2

    .line 76
    add-int/2addr v14, v12

    .line 78
    int-to-float v12, v14

    .line 79
    if-eqz v8, :cond_2

    .line 80
    int-to-float v14, v2

    .line 82
    add-float v14, p5, v14

    .line 83
    sub-float/2addr v14, v12

    .line 85
    int-to-float v12, v3

    .line 86
    sub-float/2addr v14, v12

    .line 87
    goto :goto_2

    .line 88
    :cond_2
    add-float v14, p5, v12

    .line 89
    :goto_2
    iget-object v12, v13, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    .line 91
    const/4 v13, 0x4

    .line 93
    invoke-virtual {v12, v13}, Ljava/util/Random;->nextInt(I)I

    .line 94
    move-result v12

    .line 97
    add-int/2addr v12, v10

    .line 98
    mul-int/lit8 v12, v12, 0x3f

    .line 99
    invoke-virtual {v5, v12}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 101
    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 104
    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mRandom:Ljava/util/Random;

    .line 106
    invoke-virtual {v12}, Ljava/util/Random;->nextBoolean()Z

    .line 108
    move-result v12

    .line 111
    if-eqz v12, :cond_3

    .line 112
    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 114
    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mTwoDot:Landroid/graphics/Bitmap;

    .line 116
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 118
    move-result v13

    .line 121
    sub-int v13, p7, v13

    .line 122
    int-to-float v13, v13

    .line 124
    invoke-virtual {v1, v12, v14, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 125
    goto :goto_3

    .line 128
    :cond_3
    iget-object v12, v0, Landroidx/leanback/widget/StreamingTextView$DottySpan;->this$0:Landroidx/leanback/widget/StreamingTextView;

    .line 129
    iget-object v12, v12, Landroidx/leanback/widget/StreamingTextView;->mOneDot:Landroid/graphics/Bitmap;

    .line 131
    invoke-virtual {v12}, Landroid/graphics/Bitmap;->getHeight()I

    .line 133
    move-result v13

    .line 136
    sub-int v13, p7, v13

    .line 137
    int-to-float v13, v13

    .line 139
    invoke-virtual {v1, v12, v14, v13, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 140
    :goto_3
    add-int/lit8 v9, v9, 0x1

    .line 143
    goto :goto_1

    .line 145
    :cond_4
    :goto_4
    invoke-virtual {v5, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 146
    return-void
    .line 149
.end method

.method public final getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 0

    .line 1
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    .line 2
    move-result p0

    .line 5
    float-to-int p0, p0

    .line 6
    return p0
    .line 7
.end method
