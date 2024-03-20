.class public Landroidx/slice/widget/MessageView;
.super Landroidx/slice/widget/SliceChildView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mDetails:Landroid/widget/TextView;

.field public mIcon:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroidx/slice/widget/SliceChildView;-><init>(Landroid/content/Context;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public getMode()I
    .locals 0

    .line 1
    const/4 p0, 0x2

    .line 2
    return p0
    .line 3
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x1020010    # @android:id/summary

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    .line 14
    const v0, 0x1020006    # @android:id/icon

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    .line 25
    return-void
    .line 27
.end method

.method public final resetView()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setSliceItem(Landroidx/slice/widget/SliceContent;ZIILandroidx/slice/widget/SliceView$OnSliceActionListener;)V
    .locals 1

    .line 1
    iget-object p1, p1, Landroidx/slice/widget/SliceContent;->mSliceItem:Landroidx/slice/SliceItem;

    .line 2
    invoke-virtual {p0, p5}, Landroidx/slice/widget/SliceChildView;->setSliceActionListener(Landroidx/slice/widget/SliceView$OnSliceActionListener;)V

    .line 4
    const-string p2, "image"

    .line 7
    const-string/jumbo p3, "source"

    .line 9
    invoke-static {p1, p2, p3}, Landroidx/slice/core/SliceQuery;->findSubtype(Landroidx/slice/SliceItem;Ljava/lang/String;Ljava/lang/String;)Landroidx/slice/SliceItem;

    .line 12
    move-result-object p2

    .line 15
    if-eqz p2, :cond_0

    .line 16
    iget-object p2, p2, Landroidx/slice/SliceItem;->mObj:Ljava/lang/Object;

    .line 18
    move-object p3, p2

    .line 20
    check-cast p3, Landroidx/core/graphics/drawable/IconCompat;

    .line 21
    if-eqz p3, :cond_0

    .line 23
    check-cast p2, Landroidx/core/graphics/drawable/IconCompat;

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p3

    .line 30
    invoke-virtual {p2, p3}, Landroidx/core/graphics/drawable/IconCompat;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object p2

    .line 34
    if-eqz p2, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 37
    move-result-object p3

    .line 40
    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 41
    move-result-object p3

    .line 44
    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 45
    move-result-object p3

    .line 48
    const/4 p4, 0x1

    .line 49
    const/high16 p5, 0x41c00000    # 24.0f

    .line 50
    invoke-static {p4, p5, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    .line 52
    move-result p3

    .line 55
    float-to-int p3, p3

    .line 56
    sget-object p4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 57
    invoke-static {p3, p3, p4}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    .line 59
    move-result-object p4

    .line 62
    new-instance p5, Landroid/graphics/Canvas;

    .line 63
    invoke-direct {p5, p4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 65
    const/4 v0, 0x0

    .line 68
    invoke-virtual {p2, v0, v0, p3, p3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    invoke-virtual {p2, p5}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 72
    iget-object p2, p0, Landroidx/slice/widget/MessageView;->mIcon:Landroid/widget/ImageView;

    .line 75
    invoke-static {p4}, Landroidx/slice/widget/SliceViewUtil;->getCircularBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 77
    move-result-object p3

    .line 80
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 81
    :cond_0
    new-instance p2, Landroid/text/SpannableStringBuilder;

    .line 84
    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 86
    const/4 p3, 0x0

    .line 89
    const-string/jumbo p4, "text"

    .line 90
    invoke-static {p1, p4, p3, p3}, Landroidx/slice/core/SliceQuery;->findAll(Landroidx/slice/SliceItem;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)Ljava/util/List;

    .line 93
    move-result-object p1

    .line 96
    check-cast p1, Ljava/util/ArrayList;

    .line 97
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object p1

    .line 102
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result p3

    .line 106
    if-eqz p3, :cond_2

    .line 107
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object p3

    .line 112
    check-cast p3, Landroidx/slice/SliceItem;

    .line 113
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    .line 115
    move-result p4

    .line 118
    if-eqz p4, :cond_1

    .line 119
    const/16 p4, 0xa

    .line 121
    invoke-virtual {p2, p4}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    .line 123
    :cond_1
    invoke-virtual {p3}, Landroidx/slice/SliceItem;->getSanitizedText()Ljava/lang/CharSequence;

    .line 126
    move-result-object p3

    .line 129
    invoke-virtual {p2, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 130
    goto :goto_0

    .line 133
    :cond_2
    iget-object p0, p0, Landroidx/slice/widget/MessageView;->mDetails:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p1

    .line 139
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    return-void
    .line 143
.end method
