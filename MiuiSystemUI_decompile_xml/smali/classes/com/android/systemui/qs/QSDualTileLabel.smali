.class public Lcom/android/systemui/qs/QSDualTileLabel;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContext:Landroid/content/Context;

.field public final mFirstLine:Landroid/widget/TextView;

.field public final mFirstLineCaret:Landroid/widget/ImageView;

.field public final mHorizontalPaddingPx:I

.field public final mSecondLine:Landroid/widget/TextView;

.field public mText:Ljava/lang/String;

.field public final mUpdateText:Lcom/android/systemui/qs/QSDualTileLabel$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Lcom/android/systemui/qs/QSDualTileLabel$2;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSDualTileLabel$2;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Lcom/android/systemui/qs/QSDualTileLabel$2;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mContext:Landroid/content/Context;

    .line 12
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 15
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object v1

    .line 21
    const v2, 0x7f070f8e    # @dimen/qs_dual_tile_padding_horizontal '6.0dp'

    .line 22
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result v1

    .line 28
    iput v1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    .line 29
    new-instance v2, Landroid/widget/TextView;

    .line 31
    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 33
    const/4 v3, 0x0

    .line 36
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 37
    const/16 v4, 0x10

    .line 40
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 42
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 45
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 48
    const/4 v5, 0x0

    .line 51
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 52
    iput-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 57
    new-instance v6, Landroid/widget/LinearLayout;

    .line 60
    invoke-direct {v6, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 62
    invoke-virtual {v6, v3, v3, v3, v3}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 65
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 68
    invoke-virtual {v6, v3}, Landroid/widget/LinearLayout;->setClickable(Z)V

    .line 71
    invoke-virtual {v6, v5}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 74
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 77
    new-instance v2, Landroid/widget/ImageView;

    .line 80
    invoke-direct {v2, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 82
    iput-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    .line 85
    sget-object v7, Landroid/widget/ImageView$ScaleType;->MATRIX:Landroid/widget/ImageView$ScaleType;

    .line 87
    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 89
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 92
    invoke-virtual {v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 95
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 98
    const/4 v7, -0x2

    .line 100
    invoke-direct {v2, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 101
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 104
    invoke-virtual {p0, v6, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 106
    new-instance v2, Landroid/widget/TextView;

    .line 109
    invoke-direct {v2, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 111
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 114
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 117
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 120
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setClickable(Z)V

    .line 123
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 126
    iput-object v2, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v2, v1, v3, v1, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 131
    sget-object p1, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 134
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 136
    const/16 p1, 0x8

    .line 139
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 144
    invoke-direct {p1, v7, v7}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 146
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 149
    invoke-virtual {p0, v2, p1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 151
    new-instance p1, Lcom/android/systemui/qs/QSDualTileLabel$1;

    .line 154
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/QSDualTileLabel$1;-><init>(Lcom/android/systemui/qs/QSDualTileLabel;)V

    .line 156
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 159
    return-void
    .line 162
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final rescheduleUpdateText()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Lcom/android/systemui/qs/QSDualTileLabel$2;

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mUpdateText:Lcom/android/systemui/qs/QSDualTileLabel$2;

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 9
    return-void
    .line 12
.end method

.method public setFirstLineCaret(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLineCaret:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 9
    move-result p1

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 13
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMinHeight(I)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 18
    iget p0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mHorizontalPaddingPx:I

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-virtual {p1, p0, v0, v0, v0}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 23
    :cond_0
    return-void
    .line 26
.end method

.method public setText(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 10
    move-result-object p1

    .line 13
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 14
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_1

    .line 20
    return-void

    .line 22
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mText:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 25
    return-void
    .line 28
.end method

.method public setTextColor(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 12
    return-void
    .line 15
.end method

.method public setTextSize(IF)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 12
    return-void
    .line 15
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mFirstLine:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/QSDualTileLabel;->mSecondLine:Landroid/widget/TextView;

    .line 7
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/qs/QSDualTileLabel;->rescheduleUpdateText()V

    .line 12
    return-void
    .line 15
.end method
