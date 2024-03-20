.class public Lcom/android/settings/stylus/MiuiStylusPen;
.super Landroid/widget/FrameLayout;
.source "MiuiStylusPen.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/stylus/MiuiStylusPen$Group;
    }
.end annotation


# instance fields
.field private mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

.field private mEnable:Z

.field private mMainGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

.field private mMask:Landroid/view/View;

.field private mPen:Landroid/view/View;

.field private mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

.field private mStylusImageHeightRatio:F

.field private mStylusImageWidthRatio:F

.field private mStylusImageXRatio:F

.field private mStylusImageYRatio:F

.field private mTimer:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmTimer(Lcom/android/settings/stylus/MiuiStylusPen;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mTimer:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmTimer(Lcom/android/settings/stylus/MiuiStylusPen;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mTimer:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mchangeCurrentGroup(Lcom/android/settings/stylus/MiuiStylusPen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->changeCurrentGroup()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhide(Lcom/android/settings/stylus/MiuiStylusPen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->hide()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mshow(Lcom/android/settings/stylus/MiuiStylusPen;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->show()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, v0}, Lcom/android/settings/stylus/MiuiStylusPen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 39
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/stylus/MiuiStylusPen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 24
    iput p2, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mTimer:I

    const/4 p2, 0x1

    .line 27
    iput-boolean p2, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mEnable:Z

    .line 44
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Lcom/android/settings/R$layout;->stylus_edit_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 45
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->initView()V

    .line 46
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->init()V

    return-void
.end method

.method private changeCurrentGroup()V
    .locals 2

    .line 108
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$mhide(Lcom/android/settings/stylus/MiuiStylusPen$Group;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    iget-object v1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMainGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    if-ne v0, v1, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    goto :goto_0

    .line 112
    :cond_0
    iput-object v1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    .line 114
    :goto_0
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$mshow(Lcom/android/settings/stylus/MiuiStylusPen$Group;)V

    return-void
.end method

.method private hide()V
    .locals 3

    .line 89
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 90
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    .line 91
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 92
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 93
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/stylus/MiuiStylusPen$2;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/MiuiStylusPen$2;-><init>(Lcom/android/settings/stylus/MiuiStylusPen;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method private init()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmText(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMainGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/stylus/MiuiStylusPen;->hide()V

    return-void
.end method

.method private initElementPosition(II)V
    .locals 5

    .line 129
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMainGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0, p1, p2}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$mupdateNewPosition(Lcom/android/settings/stylus/MiuiStylusPen$Group;II)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0, p1, p2}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$mupdateNewPosition(Lcom/android/settings/stylus/MiuiStylusPen$Group;II)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mPen:Landroid/view/View;

    int-to-float p1, p1

    iget v1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageXRatio:F

    mul-float/2addr v1, p1

    invoke-virtual {v0, v1}, Landroid/view/View;->setX(F)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mPen:Landroid/view/View;

    int-to-float p2, p2

    iget v1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageYRatio:F

    mul-float/2addr v1, p2

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mPen:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 134
    iget v1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageWidthRatio:F

    mul-float/2addr v1, p1

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0000000000000L    # 0.5

    add-double/2addr v1, v3

    double-to-int p1, v1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 135
    iget p1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageHeightRatio:F

    mul-float/2addr p1, p2

    float-to-double p1, p1

    add-double/2addr p1, v3

    double-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 136
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mPen:Landroid/view/View;

    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private initView()V
    .locals 15

    .line 51
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_first_x_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v7

    .line 52
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_second_x_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v13

    .line 53
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_blue_point_y_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v14

    .line 54
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_text_y_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v12

    .line 55
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_image_x_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageXRatio:F

    .line 56
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_image_y_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageYRatio:F

    .line 57
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_image_width_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageWidthRatio:F

    .line 58
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_image_height_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    iput v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mStylusImageHeightRatio:F

    .line 59
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusPen$Group;

    sget v1, Lcom/android/settings/R$id;->main_text:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    sget v1, Lcom/android/settings/R$id;->main_blue_point:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v2, v0

    move v5, v7

    move v6, v12

    move v8, v14

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/stylus/MiuiStylusPen$Group;-><init>(Landroid/view/View;Landroid/view/View;FFFF)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMainGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    .line 61
    new-instance v0, Lcom/android/settings/stylus/MiuiStylusPen$Group;

    sget v1, Lcom/android/settings/R$id;->second_text:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v9

    sget v1, Lcom/android/settings/R$id;->second_blue_point:I

    invoke-virtual {p0, v1}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v10

    move-object v8, v0

    move v11, v13

    invoke-direct/range {v8 .. v14}, Lcom/android/settings/stylus/MiuiStylusPen$Group;-><init>(Landroid/view/View;Landroid/view/View;FFFF)V

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mSecondGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    .line 63
    sget v0, Lcom/android/settings/R$id;->pen_image:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mPen:Landroid/view/View;

    .line 64
    sget v0, Lcom/android/settings/R$id;->mask:I

    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMask:Landroid/view/View;

    return-void
.end method

.method private show()V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mCurrentGroup:Lcom/android/settings/stylus/MiuiStylusPen$Group;

    invoke-static {v0}, Lcom/android/settings/stylus/MiuiStylusPen$Group;->-$$Nest$fgetmBluePoint(Lcom/android/settings/stylus/MiuiStylusPen$Group;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 77
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0xc8

    .line 78
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 79
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setStartDelay(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lcom/android/settings/stylus/MiuiStylusPen$1;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/MiuiStylusPen$1;-><init>(Lcom/android/settings/stylus/MiuiStylusPen;)V

    .line 80
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    return-void
.end method


# virtual methods
.method protected onLayout(ZIIII)V
    .locals 0

    .line 141
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    .line 142
    invoke-direct {p0, p4, p5}, Lcom/android/settings/stylus/MiuiStylusPen;->initElementPosition(II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 147
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    int-to-float p2, p2

    .line 148
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->stylus_demo_width_and_height_ratio:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v0

    mul-float/2addr p2, v0

    float-to-int p2, p2

    const/high16 v0, 0x40000000    # 2.0f

    .line 149
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public setEnable(Z)V
    .locals 1

    .line 118
    iget-boolean v0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mEnable:Z

    if-ne p1, v0, :cond_0

    return-void

    .line 121
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mEnable:Z

    .line 122
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusPen;->mMask:Landroid/view/View;

    if-eqz p1, :cond_1

    const/16 p1, 0x8

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
