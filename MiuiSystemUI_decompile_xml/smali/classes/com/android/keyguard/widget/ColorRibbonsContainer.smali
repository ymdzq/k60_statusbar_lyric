.class public final Lcom/android/keyguard/widget/ColorRibbonsContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mLeftColorRibbon1:Landroid/widget/ImageView;

.field public mLeftColorRibbon2:Landroid/widget/ImageView;

.field public mRightColorRibbon1:Landroid/widget/ImageView;

.field public mRightColorRibbon2:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1, v0}, Lcom/android/keyguard/widget/ColorRibbonsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/widget/ColorRibbonsContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a04df    # @id/left_colored_ribbon_1

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/ImageView;

    .line 12
    iput-object v0, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mLeftColorRibbon1:Landroid/widget/ImageView;

    .line 14
    const v0, 0x7f0a04e0    # @id/left_colored_ribbon_2

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/ImageView;

    .line 23
    iput-object v0, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mLeftColorRibbon2:Landroid/widget/ImageView;

    .line 25
    const v0, 0x7f0a07af    # @id/right_colored_ribbon_1

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/ImageView;

    .line 34
    iput-object v0, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mRightColorRibbon1:Landroid/widget/ImageView;

    .line 36
    const v0, 0x7f0a07b0    # @id/right_colored_ribbon_2

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mRightColorRibbon2:Landroid/widget/ImageView;

    .line 47
    return-void
    .line 49
.end method

.method public final setRibbonsColors(II)V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/PorterDuffColorFilter;

    .line 2
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 4
    invoke-direct {v0, p1, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 6
    new-instance p1, Landroid/graphics/PorterDuffColorFilter;

    .line 9
    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    .line 11
    invoke-direct {p1, p2, v1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 13
    iget-object p2, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mLeftColorRibbon1:Landroid/widget/ImageView;

    .line 16
    const/4 v1, 0x0

    .line 18
    if-eqz p2, :cond_0

    .line 19
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p2

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    move-object p2, v1

    .line 26
    :goto_0
    if-nez p2, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 30
    :goto_1
    iget-object p2, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mRightColorRibbon1:Landroid/widget/ImageView;

    .line 33
    if-eqz p2, :cond_2

    .line 35
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 37
    move-result-object p2

    .line 40
    goto :goto_2

    .line 41
    :cond_2
    move-object p2, v1

    .line 42
    :goto_2
    if-nez p2, :cond_3

    .line 43
    goto :goto_3

    .line 45
    :cond_3
    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 46
    :goto_3
    iget-object p2, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mLeftColorRibbon2:Landroid/widget/ImageView;

    .line 49
    if-eqz p2, :cond_4

    .line 51
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 53
    move-result-object p2

    .line 56
    goto :goto_4

    .line 57
    :cond_4
    move-object p2, v1

    .line 58
    :goto_4
    if-nez p2, :cond_5

    .line 59
    goto :goto_5

    .line 61
    :cond_5
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 62
    :goto_5
    iget-object p0, p0, Lcom/android/keyguard/widget/ColorRibbonsContainer;->mRightColorRibbon2:Landroid/widget/ImageView;

    .line 65
    if-eqz p0, :cond_6

    .line 67
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 69
    move-result-object v1

    .line 72
    :cond_6
    if-nez v1, :cond_7

    .line 73
    goto :goto_6

    .line 75
    :cond_7
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 76
    :goto_6
    return-void
    .line 79
.end method
