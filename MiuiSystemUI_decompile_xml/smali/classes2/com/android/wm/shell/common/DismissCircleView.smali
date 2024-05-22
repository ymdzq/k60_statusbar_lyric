.class public Lcom/android/wm/shell/common/DismissCircleView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mIconView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    invoke-direct {p1, v0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/common/DismissCircleView;->mIconView:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v0

    .line 19
    const v1, 0x7f080c3b    # @drawable/dismiss_circle_background 'res/drawable/dismiss_circle_background.xml'

    .line 20
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 23
    move-result-object v1

    .line 26
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    const v1, 0x7f0816ea    # @drawable/pip_ic_close_white 'res/drawable/pip_ic_close_white.xml'

    .line 30
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 33
    move-result-object v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 37
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 43
    move-result-object p0

    .line 46
    const v0, 0x7f0702ce    # @dimen/dismiss_target_x_size '24.0dp'

    .line 47
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 50
    move-result p0

    .line 53
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 54
    const/16 v1, 0x11

    .line 56
    invoke-direct {v0, p0, p0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 58
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
    .line 64
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f080c3b    # @drawable/dismiss_circle_background 'res/drawable/dismiss_circle_background.xml'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    const v0, 0x7f0702ce    # @dimen/dismiss_target_x_size '24.0dp'

    .line 23
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p1

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/common/DismissCircleView;->mIconView:Landroid/widget/ImageView;

    .line 30
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 32
    const/16 v1, 0x11

    .line 34
    invoke-direct {v0, p1, p1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
    .line 42
.end method
