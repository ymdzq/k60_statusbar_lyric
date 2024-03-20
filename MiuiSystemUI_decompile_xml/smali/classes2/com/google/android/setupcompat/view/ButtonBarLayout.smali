.class public Lcom/google/android/setupcompat/view/ButtonBarLayout;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final LOG:Lcom/google/android/setupcompat/util/Logger;


# instance fields
.field public originalPaddingLeft:I

.field public originalPaddingRight:I

.field public stacked:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/setupcompat/util/Logger;

    .line 2
    const-class v1, Lcom/google/android/setupcompat/view/ButtonBarLayout;

    .line 4
    const-string v1, "ButtonBarLayout"

    .line 6
    invoke-direct {v0, v1}, Lcom/google/android/setupcompat/util/Logger;-><init>(Ljava/lang/String;)V

    .line 8
    sput-object v0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 11
    return-void
    .line 13
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 10

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p0, v1}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    .line 7
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 10
    move-result v2

    .line 13
    const/high16 v3, 0x40000000    # 2.0f

    .line 14
    const/4 v4, 0x1

    .line 16
    if-ne v2, v3, :cond_0

    .line 17
    invoke-static {v1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 19
    move-result v2

    .line 22
    move v3, v4

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    move v2, p1

    .line 25
    move v3, v1

    .line 26
    :goto_0
    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 27
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 34
    move-result v5

    .line 37
    move v6, v1

    .line 38
    move v7, v6

    .line 39
    :goto_1
    if-ge v6, v5, :cond_2

    .line 40
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 42
    move-result-object v8

    .line 45
    instance-of v9, v8, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 46
    if-eqz v9, :cond_1

    .line 48
    check-cast v8, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 50
    iget-boolean v8, v8, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    .line 52
    if-eqz v8, :cond_1

    .line 54
    add-int/lit8 v7, v7, 0x1

    .line 56
    :cond_1
    add-int/lit8 v6, v6, 0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_2
    const/4 v5, 0x2

    .line 61
    if-eq v7, v5, :cond_3

    .line 62
    goto :goto_2

    .line 64
    :cond_3
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v5

    .line 68
    invoke-virtual {v5}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 69
    move-result-object v5

    .line 72
    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 73
    const/16 v6, 0x258

    .line 75
    if-lt v5, v6, :cond_4

    .line 77
    invoke-static {v2}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->shouldApplyExtendedPartnerConfig(Landroid/content/Context;)Z

    .line 79
    move-result v2

    .line 82
    if-eqz v2, :cond_4

    .line 83
    move v1, v4

    .line 85
    :cond_4
    :goto_2
    if-nez v1, :cond_5

    .line 86
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 88
    move-result v1

    .line 91
    if-le v1, v0, :cond_5

    .line 92
    invoke-virtual {p0, v4}, Lcom/google/android/setupcompat/view/ButtonBarLayout;->setStacked(Z)V

    .line 94
    goto :goto_3

    .line 97
    :cond_5
    move v4, v3

    .line 98
    :goto_3
    if-eqz v4, :cond_6

    .line 99
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 101
    :cond_6
    return-void
    .line 104
.end method

.method public final setStacked(Z)V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->stacked:Z

    .line 7
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x0

    .line 13
    move v2, v1

    .line 14
    move v3, v2

    .line 15
    move v4, v3

    .line 16
    :goto_0
    const/4 v5, 0x1

    .line 17
    if-ge v2, v0, :cond_5

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 20
    move-result-object v6

    .line 23
    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 24
    move-result-object v7

    .line 27
    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    .line 28
    const v8, 0x7f0a0900    # @id/suc_customization_original_weight

    .line 30
    if-eqz p1, :cond_1

    .line 33
    iget v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 35
    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 37
    move-result-object v5

    .line 40
    invoke-virtual {v6, v8, v5}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 41
    const/4 v5, 0x0

    .line 44
    iput v5, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 45
    iput v1, v7, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 47
    goto :goto_3

    .line 49
    :cond_1
    invoke-virtual {v6, v8}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    .line 50
    move-result-object v8

    .line 53
    check-cast v8, Ljava/lang/Float;

    .line 54
    if-eqz v8, :cond_2

    .line 56
    invoke-virtual {v8}, Ljava/lang/Float;->floatValue()F

    .line 58
    move-result v8

    .line 61
    iput v8, v7, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    move v3, v5

    .line 65
    :goto_1
    instance-of v8, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 66
    if-eqz v8, :cond_3

    .line 68
    move-object v8, v6

    .line 70
    check-cast v8, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 71
    iget-boolean v8, v8, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    .line 73
    if-eqz v8, :cond_3

    .line 75
    goto :goto_2

    .line 77
    :cond_3
    move v5, v1

    .line 78
    :goto_2
    if-eqz v5, :cond_4

    .line 79
    add-int/lit8 v4, v4, 0x1

    .line 81
    :cond_4
    :goto_3
    invoke-virtual {v6, v7}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    add-int/lit8 v2, v2, 0x1

    .line 86
    goto :goto_0

    .line 88
    :cond_5
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 89
    if-eqz v3, :cond_f

    .line 92
    sget-object v2, Lcom/google/android/setupcompat/view/ButtonBarLayout;->LOG:Lcom/google/android/setupcompat/util/Logger;

    .line 94
    const-string v3, "Reorder the FooterActionButtons in the container"

    .line 96
    invoke-virtual {v2, v3}, Lcom/google/android/setupcompat/util/Logger;->w(Ljava/lang/String;)V

    .line 98
    if-gt v4, v5, :cond_6

    .line 101
    move v2, v5

    .line 103
    goto :goto_4

    .line 104
    :cond_6
    move v2, v1

    .line 105
    :goto_4
    new-instance v3, Ljava/util/ArrayList;

    .line 106
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 108
    if-eqz v2, :cond_7

    .line 111
    const/4 v4, 0x0

    .line 113
    const/4 v6, 0x3

    .line 114
    invoke-static {v6, v4}, Ljava/util/Collections;->nCopies(ILjava/lang/Object;)Ljava/util/List;

    .line 115
    move-result-object v4

    .line 118
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 119
    :cond_7
    move v4, v1

    .line 122
    :goto_5
    if-ge v4, v0, :cond_d

    .line 123
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 125
    move-result-object v6

    .line 128
    if-eqz v2, :cond_b

    .line 129
    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 131
    if-eqz v7, :cond_8

    .line 133
    move-object v8, v6

    .line 135
    check-cast v8, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 136
    iget-boolean v8, v8, Lcom/google/android/setupcompat/template/FooterActionButton;->isPrimaryButtonStyle:Z

    .line 138
    if-eqz v8, :cond_8

    .line 140
    move v8, v5

    .line 142
    goto :goto_6

    .line 143
    :cond_8
    move v8, v1

    .line 144
    :goto_6
    if-eqz v8, :cond_9

    .line 145
    const/4 v7, 0x2

    .line 147
    invoke-virtual {v3, v7, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 148
    goto :goto_7

    .line 151
    :cond_9
    if-nez v7, :cond_a

    .line 152
    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 154
    goto :goto_7

    .line 157
    :cond_a
    invoke-virtual {v3, v1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 158
    goto :goto_7

    .line 161
    :cond_b
    instance-of v7, v6, Lcom/google/android/setupcompat/template/FooterActionButton;

    .line 162
    if-nez v7, :cond_c

    .line 164
    invoke-virtual {v3, v5, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 166
    goto :goto_7

    .line 169
    :cond_c
    invoke-virtual {p0, v4}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 170
    move-result-object v6

    .line 173
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 174
    :goto_7
    add-int/lit8 v4, v4, 0x1

    .line 177
    goto :goto_5

    .line 179
    :cond_d
    :goto_8
    if-ge v1, v0, :cond_10

    .line 180
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 182
    move-result-object v2

    .line 185
    check-cast v2, Landroid/view/View;

    .line 186
    if-eqz v2, :cond_e

    .line 188
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 190
    :cond_e
    add-int/lit8 v1, v1, 0x1

    .line 193
    goto :goto_8

    .line 195
    :cond_f
    sub-int/2addr v0, v5

    .line 196
    :goto_9
    if-ltz v0, :cond_10

    .line 197
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 199
    move-result-object v1

    .line 202
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->bringChildToFront(Landroid/view/View;)V

    .line 203
    add-int/lit8 v0, v0, -0x1

    .line 206
    goto :goto_9

    .line 208
    :cond_10
    if-eqz p1, :cond_11

    .line 209
    const/16 p1, 0x11

    .line 211
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setHorizontalGravity(I)V

    .line 213
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 216
    move-result p1

    .line 219
    iput p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    .line 220
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 222
    move-result p1

    .line 225
    iput p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    .line 226
    iget v0, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    .line 228
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 230
    move-result p1

    .line 233
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 234
    move-result v0

    .line 237
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 238
    move-result v1

    .line 241
    invoke-virtual {p0, p1, v0, p1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 242
    goto :goto_a

    .line 245
    :cond_11
    iget p1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingLeft:I

    .line 246
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingTop()I

    .line 248
    move-result v0

    .line 251
    iget v1, p0, Lcom/google/android/setupcompat/view/ButtonBarLayout;->originalPaddingRight:I

    .line 252
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    .line 254
    move-result v2

    .line 257
    invoke-virtual {p0, p1, v0, v1, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 258
    :goto_a
    return-void
    .line 261
.end method
