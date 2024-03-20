.class public abstract Lcom/android/keyguard/KeyguardSimInputView;
.super Lcom/android/keyguard/KeyguardPinBasedInputView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mContainer:Landroid/view/ViewGroup;

.field public simImageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/KeyguardPinBasedInputView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final handleOrientationChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimInputView;->updatePinViewLayoutParams$1()V

    .line 2
    return-void
    .line 5
.end method

.method public final handleSmallestWidthDpChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardSimInputView;->updatePinViewLayoutParams$1()V

    .line 2
    return-void
    .line 5
.end method

.method public onFinishInflate()V
    .locals 1

    .line 1
    const v0, 0x7f0a049c    # @id/keyguard_sim

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 5
    move-result-object v0

    .line 8
    check-cast v0, Landroid/widget/ImageView;

    .line 9
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimInputView;->simImageView:Landroid/widget/ImageView;

    .line 11
    const v0, 0x7f0a0220    # @id/container

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/view/ViewGroup;

    .line 20
    iput-object v0, p0, Lcom/android/keyguard/KeyguardSimInputView;->mContainer:Landroid/view/ViewGroup;

    .line 22
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->onFinishInflate()V

    .line 24
    return-void
    .line 27
.end method

.method public final reloadColors()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/KeyguardPinBasedInputView;->reloadColors()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    const v2, 0x11200b9    # @android:^attr-private/materialColorTertiaryFixedDim

    .line 10
    invoke-static {v0, v2, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 13
    move-result v0

    .line 16
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimInputView;->simImageView:Landroid/widget/ImageView;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    invoke-virtual {p0}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 21
    move-result-object p0

    .line 24
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 25
    :cond_0
    return-void
    .line 28
.end method

.method public final setESimLocked(ZI)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updatePinViewLayoutParams$1()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSimInputView;->mContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSimInputView;->mContainer:Landroid/view/ViewGroup;

    .line 10
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    const v2, 0x7f0708d4    # @dimen/miui_keyguard_sim_pin_view_layout_width '327.27dp'

    .line 21
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 24
    move-result v2

    .line 27
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    .line 28
    const v2, 0x7f0708d3    # @dimen/miui_keyguard_sim_pin_view_layout_height '500.0dp'

    .line 30
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 33
    move-result v0

    .line 36
    iput v0, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 37
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSimInputView;->mContainer:Landroid/view/ViewGroup;

    .line 39
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 41
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    :cond_0
    return-void
    .line 47
.end method
