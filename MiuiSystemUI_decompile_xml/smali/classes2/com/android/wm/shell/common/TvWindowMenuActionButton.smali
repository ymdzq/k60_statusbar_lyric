.class public Lcom/android/wm/shell/common/TvWindowMenuActionButton;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mButtonBackgroundView:Landroid/view/View;

.field public mCurrentIcon:Landroid/graphics/drawable/Icon;

.field public final mIconImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v1, v1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d03d0    # @layout/tv_window_menu_action_button 'res/layout/tv_window_menu_action_button.xml'

    .line 7
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    const v0, 0x7f0a0412    # @id/icon

    .line 8
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    const v0, 0x7f0a0100    # @id/background

    .line 9
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mButtonBackgroundView:Landroid/view/View;

    const v0, 0x1010119    # @android:attr/src

    const v1, 0x101014f    # @android:attr/text

    .line 10
    filled-new-array {v0, v1}, [I

    move-result-object v0

    .line 11
    invoke-virtual {p1, p2, v0, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    const/4 p2, 0x0

    .line 12
    invoke-virtual {p1, p2, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    invoke-virtual {p0, p3}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setImageResource(I)V

    const/4 p3, 0x1

    .line 13
    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    if-eqz p3, :cond_0

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(I)V

    .line 15
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 16
    invoke-virtual {p0, p2}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setIsCustomCloseAction(Z)V

    return-void
.end method


# virtual methods
.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 4
    return-void
    .line 7
.end method

.method public setImageIconAsync(Landroid/graphics/drawable/Icon;Landroid/os/Handler;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mCurrentIcon:Landroid/graphics/drawable/Icon;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 7
    iget-object v0, p0, Landroid/widget/RelativeLayout;->mContext:Landroid/content/Context;

    .line 10
    new-instance v1, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {v1, p0, p1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/common/TvWindowMenuActionButton;Landroid/graphics/drawable/Icon;)V

    .line 14
    invoke-virtual {p1, v0, v1, p2}, Landroid/graphics/drawable/Icon;->loadDrawableAsync(Landroid/content/Context;Landroid/graphics/drawable/Icon$OnDrawableLoadedListener;Landroid/os/Handler;)V

    .line 17
    return-void
    .line 20
.end method

.method public setImageResource(I)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setIsCustomCloseAction(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mIconImageView:Landroid/widget/ImageView;

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    const v2, 0x7f060932    # @color/tv_window_menu_close_icon 'res/color/tv_window_menu_close_icon.xml'

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const v2, 0x7f060936    # @color/tv_window_menu_icon 'res/color/tv_window_menu_icon.xml'

    .line 14
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 17
    move-result-object v1

    .line 20
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 21
    iget-object v0, p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->mButtonBackgroundView:Landroid/view/View;

    .line 24
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 26
    move-result-object p0

    .line 29
    if-eqz p1, :cond_1

    .line 30
    const p1, 0x7f060933    # @color/tv_window_menu_close_icon_bg 'res/color/tv_window_menu_close_icon_bg.xml'

    .line 32
    goto :goto_1

    .line 35
    :cond_1
    const p1, 0x7f060937    # @color/tv_window_menu_icon_bg 'res/color/tv_window_menu_icon_bg.xml'

    .line 36
    :goto_1
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getColorStateList(I)Landroid/content/res/ColorStateList;

    .line 39
    move-result-object p0

    .line 42
    invoke-virtual {v0, p0}, Landroid/view/View;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    return-void
    .line 46
.end method

.method public setTextAndDescription(I)V
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/TvWindowMenuActionButton;->setTextAndDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextAndDescription(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    const-class p0, Lcom/android/wm/shell/common/TvWindowMenuActionButton;

    .line 8
    const-string p0, "TvWindowMenuActionButton"

    .line 10
    return-object p0

    .line 12
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContentDescription()Ljava/lang/CharSequence;

    .line 13
    move-result-object p0

    .line 16
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0
    .line 21
.end method
