.class public abstract Lcom/android/systemui/tv/TvBottomSheetActivity;
.super Landroid/app/Activity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mBackgroundWithBlur:Landroid/graphics/drawable/Drawable;

.field public mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

.field public final mBlurConsumer:Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/tv/TvBottomSheetActivity;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBlurConsumer:Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public final finish()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 2
    const/4 v0, 0x0

    .line 5
    const v1, 0x7f010232    # @anim/tv_bottom_sheet_exit 'res/anim/tv_bottom_sheet_exit.xml'

    .line 6
    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 9
    return-void
    .line 12
.end method

.method public final onAttachedToWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 5
    move-result-object v0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBlurConsumer:Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;

    .line 9
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->addCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 11
    return-void
    .line 14
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const p1, 0x7f0d03c8    # @layout/tv_bottom_sheet 'res/layout/tv_bottom_sheet.xml'

    .line 5
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 8
    const p1, 0x7f010231    # @anim/tv_bottom_sheet_enter 'res/anim/tv_bottom_sheet_enter.xml'

    .line 11
    const/4 v0, 0x0

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    .line 15
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p1

    .line 21
    const v0, 0x7f080b83    # @drawable/bottom_sheet_background_with_blur 'res/drawable/bottom_sheet_background_with_blur.xml'

    .line 22
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBackgroundWithBlur:Landroid/graphics/drawable/Drawable;

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 31
    move-result-object p1

    .line 34
    const v0, 0x7f080b82    # @drawable/bottom_sheet_background 'res/drawable/bottom_sheet_background.xml'

    .line 35
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 38
    move-result-object p1

    .line 41
    iput-object p1, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBackgroundWithoutBlur:Landroid/graphics/drawable/Drawable;

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 48
    move-result-object p1

    .line 51
    iget v0, p1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 52
    iget p1, p1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 54
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v1

    .line 59
    const v2, 0x7f07010b    # @dimen/bottom_sheet_margin '24.0dp'

    .line 60
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 63
    move-result v1

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 67
    move-result-object v2

    .line 70
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 71
    move-result-object v2

    .line 74
    mul-int/lit8 v3, v1, 0x2

    .line 75
    sub-int/2addr v0, v3

    .line 77
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 78
    const/4 v0, -0x2

    .line 80
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 81
    const/16 v3, 0x51

    .line 83
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 85
    const/4 v3, 0x0

    .line 87
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 88
    int-to-float v1, v1

    .line 90
    int-to-float p1, p1

    .line 91
    div-float/2addr v1, p1

    .line 92
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 93
    iput v0, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 95
    const/16 p1, 0x7d8

    .line 97
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 99
    iget p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 101
    or-int/lit16 p1, p1, 0x80

    .line 103
    const/high16 v0, 0x1000000

    .line 105
    or-int/2addr p1, v0

    .line 107
    iput p1, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 108
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 110
    move-result-object p1

    .line 113
    invoke-virtual {p1, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 114
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 117
    move-result-object p1

    .line 120
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 121
    move-result-object v0

    .line 124
    invoke-virtual {v0}, Landroid/view/Window;->getElevation()F

    .line 125
    move-result v0

    .line 128
    const/high16 v1, 0x40a00000    # 5.0f

    .line 129
    add-float/2addr v0, v1

    .line 131
    invoke-virtual {p1, v0}, Landroid/view/Window;->setElevation(F)V

    .line 132
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 135
    move-result-object p1

    .line 138
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    .line 139
    move-result-object v0

    .line 142
    const v1, 0x7f070101    # @dimen/bottom_sheet_background_blur_radius '37.0dp'

    .line 143
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 146
    move-result v0

    .line 149
    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundBlurRadius(I)V

    .line 150
    const p1, 0x7f0a014b    # @id/bottom_sheet

    .line 153
    invoke-virtual {p0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    .line 156
    move-result-object p0

    .line 159
    new-instance p1, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;

    .line 160
    invoke-direct {p1, p0}, Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda0;-><init>(Landroid/view/View;)V

    .line 162
    invoke-virtual {p0, p1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 165
    return-void
    .line 168
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/systemui/tv/TvBottomSheetActivity;->mBlurConsumer:Lcom/android/systemui/tv/TvBottomSheetActivity$$ExternalSyntheticLambda1;

    .line 6
    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeCrossWindowBlurEnabledListener(Ljava/util/function/Consumer;)V

    .line 8
    invoke-super {p0}, Landroid/app/Activity;->onDetachedFromWindow()V

    .line 11
    return-void
    .line 14
.end method
