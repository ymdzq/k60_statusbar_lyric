.class public final Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;
.super Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final int2Cache:[I

.field public final statusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/android/systemui/statusbar/policy/BrightnessMirrorController;-><init>(Lcom/android/systemui/shade/NotificationShadeWindowView;Lcom/android/systemui/shade/ShadeSurface;Lcom/android/systemui/statusbar/NotificationShadeDepthController;Lcom/android/systemui/settings/brightness/BrightnessSliderController$Factory;Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda13;)V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->statusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 5
    const/4 p1, 0x2

    .line 7
    new-array p1, p1, [I

    .line 8
    iput-object p1, p0, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->int2Cache:[I

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->updateResources()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final setLocationAndSize(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->statusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 2
    const v1, 0x7f0a015d    # @id/brightness_mirror_container

    .line 4
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 17
    move-result v2

    .line 20
    sub-int/2addr v1, v2

    .line 21
    if-lez v1, :cond_0

    .line 22
    div-int/lit8 v1, v1, 0x2

    .line 24
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingTop()I

    .line 26
    move-result v2

    .line 29
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getPaddingBottom()I

    .line 30
    move-result v3

    .line 33
    invoke-virtual {v0, v1, v2, v1, v3}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 34
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->int2Cache:[I

    .line 37
    invoke-virtual {p1, p0}, Landroid/view/View;->getLocationInWindow([I)V

    .line 39
    const/4 v1, 0x0

    .line 42
    aget v2, p0, v1

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    .line 45
    move-result v3

    .line 48
    div-int/lit8 v3, v3, 0x2

    .line 49
    add-int/2addr v3, v2

    .line 51
    const/4 v2, 0x1

    .line 52
    aget v4, p0, v2

    .line 53
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    .line 55
    move-result p1

    .line 58
    div-int/lit8 p1, p1, 0x2

    .line 59
    add-int/2addr p1, v4

    .line 61
    const/4 v4, 0x0

    .line 62
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 63
    invoke-virtual {v0, v4}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 66
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->getLocationInWindow([I)V

    .line 69
    aget v1, p0, v1

    .line 72
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 74
    move-result v4

    .line 77
    div-int/lit8 v4, v4, 0x2

    .line 78
    add-int/2addr v4, v1

    .line 80
    aget p0, p0, v2

    .line 81
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 83
    move-result v1

    .line 86
    div-int/lit8 v1, v1, 0x2

    .line 87
    add-int/2addr v1, p0

    .line 89
    sub-int/2addr v3, v4

    .line 90
    int-to-float p0, v3

    .line 91
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTranslationX(F)V

    .line 92
    sub-int/2addr p1, v1

    .line 95
    int-to-float p0, p1

    .line 96
    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 97
    return-void
    .line 100
.end method

.method public final updateResources()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/brightness/MiuiBrightnessMirrorController;->statusBarWindow:Lcom/android/systemui/shade/NotificationShadeWindowView;

    .line 2
    const v0, 0x7f0a015d    # @id/brightness_mirror_container

    .line 4
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Landroid/widget/FrameLayout;

    .line 11
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 17
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 19
    move-result-object v2

    .line 22
    check-cast v2, Landroid/widget/FrameLayout;

    .line 23
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 25
    move-result-object v2

    .line 28
    const v3, 0x7f070fdf    # @dimen/qs_panel_width '@dimen/notification_panel_width'

    .line 29
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 32
    move-result v2

    .line 35
    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 36
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->requireViewById(I)Landroid/view/View;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Landroid/widget/FrameLayout;

    .line 42
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    return-void
    .line 47
.end method
