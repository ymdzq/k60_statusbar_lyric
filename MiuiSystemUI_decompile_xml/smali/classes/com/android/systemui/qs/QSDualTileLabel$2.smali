.class public final Lcom/android/systemui/qs/QSDualTileLabel$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSDualTileLabel;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSDualTileLabel;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel$2;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel$2;->this$0:Lcom/android/systemui/qs/QSDualTileLabel;

    .line 2
    sget v0, Lcom/android/systemui/qs/QSDualTileLabel;->$r8$clinit:I

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto/16 :goto_4

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result v0

    .line 19
    const/16 v1, 0x8

    .line 20
    const/4 v2, 0x0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 30
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 35
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 37
    goto/16 :goto_4

    .line 40
    :cond_1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWidth()I

    .line 42
    move-result v0

    .line 45
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    .line 46
    invoke-virtual {v3}, Landroid/widget/ImageView;->getWidth()I

    .line 48
    move-result v3

    .line 51
    sub-int/2addr v0, v3

    .line 52
    iget v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    .line 53
    sub-int/2addr v0, v3

    .line 55
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 56
    move-result v3

    .line 59
    sub-int/2addr v0, v3

    .line 60
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 61
    move-result v3

    .line 64
    sub-int/2addr v0, v3

    .line 65
    int-to-float v0, v0

    .line 66
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 67
    invoke-virtual {v3}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 69
    move-result-object v3

    .line 72
    iget-object v4, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 73
    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 75
    move-result v3

    .line 78
    cmpg-float v3, v3, v0

    .line 79
    if-gtz v3, :cond_2

    .line 81
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 83
    iget-object v3, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 85
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 95
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 97
    goto/16 :goto_4

    .line 100
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 104
    move-result v1

    .line 107
    const/4 v2, -0x1

    .line 108
    const/4 v3, 0x1

    .line 109
    const/4 v4, 0x0

    .line 110
    move v7, v2

    .line 111
    move v5, v3

    .line 112
    move v6, v4

    .line 113
    :goto_0
    if-ge v5, v1, :cond_7

    .line 114
    iget-object v8, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 116
    invoke-virtual {v8}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    .line 118
    move-result-object v8

    .line 121
    iget-object v9, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 122
    invoke-virtual {v9, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 124
    move-result-object v9

    .line 127
    invoke-virtual {v8, v9}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 128
    move-result v8

    .line 131
    cmpl-float v8, v8, v0

    .line 132
    if-lez v8, :cond_3

    .line 134
    move v8, v3

    .line 136
    goto :goto_1

    .line 137
    :cond_3
    move v8, v4

    .line 138
    :goto_1
    iget-object v9, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 139
    invoke-virtual {v9, v5}, Ljava/lang/String;->charAt(I)C

    .line 141
    move-result v9

    .line 144
    invoke-static {v9}, Ljava/lang/Character;->isWhitespace(C)Z

    .line 145
    move-result v9

    .line 148
    if-eqz v9, :cond_5

    .line 149
    if-nez v6, :cond_4

    .line 151
    if-nez v8, :cond_4

    .line 153
    move v7, v5

    .line 155
    :cond_4
    move v6, v3

    .line 156
    goto :goto_2

    .line 157
    :cond_5
    move v6, v4

    .line 158
    :goto_2
    if-eqz v8, :cond_6

    .line 159
    goto :goto_3

    .line 161
    :cond_6
    add-int/lit8 v5, v5, 0x1

    .line 162
    goto :goto_0

    .line 164
    :cond_7
    :goto_3
    if-ne v7, v2, :cond_8

    .line 165
    add-int/lit8 v7, v5, -0x1

    .line 167
    :cond_8
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 169
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 171
    invoke-virtual {v1, v4, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 173
    move-result-object v1

    .line 176
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 180
    iget-object v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 182
    invoke-virtual {v1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 184
    move-result-object v1

    .line 187
    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 191
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 192
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 195
    invoke-virtual {p0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 197
    :goto_4
    return-void
    .line 200
.end method
