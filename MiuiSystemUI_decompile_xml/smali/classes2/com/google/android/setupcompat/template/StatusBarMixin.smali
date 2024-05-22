.class public final Lcom/google/android/setupcompat/template/StatusBarMixin;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/android/setupcompat/template/Mixin;


# instance fields
.field public final decorView:Landroid/view/View;

.field public final linearLayout:Landroid/widget/LinearLayout;

.field public final partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

.field public final statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/setupcompat/PartnerCustomizationLayout;Landroid/view/Window;Landroid/util/AttributeSet;I)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 5
    const v0, 0x7f0a0904    # @id/suc_layout_status

    .line 7
    invoke-virtual {p1, v0}, Lcom/google/android/setupcompat/internal/TemplateLayout;->findManagedViewById(I)Landroid/view/View;

    .line 10
    move-result-object v0

    .line 13
    if-eqz v0, :cond_4

    .line 14
    instance-of v1, v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    check-cast v0, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    .line 20
    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    check-cast v0, Landroid/widget/LinearLayout;

    .line 25
    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->linearLayout:Landroid/widget/LinearLayout;

    .line 27
    :goto_0
    invoke-virtual {p2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 29
    move-result-object v0

    .line 32
    iput-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->decorView:Landroid/view/View;

    .line 33
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p2, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 36
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 39
    move-result-object p2

    .line 42
    sget-object v2, Lcom/google/android/setupcompat/R$styleable;->SucStatusBarMixin:[I

    .line 43
    invoke-virtual {p2, p3, v2, p4, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    .line 45
    move-result-object p2

    .line 48
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 49
    move-result p3

    .line 52
    const/16 p4, 0x2000

    .line 53
    and-int/2addr p3, p4

    .line 55
    const/4 v2, 0x1

    .line 56
    if-ne p3, p4, :cond_1

    .line 57
    move p3, v2

    .line 59
    goto :goto_1

    .line 60
    :cond_1
    move p3, v1

    .line 61
    :goto_1
    invoke-virtual {p2, v1, p3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 62
    move-result p3

    .line 65
    invoke-virtual {p1}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 66
    move-result v3

    .line 69
    if-eqz v3, :cond_2

    .line 70
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 72
    move-result-object p1

    .line 75
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 76
    move-result-object p3

    .line 79
    sget-object v3, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_LIGHT_STATUS_BAR:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 80
    invoke-virtual {p3, p1, v3, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getBoolean(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;Z)Z

    .line 82
    move-result p3

    .line 85
    :cond_2
    if-eqz p3, :cond_3

    .line 86
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 88
    move-result p1

    .line 91
    or-int/2addr p1, p4

    .line 92
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 93
    goto :goto_2

    .line 96
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->getSystemUiVisibility()I

    .line 97
    move-result p1

    .line 100
    and-int/lit16 p1, p1, -0x2001

    .line 101
    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 103
    :goto_2
    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 106
    move-result-object p1

    .line 109
    invoke-virtual {p0, p1}, Lcom/google/android/setupcompat/template/StatusBarMixin;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 110
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 113
    return-void

    .line 116
    :cond_4
    new-instance p0, Ljava/lang/NullPointerException;

    .line 117
    const-string/jumbo p1, "sucLayoutStatus cannot be null in StatusBarMixin"

    .line 119
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 122
    throw p0
    .line 125
.end method


# virtual methods
.method public final setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->partnerCustomizationLayout:Lcom/google/android/setupcompat/PartnerCustomizationLayout;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->shouldApplyPartnerResource()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v0}, Lcom/google/android/setupcompat/PartnerCustomizationLayout;->useFullDynamicColor()Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 16
    move-result-object p1

    .line 19
    invoke-static {p1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->get(Landroid/content/Context;)Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;

    .line 20
    move-result-object v0

    .line 23
    sget-object v1, Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;->CONFIG_STATUS_BAR_BACKGROUND:Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/google/android/setupcompat/partnerconfig/PartnerConfigHelper;->getDrawable(Landroid/content/Context;Lcom/google/android/setupcompat/partnerconfig/PartnerConfig;)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object p1

    .line 29
    :cond_0
    iget-object v0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->statusBarLayout:Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;

    .line 30
    if-nez v0, :cond_1

    .line 32
    iget-object p0, p0, Lcom/google/android/setupcompat/template/StatusBarMixin;->linearLayout:Landroid/widget/LinearLayout;

    .line 34
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0, p1}, Lcom/google/android/setupcompat/view/StatusBarBackgroundLayout;->setStatusBarBackground(Landroid/graphics/drawable/Drawable;)V

    .line 40
    :goto_0
    return-void
    .line 43
.end method
