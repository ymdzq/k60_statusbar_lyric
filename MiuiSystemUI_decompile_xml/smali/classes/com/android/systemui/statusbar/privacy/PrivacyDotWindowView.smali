.class public Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

.field public mDisplayCutout:Landroid/view/DisplayCutout;

.field public final mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;

.field public mPaddingHorizontal:I

.field public mPaddingTop:I

.field public mRotationOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    const/4 p1, -0x1

    .line 5
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mRotationOrientation:I

    .line 6
    const/4 p1, 0x0

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingHorizontal:I

    .line 9
    iput p1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingTop:I

    .line 11
    const-class p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 13
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 15
    move-result-object p1

    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 19
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 21
    new-instance p1, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {p1}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;

    .line 28
    return-void
    .line 30
.end method


# virtual methods
.method public final onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateOrientationCutoutAndPadding()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateLayout()V

    .line 8
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onApplyWindowInsets(Landroid/view/WindowInsets;)Landroid/view/WindowInsets;

    .line 11
    move-result-object p0

    .line 14
    return-object p0
    .line 15
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateOrientationCutoutAndPadding()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateLayout()V

    .line 11
    :cond_0
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 18
    move-result-object v0

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;

    .line 22
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 24
    :cond_1
    return-void
    .line 27
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateOrientationCutoutAndPadding()Z

    .line 5
    move-result p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->updateLayout()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 6
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    .line 8
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 12
    move-result-object v0

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mOnComputeInternalInsetsListener:Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView$$ExternalSyntheticLambda0;

    .line 16
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnComputeInternalInsetsListener(Landroid/view/ViewTreeObserver$OnComputeInternalInsetsListener;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public updateLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mContentInsetsProvider:Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/StatusBarContentInsetsProvider;->getStatusBarContentInsetsForCurrentRotation()Landroid/util/Pair;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    check-cast v1, Ljava/lang/Integer;

    .line 10
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 12
    move-result v1

    .line 15
    iget v2, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingTop:I

    .line 16
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 18
    check-cast v0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 26
    move-result v3

    .line 29
    invoke-virtual {p0, v1, v2, v0, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 30
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->requestLayout()V

    .line 33
    return-void
    .line 36
.end method

.method public final updateOrientationCutoutAndPadding()Z
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Lcom/android/systemui/util/leak/RotationUtils;->getExactRotation(Landroid/content/Context;)I

    .line 6
    move-result v0

    .line 9
    iget v1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mRotationOrientation:I

    .line 10
    const/4 v2, 0x1

    .line 12
    if-eq v0, v1, :cond_0

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mRotationOrientation:I

    .line 15
    move v0, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 v0, 0x0

    .line 19
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 24
    move-result-object v1

    .line 27
    iget-object v3, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 28
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v1

    .line 33
    if-nez v1, :cond_1

    .line 34
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 36
    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroid/view/WindowInsets;->getDisplayCutout()Landroid/view/DisplayCutout;

    .line 40
    move-result-object v0

    .line 43
    iput-object v0, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mDisplayCutout:Landroid/view/DisplayCutout;

    .line 44
    move v0, v2

    .line 46
    :cond_1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 51
    move-result-object v1

    .line 54
    const v3, 0x7f07102c    # @dimen/rounded_corner_content_padding '@android:dimen/select_dialog_drawable_padding_start_material'

    .line 55
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 58
    move-result v1

    .line 61
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 62
    move-result-object v3

    .line 65
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 66
    move-result-object v3

    .line 69
    const v4, 0x7f0710f0    # @dimen/status_bar_padding_start '3.0px'

    .line 70
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 73
    move-result v3

    .line 76
    add-int/2addr v3, v1

    .line 77
    iget v1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingHorizontal:I

    .line 78
    if-eq v3, v1, :cond_2

    .line 80
    iput v3, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingHorizontal:I

    .line 82
    move v0, v2

    .line 84
    :cond_2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 85
    move-result-object v1

    .line 88
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 89
    move-result-object v1

    .line 92
    const v4, 0x7f0710f1    # @dimen/status_bar_padding_top '0.0dp'

    .line 93
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 96
    move-result v1

    .line 99
    iget v4, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingTop:I

    .line 100
    if-eq v3, v4, :cond_3

    .line 102
    iput v1, p0, Lcom/android/systemui/statusbar/privacy/PrivacyDotWindowView;->mPaddingTop:I

    .line 104
    goto :goto_1

    .line 106
    :cond_3
    move v2, v0

    .line 107
    :goto_1
    return v2
    .line 108
.end method
