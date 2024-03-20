.class public Lcom/android/systemui/qs/MiuiQSContainer;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BACKGROUND_BOTTOM:Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;

.field public static final BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;


# instance fields
.field public animateBottomOnNextLayout:Z

.field public backgroundBottom:I

.field public brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

.field public caretAnimator:Landroid/animation/ValueAnimator;

.field public caretInterpolator:Landroid/view/animation/Interpolator;

.field public contentAdded:Z

.field public contentPaddingEnd:I

.field public contentPaddingStart:I

.field public dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

.field public dragHandle:Landroid/widget/ImageView;

.field public extraAnimatedViews:[Landroid/view/View;

.field public final foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

.field public footer:Lcom/android/systemui/qs/MiuiQSFooter;

.field public footerBundle:Landroid/view/ViewGroup;

.field public header:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

.field public heightOverride:I

.field public hiddenState:Lmiuix/animation/controller/AnimState;

.field public indicatorDrawable:Lcom/android/systemui/qs/IndicatorDrawable;

.field public indicatorProgress:F

.field public final inflationController:Lcom/android/systemui/util/InjectionInflationController;

.field public layoutInflater:Landroid/view/LayoutInflater;

.field public mContainerFolme:Lmiuix/animation/IFolme;

.field public mItemConfig:Lmiuix/animation/base/AnimConfig;

.field public qsBackground:Landroid/view/View;

.field public qsContent:Lcom/android/systemui/qs/QSContent;

.field public qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

.field public qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

.field public qsDisabled:Z

.field public qsExpansion:F

.field public qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

.field public qsPanelScrollView:Landroid/view/View;

.field public quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

.field public showQsPanel:Z

.field public showState:Lmiuix/animation/controller/AnimState;

.field public sideMargins:I

.field public final sizePoint:Landroid/graphics/Point;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/qs/MiuiQSContainer;->BACKGROUND_BOTTOM:Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;

    .line 7
    new-instance v0, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 9
    const v1, 0x44bb8000    # 1500.0f

    .line 11
    const/high16 v2, 0x3f400000    # 0.75f

    .line 14
    invoke-direct {v0, v1, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;-><init>(FF)V

    .line 16
    sput-object v0, Lcom/android/systemui/qs/MiuiQSContainer;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 19
    return-void
    .line 21
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;Lcom/android/systemui/util/InjectionInflationController;Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->inflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 5
    iput-object p4, p0, Lcom/android/systemui/qs/MiuiQSContainer;->foldManager:Lcom/android/systemui/statusbar/notification/unimportant/FoldNotifManager;

    .line 7
    new-instance p1, Landroid/graphics/Point;

    .line 9
    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sizePoint:Landroid/graphics/Point;

    .line 14
    const/4 p1, -0x1

    .line 16
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->backgroundBottom:I

    .line 17
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->heightOverride:I

    .line 19
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingStart:I

    .line 21
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingEnd:I

    .line 23
    return-void
    .line 25
.end method

.method public static final synthetic access$getBackgroundBottom(Lcom/android/systemui/qs/MiuiQSContainer;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getBackgroundBottom()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method private final getBackgroundBottom()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->backgroundBottom:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_1

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 7
    if-nez p0, :cond_0

    .line 9
    const/4 p0, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getBottom()I

    .line 16
    move-result p0

    .line 19
    int-to-float p0, p0

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    int-to-float p0, v0

    .line 22
    :goto_0
    return p0
    .line 23
.end method

.method private final getDataUsageHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getVisibility()I

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move v0, v1

    .line 15
    :goto_0
    if-eqz v0, :cond_1

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 18
    if-eqz p0, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 22
    move-result v1

    .line 25
    :cond_1
    return v1
    .line 26
.end method

.method private final getDisplayHeight()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sizePoint:Landroid/graphics/Point;

    .line 2
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 4
    if-nez v0, :cond_0

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getDisplay()Landroid/view/Display;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sizePoint:Landroid/graphics/Point;

    .line 12
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sizePoint:Landroid/graphics/Point;

    .line 17
    iget p0, p0, Landroid/graphics/Point;->y:I

    .line 19
    return p0
    .line 21
.end method

.method private final getLayoutInflater()Landroid/view/LayoutInflater;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->layoutInflater:Landroid/view/LayoutInflater;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->inflationController:Lcom/android/systemui/util/InjectionInflationController;

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    invoke-virtual {v1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v1, v2}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 23
    move-result-object v1

    .line 26
    iget-object v0, v0, Lcom/android/systemui/util/InjectionInflationController;->mFactory:Lcom/android/systemui/util/InjectionInflationController$InjectionFactory;

    .line 27
    invoke-virtual {v1, v0}, Landroid/view/LayoutInflater;->setPrivateFactory(Landroid/view/LayoutInflater$Factory2;)V

    .line 29
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->layoutInflater:Landroid/view/LayoutInflater;

    .line 32
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->layoutInflater:Landroid/view/LayoutInflater;

    .line 34
    return-object p0
    .line 36
.end method

.method private final getQsExpansion()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsExpansion:F

    .line 2
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return p0

    .line 11
    :cond_0
    iget p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsExpansion:F

    .line 12
    return p0
    .line 14
.end method


# virtual methods
.method public final addQSContent()V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    const v1, 0x7f0d02f8    # @layout/qs_detail 'res/layout/qs_detail.xml'

    .line 14
    const/4 v2, 0x1

    .line 17
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 18
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 21
    move-result-object v0

    .line 24
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    const v1, 0x7f0d01cc    # @layout/miui_qs_customize_panel 'res/layout/miui_qs_customize_panel.xml'

    .line 28
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 31
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getLayoutInflater()Landroid/view/LayoutInflater;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 38
    const v1, 0x7f0d02f0    # @layout/qs_content 'res/layout/qs_content.xml'

    .line 41
    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const v0, 0x7f0a0755    # @id/qs_content

    .line 47
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lcom/android/systemui/qs/QSContent;

    .line 54
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 56
    const v0, 0x7f0a0757    # @id/qs_detail

    .line 58
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 61
    move-result-object v1

    .line 64
    check-cast v1, Lcom/android/systemui/qs/MiuiQSDetail;

    .line 65
    iput-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 67
    const v1, 0x7f0a0756    # @id/qs_customize

    .line 69
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v3

    .line 75
    check-cast v3, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 76
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 78
    const v3, 0x7f0a076f    # @id/quick_settings_panel

    .line 80
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 83
    move-result-object v3

    .line 86
    check-cast v3, Lcom/android/systemui/qs/MiuiQSPanel;

    .line 87
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 89
    const v3, 0x7f0a076c    # @id/quick_qs_panel

    .line 91
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 94
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 98
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 100
    const v3, 0x7f0a015e    # @id/brightness_slider

    .line 102
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 105
    move-result-object v3

    .line 108
    check-cast v3, Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 109
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 111
    const/16 v4, 0x8

    .line 113
    const/4 v5, 0x0

    .line 115
    if-nez v3, :cond_1

    .line 116
    goto :goto_1

    .line 118
    :cond_1
    iget-boolean v6, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    .line 119
    if-eqz v6, :cond_2

    .line 121
    move v6, v4

    .line 123
    goto :goto_0

    .line 124
    :cond_2
    move v6, v5

    .line 125
    :goto_0
    invoke-virtual {v3, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 126
    :goto_1
    const v3, 0x7f0a075d    # @id/qs_footer

    .line 129
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 132
    move-result-object v3

    .line 135
    instance-of v6, v3, Lcom/android/systemui/qs/MiuiQSFooter;

    .line 136
    if-eqz v6, :cond_3

    .line 138
    check-cast v3, Lcom/android/systemui/qs/MiuiQSFooter;

    .line 140
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footer:Lcom/android/systemui/qs/MiuiQSFooter;

    .line 142
    :cond_3
    const v3, 0x7f0a075f    # @id/qs_footer_bundle

    .line 144
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 147
    move-result-object v3

    .line 150
    check-cast v3, Landroid/view/ViewGroup;

    .line 151
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 153
    const v3, 0x7f0a0760    # @id/qs_footer_data_usage

    .line 155
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 158
    move-result-object v3

    .line 161
    check-cast v3, Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 162
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dataUsage:Lcom/android/systemui/qs/datausage/QSFooterDataUsage;

    .line 164
    const v3, 0x7f0a034d    # @id/expanded_qs_scroll_view

    .line 166
    invoke-virtual {p0, v3}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object v3

    .line 172
    iput-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 173
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 175
    move-result-object v0

    .line 178
    check-cast v0, Lcom/android/systemui/qs/MiuiQSDetail;

    .line 179
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 181
    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 183
    move-result-object v0

    .line 186
    check-cast v0, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 187
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 189
    const v0, 0x7f0a075c    # @id/qs_expand_indicator

    .line 191
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 194
    move-result-object v0

    .line 197
    check-cast v0, Landroid/widget/ImageView;

    .line 198
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    .line 200
    new-instance v0, Lcom/android/systemui/qs/IndicatorDrawable;

    .line 202
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 204
    move-result-object v1

    .line 207
    invoke-direct {v0, v1}, Lcom/android/systemui/qs/IndicatorDrawable;-><init>(Landroid/content/Context;)V

    .line 208
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorDrawable:Lcom/android/systemui/qs/IndicatorDrawable;

    .line 211
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    .line 213
    if-eqz v1, :cond_4

    .line 215
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 217
    :cond_4
    const v0, 0x7f0a076d    # @id/quick_settings_background

    .line 220
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 223
    move-result-object v0

    .line 226
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 227
    if-nez v0, :cond_5

    .line 229
    goto :goto_3

    .line 231
    :cond_5
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDisabled:Z

    .line 232
    if-eqz v1, :cond_6

    .line 234
    goto :goto_2

    .line 236
    :cond_6
    move v4, v5

    .line 237
    :goto_2
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 238
    :goto_3
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->backgroundBottom:I

    .line 241
    if-lez v0, :cond_8

    .line 243
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 245
    if-nez v1, :cond_7

    .line 247
    goto :goto_4

    .line 249
    :cond_7
    invoke-virtual {v1, v0}, Landroid/view/View;->setBottom(I)V

    .line 250
    :cond_8
    :goto_4
    invoke-virtual {p0, v2}, Lcom/android/systemui/qs/MiuiQSContainer;->updateResources(Z)V

    .line 253
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 256
    if-eqz v0, :cond_9

    .line 258
    new-instance v1, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;

    .line 260
    invoke-direct {v1, p0, v5}, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;-><init>(Lcom/android/systemui/qs/MiuiQSContainer;I)V

    .line 262
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 265
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 268
    if-eqz v0, :cond_a

    .line 270
    new-instance v1, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;

    .line 272
    invoke-direct {v1, p0, v2}, Lcom/android/systemui/qs/MiuiQSContainer$addQSContent$1;-><init>(Lcom/android/systemui/qs/MiuiQSContainer;I)V

    .line 274
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/MiuiQSPanel;->setMediaVisibilityChangedListener(Ljava/util/function/Consumer;)V

    .line 277
    :cond_a
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->setupAnimatedViews()V

    .line 280
    iput-boolean v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 283
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 285
    filled-new-array {v0}, [Landroid/view/View;

    .line 287
    move-result-object v0

    .line 290
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    .line 291
    move-result-object v0

    .line 294
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mContainerFolme:Lmiuix/animation/IFolme;

    .line 295
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 297
    const-string v1, "qs_content_hidden"

    .line 299
    invoke-direct {v0, v1}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 301
    sget-object v1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    .line 304
    new-array v2, v5, [J

    .line 306
    const v3, 0x3f666666    # 0.9f

    .line 308
    invoke-virtual {v0, v1, v3, v2}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 311
    move-result-object v0

    .line 314
    sget-object v2, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    .line 315
    new-array v4, v5, [J

    .line 317
    invoke-virtual {v0, v2, v3, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 319
    move-result-object v0

    .line 322
    sget-object v3, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    .line 323
    const/4 v4, 0x0

    .line 325
    new-array v6, v5, [J

    .line 326
    invoke-virtual {v0, v3, v4, v6}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 328
    move-result-object v0

    .line 331
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->hiddenState:Lmiuix/animation/controller/AnimState;

    .line 332
    new-instance v0, Lmiuix/animation/controller/AnimState;

    .line 334
    const-string v4, "qs_content_show"

    .line 336
    invoke-direct {v0, v4}, Lmiuix/animation/controller/AnimState;-><init>(Ljava/lang/Object;)V

    .line 338
    new-array v4, v5, [J

    .line 341
    const/high16 v6, 0x3f800000    # 1.0f

    .line 343
    invoke-virtual {v0, v1, v6, v4}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 345
    move-result-object v0

    .line 348
    new-array v1, v5, [J

    .line 349
    invoke-virtual {v0, v2, v6, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 351
    move-result-object v0

    .line 354
    new-array v1, v5, [J

    .line 355
    invoke-virtual {v0, v3, v6, v1}, Lmiuix/animation/controller/AnimState;->add(Lmiuix/animation/property/ViewProperty;F[J)Lmiuix/animation/controller/AnimState;

    .line 357
    move-result-object v0

    .line 360
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->showState:Lmiuix/animation/controller/AnimState;

    .line 361
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 363
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 365
    const/4 v1, 0x2

    .line 368
    new-array v2, v1, [F

    .line 369
    fill-array-data v2, :array_0

    .line 371
    const/4 v3, -0x2

    .line 374
    invoke-virtual {v0, v3, v2}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 375
    move-result-object v0

    .line 378
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->mItemConfig:Lmiuix/animation/base/AnimConfig;

    .line 379
    new-instance p0, Lmiuix/animation/base/AnimConfig;

    .line 381
    invoke-direct {p0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 383
    new-array v0, v1, [F

    .line 386
    fill-array-data v0, :array_1

    .line 388
    invoke-virtual {p0, v3, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 391
    return-void

    .line 394
    nop

    .line 395
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3f19999a    # 0.6f
    .end array-data

    .line 396
    :array_1
    .array-data 4
        0x3f733333    # 0.95f
        0x3f19999a    # 0.6f
    .end array-data
    .line 404
.end method

.method public final getBrightnessView()Lcom/android/systemui/settings/brightness/BrightnessSliderView;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->brightnessView:Lcom/android/systemui/settings/brightness/BrightnessSliderView;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getContentAdded()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getFooter()Lcom/android/systemui/qs/MiuiQSFooter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footer:Lcom/android/systemui/qs/MiuiQSFooter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->header:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getMinHeight()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 6
    move-result v0

    .line 9
    iget-boolean v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->showQsPanel:Z

    .line 10
    if-eqz v1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 18
    if-eqz v2, :cond_0

    .line 20
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getHeight()I

    .line 25
    move-result v1

    .line 28
    add-int/2addr v1, v0

    .line 29
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 30
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 32
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getHeight()I

    .line 35
    move-result p0

    .line 38
    add-int v0, p0, v1

    .line 39
    :cond_0
    return v0
    .line 41
.end method

.method public final getQsCustomizer()Lcom/android/systemui/qs/customize/MiuiQSCustomizer;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getQsDetail()Lcom/android/systemui/qs/MiuiQSDetail;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getQsPanel()Lcom/android/systemui/qs/MiuiQSPanel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getQsPanelScrollView()Landroid/view/View;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getQuickQSPanel()Lcom/android/systemui/qs/MiuiQuickQSPanel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 2
    return-object p0
    .line 4
.end method

.method public final measureChildWithMargins(Landroid/view/View;IIII)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 2
    if-eq p1, v0, :cond_0

    .line 4
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->measureChildWithMargins(Landroid/view/View;IIII)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    new-instance p1, Lcom/android/systemui/qs/MiuiQSContainer$onConfigurationChanged$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/MiuiQSContainer$onConfigurationChanged$1;-><init>(Lcom/android/systemui/qs/MiuiQSContainer;)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 10
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sizePoint:Landroid/graphics/Point;

    .line 13
    const/4 p1, 0x0

    .line 15
    invoke-virtual {p0, p1, p1}, Landroid/graphics/Point;->set(II)V

    .line 16
    return-void
    .line 19
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a03e4    # @id/header

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 12
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->header:Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 14
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/systemui/qs/MiuiNotificationShadeHeader;->setQSContainer(Lcom/android/systemui/qs/MiuiQSContainer;)V

    .line 20
    sget-object v0, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 23
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretInterpolator:Landroid/view/animation/Interpolator;

    .line 25
    const/4 v0, 0x2

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setImportantForAccessibility(I)V

    .line 28
    return-void
    .line 31
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->animateBottomOnNextLayout:Z

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->updateExpansion(Z)V

    .line 7
    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->animateBottomOnNextLayout:Z

    .line 11
    return-void
    .line 13
.end method

.method public final onMeasure(II)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentAdded:Z

    .line 2
    if-eqz v0, :cond_4

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p2

    .line 9
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object p2

    .line 13
    iget v0, p2, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 14
    const/16 v1, 0x258

    .line 16
    if-ge v0, v1, :cond_1

    .line 18
    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    .line 20
    const/4 v0, 0x2

    .line 22
    if-eq p2, v0, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 p2, 0x0

    .line 26
    goto :goto_1

    .line 27
    :cond_1
    :goto_0
    const/4 p2, 0x1

    .line 28
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 29
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 31
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 34
    move-result-object v0

    .line 37
    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 38
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getDisplayHeight()I

    .line 40
    move-result v1

    .line 43
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 44
    sub-int/2addr v1, v2

    .line 46
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 47
    sub-int/2addr v1, v2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p2

    .line 55
    const v2, 0x7f070d14    # @dimen/navigation_bar_height '@android:dimen/notification_big_picture_max_height'

    .line 56
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 59
    move-result p2

    .line 62
    sub-int/2addr v1, p2

    .line 63
    :cond_2
    iget p2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sideMargins:I

    .line 64
    add-int/2addr p2, p2

    .line 66
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 67
    add-int/2addr p2, v2

    .line 69
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 70
    add-int/2addr p2, v2

    .line 72
    iget v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 73
    invoke-static {p1, p2, v2}, Landroid/view/ViewGroup;->getChildMeasureSpec(III)I

    .line 75
    move-result v2

    .line 78
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 79
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 81
    const/high16 v4, -0x80000000

    .line 84
    invoke-static {v1, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 86
    move-result v1

    .line 89
    invoke-virtual {v3, v2, v1}, Landroid/view/View;->measure(II)V

    .line 90
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 93
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 95
    invoke-virtual {v1}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    move-result v1

    .line 101
    add-int/2addr v1, p2

    .line 102
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 103
    iget v0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 105
    add-int/2addr p2, v0

    .line 107
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 108
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 113
    move-result v0

    .line 116
    add-int/2addr v0, p2

    .line 117
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 118
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 120
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    .line 123
    move-result p2

    .line 126
    add-int/2addr p2, v0

    .line 127
    const/high16 v0, 0x40000000    # 2.0f

    .line 128
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 130
    move-result v1

    .line 133
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 134
    move-result p2

    .line 137
    invoke-super {p0, v1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 138
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 141
    if-eqz p2, :cond_3

    .line 143
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getDisplayHeight()I

    .line 145
    move-result v1

    .line 148
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 149
    move-result v1

    .line 152
    invoke-virtual {p2, p1, v1}, Landroid/widget/LinearLayout;->measure(II)V

    .line 153
    :cond_3
    iget-object p2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 156
    if-eqz p2, :cond_5

    .line 158
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getDisplayHeight()I

    .line 160
    move-result p0

    .line 163
    invoke-static {p0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 164
    move-result p0

    .line 167
    invoke-virtual {p2, p1, p0}, Landroid/widget/LinearLayout;->measure(II)V

    .line 168
    goto :goto_2

    .line 171
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 172
    :cond_5
    :goto_2
    return-void
    .line 175
.end method

.method public final performClick()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final varargs setDetailAnimatedViews([Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->extraAnimatedViews:[Landroid/view/View;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->setupAnimatedViews()V

    .line 4
    return-void
    .line 7
.end method

.method public final setExpansion(F)V
    .locals 7

    .line 1
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsExpansion()F

    .line 2
    move-result v0

    .line 5
    sub-float/2addr v0, p1

    .line 6
    const v1, 0x3b03126f    # 0.002f

    .line 7
    cmpl-float v0, v0, v1

    .line 10
    const/4 v2, 0x0

    .line 12
    const/4 v3, 0x0

    .line 13
    const/4 v4, 0x1

    .line 14
    if-lez v0, :cond_1

    .line 15
    cmpg-float v0, p1, v2

    .line 17
    if-nez v0, :cond_0

    .line 19
    move v0, v4

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move v0, v3

    .line 23
    :goto_0
    if-nez v0, :cond_1

    .line 24
    const/high16 v0, -0x40800000    # -1.0f

    .line 26
    goto :goto_2

    .line 28
    :cond_1
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsExpansion()F

    .line 29
    move-result v0

    .line 32
    sub-float v0, p1, v0

    .line 33
    cmpl-float v0, v0, v1

    .line 35
    if-lez v0, :cond_3

    .line 37
    const/high16 v0, 0x3f800000    # 1.0f

    .line 39
    cmpg-float v1, p1, v0

    .line 41
    if-nez v1, :cond_2

    .line 43
    move v1, v4

    .line 45
    goto :goto_1

    .line 46
    :cond_2
    move v1, v3

    .line 47
    :goto_1
    if-nez v1, :cond_3

    .line 48
    goto :goto_2

    .line 50
    :cond_3
    move v0, v2

    .line 51
    :goto_2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorDrawable:Lcom/android/systemui/qs/IndicatorDrawable;

    .line 52
    if-eqz v1, :cond_9

    .line 54
    iget v5, p0, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorProgress:F

    .line 56
    cmpg-float v5, v5, v0

    .line 58
    if-nez v5, :cond_4

    .line 60
    move v5, v4

    .line 62
    goto :goto_3

    .line 63
    :cond_4
    move v5, v3

    .line 64
    :goto_3
    if-nez v5, :cond_9

    .line 65
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->indicatorProgress:F

    .line 67
    iget-object v5, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretAnimator:Landroid/animation/ValueAnimator;

    .line 69
    if-eqz v5, :cond_5

    .line 71
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 73
    move-result v6

    .line 76
    if-eqz v6, :cond_5

    .line 77
    invoke-virtual {v5}, Landroid/animation/ValueAnimator;->cancel()V

    .line 79
    iput v2, v1, Lcom/android/systemui/qs/IndicatorDrawable;->mCaretProgress:F

    .line 82
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 84
    :cond_5
    const/4 v5, 0x2

    .line 87
    new-array v5, v5, [F

    .line 88
    aput v2, v5, v3

    .line 90
    aput v0, v5, v4

    .line 92
    invoke-static {v5}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 94
    move-result-object v0

    .line 97
    iput-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretAnimator:Landroid/animation/ValueAnimator;

    .line 98
    if-eqz v0, :cond_6

    .line 100
    new-instance v2, Lcom/android/systemui/qs/MiuiQSContainer$updateIndicator$1$2;

    .line 102
    invoke-direct {v2, v1}, Lcom/android/systemui/qs/MiuiQSContainer$updateIndicator$1$2;-><init>(Lcom/android/systemui/qs/IndicatorDrawable;)V

    .line 104
    invoke-virtual {v0, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 107
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretAnimator:Landroid/animation/ValueAnimator;

    .line 110
    if-nez v0, :cond_7

    .line 112
    goto :goto_4

    .line 114
    :cond_7
    const-wide/16 v1, 0xc8

    .line 115
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 117
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretAnimator:Landroid/animation/ValueAnimator;

    .line 120
    if-nez v0, :cond_8

    .line 122
    goto :goto_5

    .line 124
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 127
    :goto_5
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->caretAnimator:Landroid/animation/ValueAnimator;

    .line 130
    if-eqz v0, :cond_9

    .line 132
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 134
    :cond_9
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 137
    if-eqz v0, :cond_a

    .line 139
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 141
    if-eqz v1, :cond_a

    .line 143
    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    .line 145
    move-result v0

    .line 148
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 149
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 151
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    .line 154
    move-result v1

    .line 157
    sub-int/2addr v0, v1

    .line 158
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 159
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 161
    int-to-float v0, v0

    .line 164
    int-to-float v2, v4

    .line 165
    sub-float v2, p1, v2

    .line 166
    mul-float/2addr v2, v0

    .line 168
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 169
    :cond_a
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsExpansion:F

    .line 172
    invoke-virtual {p0, v3}, Lcom/android/systemui/qs/MiuiQSContainer;->updateExpansion(Z)V

    .line 174
    return-void
    .line 177
.end method

.method public final setHeightOverride(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->heightOverride:I

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer;->updateExpansion(Z)V

    .line 5
    return-void
    .line 8
.end method

.method public final setShowQSPanel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->showQsPanel:Z

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 4
    if-nez p0, :cond_0

    .line 6
    goto :goto_1

    .line 8
    :cond_0
    if-eqz p1, :cond_1

    .line 9
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_1
    const/16 p1, 0x8

    .line 13
    :goto_0
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 15
    :goto_1
    return-void
    .line 18
.end method

.method public final setupAnimatedViews()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->dragHandle:Landroid/widget/ImageView;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 6
    iget-object v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanel:Lcom/android/systemui/qs/MiuiQSPanel;

    .line 8
    iget-object v4, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 10
    filled-new-array {v0, v1, v2, v3, v4}, [Landroid/view/View;

    .line 12
    move-result-object v0

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 16
    move-result-object v0

    .line 19
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->extraAnimatedViews:[Landroid/view/View;

    .line 20
    if-eqz v1, :cond_0

    .line 22
    array-length v2, v1

    .line 24
    invoke-static {v1, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 25
    move-result-object v1

    .line 28
    invoke-static {v1}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 38
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 41
    move-result-object v2

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 48
    if-eqz v2, :cond_1

    .line 50
    invoke-virtual {v2, v0}, Lcom/android/systemui/qs/MiuiQSDetail;->setAnimatedViews(Ljava/util/List;)V

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 55
    if-eqz p0, :cond_2

    .line 57
    invoke-virtual {p0, v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setAnimatedViews(Ljava/util/List;)V

    .line 59
    :cond_2
    return-void
    .line 62
.end method

.method public final updateExpansion(Z)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->heightOverride:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-eq v0, v1, :cond_0

    .line 5
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 8
    move-result v0

    .line 11
    :goto_0
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getQsExpansion()F

    .line 12
    move-result v1

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 16
    move-result v2

    .line 19
    sub-int/2addr v0, v2

    .line 20
    int-to-float v0, v0

    .line 21
    mul-float/2addr v1, v0

    .line 22
    invoke-static {v1}, Ljava/lang/Float;->isNaN(F)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_1

    .line 27
    const/4 v0, 0x0

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    invoke-static {v1}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 31
    move-result v0

    .line 34
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getMinHeight()I

    .line 35
    move-result v1

    .line 38
    add-int/2addr v1, v0

    .line 39
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getTop()I

    .line 40
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setBottom(I)V

    .line 45
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 48
    if-eqz v0, :cond_3

    .line 50
    iget-object v2, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsBackground:Landroid/view/View;

    .line 52
    if-nez v2, :cond_2

    .line 54
    goto :goto_2

    .line 56
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    .line 57
    move-result v0

    .line 60
    invoke-virtual {v2, v0}, Landroid/view/View;->setTop(I)V

    .line 61
    :cond_3
    :goto_2
    iget-object v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->footerBundle:Landroid/view/ViewGroup;

    .line 64
    if-eqz v0, :cond_6

    .line 66
    int-to-float v2, v1

    .line 68
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 69
    move-result v3

    .line 72
    int-to-float v3, v3

    .line 73
    sub-float/2addr v2, v3

    .line 74
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 75
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 78
    move-result-object v2

    .line 81
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getHeight()I

    .line 82
    move-result v2

    .line 85
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getHeight()I

    .line 86
    move-result v3

    .line 89
    sub-int/2addr v1, v3

    .line 90
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 91
    move-result v1

    .line 94
    int-to-float v2, v1

    .line 95
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setTranslationY(F)V

    .line 96
    invoke-direct {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getDataUsageHeight()I

    .line 99
    move-result v0

    .line 102
    add-int/2addr v1, v0

    .line 103
    sget-object v0, Lcom/android/wm/shell/animation/PhysicsAnimator;->instanceConstructor:Lkotlin/jvm/functions/Function1;

    .line 104
    invoke-static {p0}, Lcom/android/wm/shell/animation/PhysicsAnimator$Companion;->getInstance(Ljava/lang/Object;)Lcom/android/wm/shell/animation/PhysicsAnimator;

    .line 106
    move-result-object v0

    .line 109
    sget-object v2, Lcom/android/systemui/qs/MiuiQSContainer;->BACKGROUND_BOTTOM:Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;

    .line 110
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/animation/PhysicsAnimator;->isPropertyAnimating(Landroidx/dynamicanimation/animation/FloatPropertyCompat;)Z

    .line 112
    move-result v3

    .line 115
    if-nez v3, :cond_5

    .line 116
    if-eqz p1, :cond_4

    .line 118
    goto :goto_3

    .line 120
    :cond_4
    int-to-float p1, v1

    .line 121
    invoke-virtual {v2, p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;->setValue(Ljava/lang/Object;F)V

    .line 122
    goto :goto_4

    .line 125
    :cond_5
    :goto_3
    invoke-virtual {v2, p0}, Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;->getValue(Ljava/lang/Object;)F

    .line 126
    move-result p1

    .line 129
    invoke-virtual {v2, p0, p1}, Lcom/android/systemui/qs/MiuiQSContainer$Companion$BACKGROUND_BOTTOM$1;->setValue(Ljava/lang/Object;F)V

    .line 130
    int-to-float p0, v1

    .line 133
    sget-object p1, Lcom/android/systemui/qs/MiuiQSContainer;->BACKGROUND_SPRING:Lcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;

    .line 134
    const/4 v1, 0x0

    .line 136
    invoke-virtual {v0, v2, p0, v1, p1}, Lcom/android/wm/shell/animation/PhysicsAnimator;->spring(Landroidx/dynamicanimation/animation/FloatPropertyCompat;FFLcom/android/wm/shell/animation/PhysicsAnimator$SpringConfig;)V

    .line 137
    invoke-virtual {v0}, Lcom/android/wm/shell/animation/PhysicsAnimator;->start()V

    .line 140
    :cond_6
    :goto_4
    return-void
    .line 143
.end method

.method public final updateResources(Z)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 6
    move-result v0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsPanelScrollView:Landroid/view/View;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 18
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 22
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->quickQSPanel:Lcom/android/systemui/qs/MiuiQuickQSPanel;

    .line 25
    if-eqz v1, :cond_1

    .line 27
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v2

    .line 32
    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 33
    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 35
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 37
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 40
    if-eqz v1, :cond_2

    .line 42
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 48
    move-result-object v2

    .line 51
    const v3, 0x7f070f7f    # @dimen/qs_detail_margin_bottom '@dimen/qs_customize_padding_bottom'

    .line 52
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 55
    move-result v2

    .line 58
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    .line 59
    move-result v3

    .line 62
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getPaddingRight()I

    .line 63
    move-result v4

    .line 66
    invoke-virtual {v1, v3, v0, v4, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 70
    if-eqz v1, :cond_5

    .line 72
    iget-object v2, v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->header:Landroid/widget/RelativeLayout;

    .line 74
    const/4 v3, 0x0

    .line 76
    if-nez v2, :cond_3

    .line 77
    move-object v2, v3

    .line 79
    :cond_3
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    move-result-object v2

    .line 83
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iput v0, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 86
    iget-object v0, v1, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->header:Landroid/widget/RelativeLayout;

    .line 88
    if-nez v0, :cond_4

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    move-object v3, v0

    .line 93
    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 94
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->requestLayout()V

    .line 97
    invoke-virtual {v1}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->updateResources()V

    .line 100
    :cond_5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object v0

    .line 106
    const v1, 0x7f070dfa    # @dimen/notification_side_paddings '14.0dp'

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v0

    .line 113
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sideMargins:I

    .line 114
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 116
    move-result-object v0

    .line 119
    const v1, 0x1050211    # @android:dimen/notification_header_shrink_hide_width

    .line 120
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 123
    move-result v0

    .line 126
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingStart:I

    .line 127
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 129
    move-result-object v0

    .line 132
    const v1, 0x1050210    # @android:dimen/notification_header_separating_margin

    .line 133
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 136
    move-result v0

    .line 139
    iget v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingEnd:I

    .line 140
    const/4 v2, 0x0

    .line 142
    if-eq v0, v1, :cond_6

    .line 143
    const/4 v1, 0x1

    .line 145
    goto :goto_1

    .line 146
    :cond_6
    move v1, v2

    .line 147
    :goto_1
    iput v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingEnd:I

    .line 148
    if-nez v1, :cond_7

    .line 150
    if-eqz p1, :cond_c

    .line 152
    :cond_7
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getChildCount()I

    .line 154
    move-result p1

    .line 157
    :goto_2
    if-ge v2, p1, :cond_c

    .line 158
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->getChildAt(I)Landroid/view/View;

    .line 160
    move-result-object v0

    .line 163
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 164
    move-result-object v1

    .line 167
    if-ne v0, v1, :cond_8

    .line 168
    goto :goto_3

    .line 170
    :cond_8
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsCustomizer:Lcom/android/systemui/qs/customize/MiuiQSCustomizer;

    .line 171
    if-ne v0, v1, :cond_9

    .line 173
    if-eqz v1, :cond_b

    .line 175
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sideMargins:I

    .line 177
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/qs/customize/MiuiQSCustomizer;->setMargins(II)V

    .line 179
    goto :goto_3

    .line 182
    :cond_9
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsDetail:Lcom/android/systemui/qs/MiuiQSDetail;

    .line 183
    if-ne v0, v1, :cond_a

    .line 185
    if-eqz v1, :cond_b

    .line 187
    iget v0, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sideMargins:I

    .line 189
    invoke-virtual {v1, v0, v0}, Lcom/android/systemui/qs/MiuiQSDetail;->setMargins(II)V

    .line 191
    goto :goto_3

    .line 194
    :cond_a
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 195
    move-result-object v1

    .line 198
    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 199
    iget v3, p0, Lcom/android/systemui/qs/MiuiQSContainer;->sideMargins:I

    .line 201
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 203
    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 205
    iget-object v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->qsContent:Lcom/android/systemui/qs/QSContent;

    .line 207
    if-eq v0, v1, :cond_b

    .line 209
    invoke-virtual {p0}, Lcom/android/systemui/qs/MiuiQSContainer;->getHeader()Lcom/android/systemui/qs/MiuiNotificationShadeHeader;

    .line 211
    move-result-object v1

    .line 214
    if-eq v0, v1, :cond_b

    .line 215
    iget v1, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingStart:I

    .line 217
    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    .line 219
    move-result v3

    .line 222
    iget v4, p0, Lcom/android/systemui/qs/MiuiQSContainer;->contentPaddingEnd:I

    .line 223
    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    .line 225
    move-result v5

    .line 228
    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 229
    :cond_b
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 232
    goto :goto_2

    .line 234
    :cond_c
    return-void
    .line 235
.end method
