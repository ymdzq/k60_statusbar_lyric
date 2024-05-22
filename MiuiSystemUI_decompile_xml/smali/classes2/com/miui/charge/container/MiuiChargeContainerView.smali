.class public Lcom/miui/charge/container/MiuiChargeContainerView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mChargeView:Lcom/miui/charge/container/IChargeView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/charge/container/MiuiChargeContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 4
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 p2, -0x1

    invoke-direct {p1, p2, p2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xd

    .line 5
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 6
    invoke-static {}, Lcom/miui/charge/ChargeUtils;->getChargeAnimationType()I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    if-eqz p3, :cond_1

    .line 7
    new-instance p2, Lcom/miui/charge/video/VideoChargeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/charge/video/VideoChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    goto :goto_1

    .line 8
    :cond_1
    new-instance p2, Lcom/miui/charge/lollipop/LollipopChargeView;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p2, p3}, Lcom/miui/charge/lollipop/LollipopChargeView;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 9
    :goto_1
    iget-object p2, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    invoke-virtual {p0, p2, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method


# virtual methods
.method public getVideoTranslationY()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/charge/container/IChargeView;->getVideoTranslationY()F

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public setProgress(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/charge/container/MiuiChargeContainerView;->mChargeView:Lcom/miui/charge/container/IChargeView;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/charge/container/IChargeView;->setProgress(I)V

    .line 4
    return-void
    .line 7
.end method
