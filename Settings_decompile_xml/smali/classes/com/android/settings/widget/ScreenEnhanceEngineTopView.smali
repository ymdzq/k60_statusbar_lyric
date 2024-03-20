.class public Lcom/android/settings/widget/ScreenEnhanceEngineTopView;
.super Landroid/widget/RelativeLayout;
.source "ScreenEnhanceEngineTopView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;,
        Lcom/android/settings/widget/ScreenEnhanceEngineTopView$TopViewOutlineProvider;,
        Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;
    }
.end annotation


# instance fields
.field private currentPositionColor:Ljava/lang/String;

.field private mShowPagePositionLayout:Landroid/widget/LinearLayout;

.field private mSummaryTextView:Landroid/widget/TextView;

.field private mViewFlipper:Landroid/widget/ViewFlipper;

.field private otherPositionColor:Ljava/lang/String;

.field private radius:F


# direct methods
.method static bridge synthetic -$$Nest$fgetcurrentPositionColor(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->currentPositionColor:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowPagePositionLayout(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Landroid/widget/ViewFlipper;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetotherPositionColor(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->otherPositionColor:Ljava/lang/String;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    const-string p1, "#D3D3D3"

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->currentPositionColor:Ljava/lang/String;

    const-string p1, "#00FFFFFF"

    .line 38
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->otherPositionColor:Ljava/lang/String;

    const/high16 p1, 0x42480000    # 50.0f

    .line 39
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    .line 43
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-string p1, "#D3D3D3"

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->currentPositionColor:Ljava/lang/String;

    const-string p1, "#00FFFFFF"

    .line 38
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->otherPositionColor:Ljava/lang/String;

    const/high16 p1, 0x42480000    # 50.0f

    .line 39
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    .line 48
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mInit()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-string p1, "#D3D3D3"

    .line 37
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->currentPositionColor:Ljava/lang/String;

    const-string p1, "#00FFFFFF"

    .line 38
    iput-object p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->otherPositionColor:Ljava/lang/String;

    const/high16 p1, 0x42480000    # 50.0f

    .line 39
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    .line 53
    invoke-direct {p0}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mInit()V

    return-void
.end method

.method private mInit()V
    .locals 4

    .line 57
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->screen_enhance_engine_top_view:I

    .line 58
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 59
    sget v1, Lcom/android/settings/R$id;->view_filpper:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ViewFlipper;

    iput-object v1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    .line 60
    new-instance v2, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener;-><init>(Lcom/android/settings/widget/ScreenEnhanceEngineTopView;Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyViewFilpperOnTouchListener-IA;)V

    invoke-virtual {v1, v2}, Landroid/widget/ViewFlipper;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 61
    sget v1, Lcom/android/settings/R$id;->show_page_position_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    .line 62
    sget v1, Lcom/android/settings/R$id;->screen_enhance_engine_top_summary:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mSummaryTextView:Landroid/widget/TextView;

    return-void
.end method


# virtual methods
.method public addImageView(I)V
    .locals 4

    .line 81
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    .line 84
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v1, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$TopViewOutlineProvider;

    iget v2, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    invoke-direct {v1, v2}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$TopViewOutlineProvider;-><init>(F)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 v1, 0x1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    .line 87
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v3, 0x11

    .line 90
    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 92
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAdjustViewBounds(Z)V

    .line 94
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0, v2}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public addVideoView(I)V
    .locals 2

    .line 109
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/4 v1, 0x5

    if-lt v0, v1, :cond_0

    return-void

    .line 112
    :cond_0
    new-instance v0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;

    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$MyVideoView;-><init>(Landroid/content/Context;I)V

    .line 113
    new-instance p1, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$TopViewOutlineProvider;

    iget v1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    invoke-direct {p1, v1}, Lcom/android/settings/widget/ScreenEnhanceEngineTopView$TopViewOutlineProvider;-><init>(F)V

    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    const/4 p1, 0x1

    .line 114
    invoke-virtual {v0, p1}, Landroid/view/TextureView;->setClipToOutline(Z)V

    .line 116
    new-instance p1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {p1, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v1, 0x11

    .line 119
    iput v1, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 120
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, v0, p1}, Landroid/widget/ViewFlipper;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 6

    .line 125
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onAttachedToWindow()V

    .line 126
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-le v0, v3, :cond_2

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 128
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 129
    invoke-virtual {p0, v3}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    .line 133
    iget-object v4, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v4}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v4

    if-lt v3, v4, :cond_0

    .line 134
    iget-object v4, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 136
    :cond_0
    iget-object v4, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    .line 137
    invoke-virtual {v4, v3}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/GradientDrawable;

    .line 138
    iget-object v5, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->otherPositionColor:Ljava/lang/String;

    invoke-static {v5}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 142
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    .line 143
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    .line 144
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->currentPositionColor:Ljava/lang/String;

    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v0, p0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    goto :goto_2

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mShowPagePositionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 148
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setClickable(Z)V

    .line 149
    invoke-virtual {p0, v2}, Landroid/widget/RelativeLayout;->setFocusable(Z)V

    :goto_2
    return-void
.end method

.method public replaceImageView(II)V
    .locals 1

    .line 99
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getChildCount()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {v0, p1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_1

    .line 103
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mViewFlipper:Landroid/widget/ViewFlipper;

    invoke-virtual {p0, p1}, Landroid/widget/ViewFlipper;->getChildAt(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/ImageView;

    .line 104
    invoke-virtual {p0, p2}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-void
.end method

.method public setRadius(F)V
    .locals 0

    .line 77
    iput p1, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->radius:F

    return-void
.end method

.method public setSummaryText(I)V
    .locals 2

    if-nez p1, :cond_0

    .line 67
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mSummaryTextView:Landroid/widget/TextView;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 70
    :cond_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mSummaryTextView:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 72
    iget-object p0, p0, Lcom/android/settings/widget/ScreenEnhanceEngineTopView;->mSummaryTextView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method
