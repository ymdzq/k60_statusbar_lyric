.class public Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiTaskFocusStateConsumer;


# instance fields
.field private final mAnimator:Lmiuix/animation/IStateStyle;

.field private final mBarCornerRadius:F

.field private final mBarHeight:F

.field private mBarWidth:F

.field private final mContext:Landroid/content/Context;

.field private mFocused:Z

.field private final mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;

.field private final mPaint:Landroid/graphics/Paint;

.field private mResizing:Z

.field final mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

.field private mWindowingMode:I


# direct methods
.method public static synthetic $r8$lambda$-HuU_EuTMSDux-v-zKPx7GCrSm4(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->updateColor()V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mPaint:Landroid/graphics/Paint;

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFocused:Z

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mResizing:Z

    .line 6
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;

    invoke-direct {v1, v0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;-><init>(I)V

    iput-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;

    .line 7
    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Lmiuix/animation/Folme;->useValue([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 8
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;)V

    invoke-direct {v0, p0, v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;-><init>(Landroid/view/View;Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper$SamplingCallback;)V

    iput-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 9
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mContext:Landroid/content/Context;

    .line 10
    sget-boolean v0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fb    # @dimen/bottom_bar_width_pad '86.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fc    # @dimen/bottom_bar_width_phone '64.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    :goto_0
    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0700fa    # @dimen/bottom_bar_height '4.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarHeight:F

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0700f9    # @dimen/bottom_bar_corner_radius '4.0dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p1

    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarCornerRadius:F

    .line 15
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 16
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->updateColor()V

    return-void
.end method

.method private createAnimConfig()Lmiuix/animation/base/AnimConfig;
    .locals 2

    .line 1
    new-instance v0, Lmiuix/animation/base/AnimConfig;

    .line 2
    invoke-direct {v0}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 4
    new-instance v1, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$2;

    .line 7
    invoke-direct {v1, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$2;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;)V

    .line 9
    filled-new-array {v1}, [Lmiuix/animation/listener/TransitionListener;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {v0, p0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method private getFocusAlpha()I
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFocused:Z

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/16 p0, 0xcc

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    const/16 p0, 0x4d

    .line 9
    :goto_0
    return p0
    .line 11
.end method

.method private updateColor()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mSamplingHelper:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;

    .line 4
    invoke-virtual {v1}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiSamplingHelper;->isDark()Z

    .line 6
    move-result v1

    .line 9
    if-eqz v1, :cond_0

    .line 10
    const-string v1, "#FFFFFFFF"

    .line 12
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const-string v1, "#FF191919"

    .line 19
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 21
    move-result v1

    .line 24
    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 25
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 28
    return-void
    .line 31
.end method


# virtual methods
.method public getBottomBarHeight()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarHeight:F

    .line 2
    return p0
    .line 4
.end method

.method public getBottomBarSurfaceWidth()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 2
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mWindowingMode:I

    .line 4
    const/4 v1, 0x6

    .line 6
    if-ne p0, v1, :cond_0

    .line 7
    const/high16 p0, 0x3f800000    # 1.0f

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/high16 p0, 0x40800000    # 4.0f

    .line 12
    :goto_0
    mul-float/2addr v0, p0

    .line 14
    return v0
    .line 15
.end method

.method public getBottomBarWidth()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 2
    return p0
    .line 4
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;

    .line 2
    iget v1, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;->barAlpha:I

    .line 4
    int-to-float v1, v1

    .line 6
    iget v0, v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;->alphaScale:F

    .line 7
    mul-float/2addr v1, v0

    .line 9
    float-to-int v0, v1

    .line 10
    const/16 v1, 0xff

    .line 11
    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    .line 18
    move-result v0

    .line 21
    iget-object v1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    .line 27
    move-result v0

    .line 30
    int-to-float v0, v0

    .line 31
    const/high16 v1, 0x40000000    # 2.0f

    .line 32
    div-float/2addr v0, v1

    .line 34
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    .line 35
    move-result v2

    .line 38
    int-to-float v2, v2

    .line 39
    div-float/2addr v2, v1

    .line 40
    iget v3, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 41
    iget-object v4, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFolmeControl:Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;

    .line 43
    iget v4, v4, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$FolmeControl;->scale:F

    .line 45
    mul-float/2addr v3, v4

    .line 47
    div-float/2addr v3, v1

    .line 48
    iget v5, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarHeight:F

    .line 49
    mul-float/2addr v5, v4

    .line 51
    div-float/2addr v5, v1

    .line 52
    sub-float v7, v0, v3

    .line 53
    sub-float v8, v2, v5

    .line 55
    add-float v9, v0, v3

    .line 57
    add-float v10, v2, v5

    .line 59
    iget v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarCornerRadius:F

    .line 61
    mul-float v11, v0, v4

    .line 63
    mul-float v12, v0, v4

    .line 65
    iget-object v13, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mPaint:Landroid/graphics/Paint;

    .line 67
    move-object v6, p1

    .line 69
    invoke-virtual/range {v6 .. v13}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 70
    return-void
    .line 73
.end method

.method public onMiuiFreeformResizeStart()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mResizing:Z

    .line 3
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 8
    move-result-object v1

    .line 11
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->createAnimConfig()Lmiuix/animation/base/AnimConfig;

    .line 12
    move-result-object p0

    .line 15
    const-string v2, "alphaScale"

    .line 16
    filled-new-array {v2, v1, p0}, [Ljava/lang/Object;

    .line 18
    move-result-object p0

    .line 21
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 22
    return-void
    .line 25
.end method

.method public onMiuiFreeformScaleChange(F)V
    .locals 3

    .line 1
    const/high16 v0, 0x3e800000    # 0.25f

    .line 2
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    .line 4
    move-result p1

    .line 7
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mResizing:Z

    .line 8
    const-string v1, "scale"

    .line 10
    const/high16 v2, 0x3f800000    # 1.0f

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mResizing:Z

    .line 17
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 19
    div-float p1, v2, p1

    .line 21
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object p1

    .line 26
    filled-new-array {v1, p1}, [Ljava/lang/Object;

    .line 27
    move-result-object p1

    .line 30
    invoke-interface {v0, p1}, Lmiuix/animation/IStateStyle;->setTo([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 31
    move-result-object p1

    .line 34
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object v0

    .line 38
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->createAnimConfig()Lmiuix/animation/base/AnimConfig;

    .line 39
    move-result-object p0

    .line 42
    const-string v1, "alphaScale"

    .line 43
    filled-new-array {v1, v0, p0}, [Ljava/lang/Object;

    .line 45
    move-result-object p0

    .line 48
    invoke-interface {p1, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 53
    div-float/2addr v2, p1

    .line 55
    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 56
    move-result-object p1

    .line 59
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->createAnimConfig()Lmiuix/animation/base/AnimConfig;

    .line 60
    move-result-object p0

    .line 63
    filled-new-array {v1, p1, p0}, [Ljava/lang/Object;

    .line 64
    move-result-object p0

    .line 67
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 68
    :goto_0
    return-void
    .line 71
.end method

.method public setTaskFocusState(Z)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFocused:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mFocused:Z

    .line 7
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 9
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 11
    const/4 v0, 0x2

    .line 14
    new-array v0, v0, [F

    .line 15
    fill-array-data v0, :array_0

    .line 17
    const/4 v1, -0x2

    .line 20
    invoke-virtual {p1, v1, v0}, Lmiuix/animation/base/AnimConfig;->setEase(I[F)Lmiuix/animation/base/AnimConfig;

    .line 21
    move-result-object p1

    .line 24
    new-instance v0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$1;

    .line 25
    invoke-direct {v0, p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView$1;-><init>(Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;)V

    .line 27
    filled-new-array {v0}, [Lmiuix/animation/listener/TransitionListener;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {p1, v0}, Lmiuix/animation/base/AnimConfig;->addListeners([Lmiuix/animation/listener/TransitionListener;)Lmiuix/animation/base/AnimConfig;

    .line 34
    move-result-object p1

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mAnimator:Lmiuix/animation/IStateStyle;

    .line 38
    invoke-direct {p0}, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->getFocusAlpha()I

    .line 40
    move-result p0

    .line 43
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    move-result-object p0

    .line 47
    const-string v1, "barAlpha"

    .line 48
    filled-new-array {v1, p0, p1}, [Ljava/lang/Object;

    .line 50
    move-result-object p0

    .line 53
    invoke-interface {v0, p0}, Lmiuix/animation/IStateStyle;->to([Ljava/lang/Object;)Lmiuix/animation/IStateStyle;

    .line 54
    return-void

    .line 57
    :array_0
    .array-data 4
        0x3f733333    # 0.95f
        0x3e4ccccd    # 0.2f
    .end array-data
    .line 58
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "MiuiBottomBarView#"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 9
    move-result p0

    .line 12
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public updateWidth(IZ)V
    .locals 1

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mWindowingMode:I

    .line 2
    const/4 v0, 0x6

    .line 4
    if-eq p1, v0, :cond_2

    .line 5
    if-eqz p2, :cond_0

    .line 7
    goto :goto_1

    .line 9
    :cond_0
    sget-boolean p1, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinUtils;->IS_TABLET:Z

    .line 10
    if-eqz p1, :cond_1

    .line 12
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object p1

    .line 19
    const p2, 0x7f0700fb    # @dimen/bottom_bar_width_pad '86.0dp'

    .line 20
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 23
    move-result p1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p1

    .line 33
    const p2, 0x7f0700fc    # @dimen/bottom_bar_width_phone '64.0dp'

    .line 34
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 37
    move-result p1

    .line 40
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 41
    goto :goto_2

    .line 43
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mContext:Landroid/content/Context;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 53
    const p2, 0x7f070d5b    # @dimen/navigation_sosc_handle_width '152.0dp'

    .line 54
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 57
    move-result p1

    .line 60
    iput p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiBottomBarView;->mBarWidth:F

    .line 61
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 63
    return-void
.end method
