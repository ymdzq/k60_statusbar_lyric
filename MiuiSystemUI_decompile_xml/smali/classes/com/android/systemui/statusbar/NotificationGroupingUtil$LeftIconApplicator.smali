.class public final Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationGroupingUtil$ResultApplicator;


# static fields
.field public static final MARGIN_ADJUSTED_VIEWS:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    const v0, 0x1020403    # @android:id/numberDecimal

    .line 2
    const v1, 0x1020400    # @android:id/notification_top_line

    .line 5
    const v2, 0x1020532    # @android:id/textPassword

    .line 8
    const v3, 0x102021e    # @android:id/body

    .line 11
    const v4, 0x1020016    # @android:id/title

    .line 14
    filled-new-array {v2, v3, v4, v0, v1}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    .line 21
    return-void
    .line 23
.end method


# virtual methods
.method public final apply(Landroid/view/View;Landroid/view/View;ZZ)V
    .locals 5

    .line 1
    const p0, 0x102038f    # @android:id/list_item

    .line 2
    invoke-virtual {p2, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object p0

    .line 8
    check-cast p0, Landroid/widget/ImageView;

    .line 9
    if-nez p0, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    const p1, 0x102049b    # @android:id/scrim

    .line 14
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object p1

    .line 20
    check-cast p1, Landroid/widget/ImageView;

    .line 21
    const/4 p3, 0x1

    .line 23
    const/4 p4, 0x0

    .line 24
    if-eqz p1, :cond_1

    .line 25
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 27
    move-result-object v0

    .line 30
    const v1, 0x102052b    # @android:id/textEnableTextConversionSuggestions

    .line 31
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    move v0, p3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v0, p4

    .line 46
    :goto_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 47
    move-result-object v1

    .line 50
    const v2, 0x1020531    # @android:id/textNoSuggestions

    .line 51
    invoke-virtual {p0, v2}, Landroid/widget/ImageView;->getTag(I)Ljava/lang/Object;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 58
    move-result v1

    .line 61
    if-nez v0, :cond_2

    .line 62
    if-eqz v1, :cond_2

    .line 64
    move v2, p3

    .line 66
    goto :goto_1

    .line 67
    :cond_2
    move v2, p4

    .line 68
    :goto_1
    const/16 v3, 0x8

    .line 69
    if-eqz v2, :cond_3

    .line 71
    const v4, 0x1020006    # @android:id/icon

    .line 73
    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 76
    move-result-object v4

    .line 79
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 80
    :cond_3
    if-eqz v1, :cond_6

    .line 83
    const/4 v1, 0x0

    .line 85
    if-nez p1, :cond_4

    .line 86
    move-object v4, v1

    .line 88
    goto :goto_2

    .line 89
    :cond_4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 90
    move-result-object v4

    .line 93
    :goto_2
    if-eqz v2, :cond_5

    .line 94
    if-nez v0, :cond_5

    .line 96
    move-object v1, v4

    .line 98
    :cond_5
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 99
    :cond_6
    if-eqz v2, :cond_7

    .line 102
    move v1, p4

    .line 104
    goto :goto_3

    .line 105
    :cond_7
    move v1, v3

    .line 106
    :goto_3
    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 107
    if-eqz p1, :cond_11

    .line 110
    if-nez v0, :cond_8

    .line 112
    if-nez v2, :cond_9

    .line 114
    :cond_8
    invoke-virtual {p1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 116
    move-result-object p0

    .line 119
    if-eqz p0, :cond_9

    .line 120
    goto :goto_4

    .line 122
    :cond_9
    move p3, p4

    .line 123
    :goto_4
    if-eqz p3, :cond_a

    .line 124
    move v3, p4

    .line 126
    :cond_a
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 127
    sget-object p0, Lcom/android/systemui/statusbar/NotificationGroupingUtil$LeftIconApplicator;->MARGIN_ADJUSTED_VIEWS:[I

    .line 130
    :goto_5
    const/4 p1, 0x5

    .line 132
    if-ge p4, p1, :cond_11

    .line 133
    aget p1, p0, p4

    .line 135
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 137
    move-result-object p1

    .line 140
    if-nez p1, :cond_b

    .line 141
    goto :goto_7

    .line 143
    :cond_b
    instance-of v0, p1, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 144
    if-eqz v0, :cond_c

    .line 146
    check-cast p1, Lcom/android/internal/widget/ImageFloatingTextView;

    .line 148
    invoke-virtual {p1, p3}, Lcom/android/internal/widget/ImageFloatingTextView;->setHasImage(Z)V

    .line 150
    goto :goto_7

    .line 153
    :cond_c
    if-eqz p3, :cond_d

    .line 154
    const v0, 0x102052e    # @android:id/textImeMultiLine

    .line 156
    goto :goto_6

    .line 159
    :cond_d
    const v0, 0x102052d    # @android:id/textFilter

    .line 160
    :goto_6
    invoke-virtual {p1, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 166
    check-cast v0, Ljava/lang/Integer;

    .line 167
    if-nez v0, :cond_e

    .line 169
    goto :goto_7

    .line 171
    :cond_e
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 172
    move-result-object v1

    .line 175
    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 176
    move-result-object v1

    .line 179
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 180
    move-result v0

    .line 183
    invoke-static {v0, v1}, Landroid/util/TypedValue;->complexToDimensionPixelOffset(ILandroid/util/DisplayMetrics;)I

    .line 184
    move-result v0

    .line 187
    instance-of v1, p1, Landroid/view/NotificationHeaderView;

    .line 188
    if-eqz v1, :cond_f

    .line 190
    check-cast p1, Landroid/view/NotificationHeaderView;

    .line 192
    invoke-virtual {p1, v0}, Landroid/view/NotificationHeaderView;->setTopLineExtraMarginEnd(I)V

    .line 194
    goto :goto_7

    .line 197
    :cond_f
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 198
    move-result-object v1

    .line 201
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 202
    if-eqz v2, :cond_10

    .line 204
    move-object v2, v1

    .line 206
    check-cast v2, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 207
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 209
    invoke-virtual {p1, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 212
    :cond_10
    :goto_7
    add-int/lit8 p4, p4, 0x1

    .line 215
    goto :goto_5

    .line 217
    :cond_11
    return-void
    .line 218
.end method
