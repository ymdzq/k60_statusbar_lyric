.class public Lcom/miui/maml/component/MamlView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;
.implements Lcom/miui/maml/util/MamlViewManager;


# static fields
.field private static final BLUR_VAR_NAME:Ljava/lang/String; = "__blur_ratio"

.field public static final MODE_ASSETS_FOLDER:I = 0x2

.field public static final MODE_FOLDER:I = 0x3

.field public static final MODE_ZIP:I = 0x1

.field private static final TAG:Ljava/lang/String; = "MamlView"

.field private static final VERSION:Ljava/lang/String; = "1.0.0"

.field private static final VERSION_CODE:I = 0x1


# instance fields
.field private mAutoFinishRoot:Z

.field private mAutoRemoveCache:Z

.field private mCanvasParamsChanged:Z

.field private final mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

.field private mExternCommandListener:Ljava/lang/ref/WeakReference;

.field private volatile mFinished:Z

.field private mHasDelay:Z

.field private mLastBlurRatio:I

.field private mLp:Landroid/view/WindowManager$LayoutParams;

.field private mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

.field protected mNeedDisallowInterceptTouchEvent:Z

.field private mPivotX:I

.field private mPivotY:I

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mScale:F

.field private mView:Lcom/miui/maml/component/MamlView$InnerView;

.field private mWindowManager:Landroid/view/WindowManager;

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 3
    new-instance v1, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v1, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/miui/maml/R$styleable;->MamlView:[I

    invoke-virtual {v1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 5
    sget v1, Lcom/miui/maml/R$styleable;->MamlView_path:I

    invoke-virtual {p2, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 6
    sget v2, Lcom/miui/maml/R$styleable;->MamlView_innerPath:I

    invoke-virtual {p2, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 7
    sget v3, Lcom/miui/maml/R$styleable;->MamlView_resMode:I

    const/4 v4, 0x2

    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 8
    sget v4, Lcom/miui/maml/R$styleable;->MamlView_autoRemoveCache:I

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v4

    .line 9
    sget v5, Lcom/miui/maml/R$styleable;->MamlView_touchable:I

    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    .line 10
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object v0

    invoke-direct {p0, p1, v0, v4}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    .line 11
    invoke-virtual {p0, p2}, Lcom/miui/maml/component/MamlView;->setTouchable(Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    const-wide/16 v0, 0x0

    .line 19
    invoke-direct {p0, p1, p2, v0, v1}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 20
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p3, 0x1

    .line 21
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 22
    new-instance p3, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {p3, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object p3, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 23
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    const/4 p1, 0x0

    .line 24
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    const/4 v0, 0x0

    .line 12
    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;IZ)V
    .locals 6

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p4

    .line 13
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 14
    invoke-direct/range {v0 .. v5}, Lcom/miui/maml/component/MamlView;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 1

    .line 15
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 17
    new-instance v0, Lcom/miui/maml/component/MamlView$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlView$1;-><init>(Lcom/miui/maml/component/MamlView;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    move-result-object p2

    invoke-direct {p0, p1, p2, p5}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/component/MamlView;)Ljava/lang/ref/WeakReference;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/component/MamlView;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mY:F

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$400(Lcom/miui/maml/component/MamlView;)F
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$500(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 2
    return p0
    .line 4
.end method

.method public static synthetic access$600(Lcom/miui/maml/component/MamlView;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    .line 2
    return p0
    .line 4
.end method

.method private blurBackground()V
    .locals 3

    .line 1
    const-string v0, "__blur_ratio"

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 4
    if-eqz v1, :cond_3

    .line 6
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->isMamlBlurWindow()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_3

    .line 12
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 14
    if-eqz v1, :cond_3

    .line 16
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 20
    move-result-object v1

    .line 23
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->existsDouble(Ljava/lang/String;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_3

    .line 28
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 30
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 32
    move-result-object v1

    .line 35
    invoke-virtual {v1, v0}, Lcom/miui/maml/data/Variables;->getDouble(Ljava/lang/String;)D

    .line 36
    move-result-wide v0

    .line 39
    double-to-int v0, v0

    .line 40
    if-gez v0, :cond_0

    .line 41
    const/4 v0, 0x0

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    const/16 v1, 0x64

    .line 45
    if-le v0, v1, :cond_1

    .line 47
    move v0, v1

    .line 49
    :cond_1
    :goto_0
    iget v1, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    .line 50
    if-eq v0, v1, :cond_3

    .line 52
    iput v0, p0, Lcom/miui/maml/component/MamlView;->mLastBlurRatio:I

    .line 54
    if-nez v0, :cond_2

    .line 56
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 58
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 60
    and-int/lit8 v1, v1, -0x5

    .line 62
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 64
    goto :goto_1

    .line 66
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 67
    int-to-float v0, v0

    .line 69
    const/high16 v2, 0x3f800000    # 1.0f

    .line 70
    mul-float/2addr v0, v2

    .line 72
    const/high16 v2, 0x42c80000    # 100.0f

    .line 73
    div-float/2addr v0, v2

    .line 75
    invoke-static {v1, v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->WindowManager_LayoutParams_setLayoutParamsBlurRatio(Landroid/view/WindowManager$LayoutParams;F)V

    .line 76
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 79
    iget v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 81
    or-int/lit8 v1, v1, 0x4

    .line 83
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 85
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 87
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 89
    invoke-interface {v0, p0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    goto :goto_2

    .line 94
    :catch_0
    move-exception p0

    .line 95
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 96
    :cond_3
    :goto_2
    return-void
    .line 99
.end method

.method private finish()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 6
    if-eqz v0, :cond_1

    .line 8
    const/4 v0, 0x1

    .line 10
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mFinished:Z

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 14
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    if-eqz v1, :cond_1

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    .line 21
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->detachFromVsync()V

    .line 26
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v1}, Lcom/miui/maml/data/Variables;->reset()V

    .line 35
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->removeAccessHelperRef()V

    .line 38
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    .line 41
    if-eqz v1, :cond_0

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 45
    :cond_0
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 48
    :cond_1
    return-void
    .line 50
.end method

.method private getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;
    .locals 1

    .line 1
    invoke-static {p2}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    if-eqz p0, :cond_0

    .line 7
    return-object v0

    .line 9
    :cond_0
    const/4 p0, 0x1

    .line 10
    if-eq p4, p0, :cond_3

    .line 11
    const/4 p0, 0x2

    .line 13
    if-eq p4, p0, :cond_2

    .line 14
    const/4 p0, 0x3

    .line 16
    if-eq p4, p0, :cond_1

    .line 17
    return-object v0

    .line 19
    :cond_1
    new-instance p0, Lcom/miui/maml/util/FolderResourceLoader;

    .line 20
    invoke-direct {p0, p2}, Lcom/miui/maml/util/FolderResourceLoader;-><init>(Ljava/lang/String;)V

    .line 22
    return-object p0

    .line 25
    :cond_2
    new-instance p0, Lcom/miui/maml/util/AssetsResourceLoader;

    .line 26
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/util/AssetsResourceLoader;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 28
    return-object p0

    .line 31
    :cond_3
    new-instance p0, Lcom/miui/maml/util/ZipResourceLoader;

    .line 32
    invoke-direct {p0, p2, p3}, Lcom/miui/maml/util/ZipResourceLoader;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-object p0
    .line 37
.end method

.method private initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusable(Z)V

    .line 6
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setFocusableInTouchMode(Z)V

    .line 9
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    const-string/jumbo v0, "window"

    .line 15
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/view/WindowManager;

    .line 22
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mWindowManager:Landroid/view/WindowManager;

    .line 24
    new-instance v0, Lcom/miui/maml/component/MamlView$InnerView;

    .line 26
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/component/MamlView$InnerView;-><init>(Lcom/miui/maml/component/MamlView;Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 31
    new-instance p1, Landroid/view/ViewGroup$LayoutParams;

    .line 33
    const/4 v0, -0x1

    .line 35
    invoke-direct {p1, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 36
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 39
    invoke-virtual {p0, v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 41
    iput-object p2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 44
    invoke-virtual {p2, p0}, Lcom/miui/maml/ScreenElementRoot;->setViewManager(Lcom/miui/maml/util/MamlViewManager;)V

    .line 46
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    new-instance p2, Lcom/miui/maml/component/MamlView$2;

    .line 51
    invoke-direct {p2, p0}, Lcom/miui/maml/component/MamlView$2;-><init>(Lcom/miui/maml/component/MamlView;)V

    .line 53
    invoke-virtual {p1, p2}, Lcom/miui/maml/ScreenElementRoot;->setOnHoverChangeListener(Lcom/miui/maml/ScreenElementRoot$OnHoverChangeListener;)V

    .line 56
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->init()V

    .line 59
    return-void
    .line 62
.end method

.method private load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V
    .locals 2

    .line 1
    iput-boolean p3, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    .line 2
    if-eqz p2, :cond_0

    .line 4
    new-instance p3, Lcom/miui/maml/ResourceManager;

    .line 6
    invoke-direct {p3, p2}, Lcom/miui/maml/ResourceManager;-><init>(Lcom/miui/maml/ResourceLoader;)V

    .line 8
    new-instance p2, Lcom/miui/maml/ScreenElementRoot;

    .line 11
    new-instance v0, Lcom/miui/maml/ScreenContext;

    .line 13
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    .line 15
    move-result-object v1

    .line 18
    invoke-direct {v0, v1, p3}, Lcom/miui/maml/ScreenContext;-><init>(Landroid/content/Context;Lcom/miui/maml/ResourceManager;)V

    .line 19
    invoke-direct {p2, v0}, Lcom/miui/maml/ScreenElementRoot;-><init>(Lcom/miui/maml/ScreenContext;)V

    .line 22
    invoke-virtual {p2}, Lcom/miui/maml/ScreenElementRoot;->load()Z

    .line 25
    move-result p3

    .line 28
    if-eqz p3, :cond_0

    .line 29
    const/4 p3, 0x1

    .line 31
    invoke-virtual {p2, p3}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/component/MamlView;->initMamlview(Landroid/content/Context;Lcom/miui/maml/ScreenElementRoot;)V

    .line 35
    :cond_0
    return-void
    .line 38
.end method

.method private removeAccessHelperRef()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlAccessHelper(Lcom/miui/maml/util/MamlAccessHelper;)V

    .line 5
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/util/MamlAccessHelper;->removeRoot()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method


# virtual methods
.method public cleanUp()V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lcom/miui/maml/component/MamlView;->cleanUp(Z)V

    return-void
.end method

.method public cleanUp(Z)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 5
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfFinish()V

    if-nez p1, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->removeRelatedBitmapsRef()V

    .line 7
    :cond_0
    invoke-static {}, Lcom/miui/maml/util/Utils;->triggerGC()V

    :cond_1
    return-void
.end method

.method public clearBitmapCache()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    invoke-static {}, Lcom/miui/maml/ResourceManager;->clear()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public disableCutRoundCorner()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->isDisableCutRoundCorner()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroidx/customview/widget/ExploreByTouchHelper;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    return p0

    .line 13
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    .line 14
    move-result p0

    .line 17
    return p0
    .line 18
.end method

.method public doRender()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mView:Lcom/miui/maml/component/MamlView$InnerView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 4
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->blurBackground()V

    .line 7
    return-void
    .line 10
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    .line 2
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getMamlVersionCode()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public getMamlVersionName()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "1.0.0"

    .line 2
    return-object p0
    .line 4
.end method

.method public getSuggestedMinimumHeight()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 6
    move-result p0

    .line 9
    float-to-int p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, -0x1

    .line 12
    return p0
    .line 13
.end method

.method public getSuggestedMinimumWidth()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 6
    move-result p0

    .line 9
    float-to-int p0, p0

    .line 10
    return p0

    .line 11
    :cond_0
    const/4 p0, -0x1

    .line 12
    return p0
    .line 13
.end method

.method public getVariableNumber(Ljava/lang/String;)D
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 10
    move-result-wide p0

    .line 13
    return-wide p0

    .line 14
    :cond_0
    const-wide/16 p0, 0x0

    .line 15
    return-wide p0
    .line 17
.end method

.method public getVariableString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object p0

    .line 9
    invoke-static {p1, p0}, Lcom/miui/maml/util/Utils;->getVariableString(Ljava/lang/String;Lcom/miui/maml/data/Variables;)Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    return-object p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return-object p0
    .line 16
.end method

.method public getViewContext()Landroid/content/Context;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getViewLocationOnScreen()Landroid/graphics/Rect;
    .locals 6

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->getLocationOnScreen([I)V

    .line 5
    new-instance v1, Landroid/graphics/Rect;

    .line 8
    const/4 v2, 0x0

    .line 10
    aget v2, v0, v2

    .line 11
    const/4 v3, 0x1

    .line 13
    aget v4, v0, v3

    .line 14
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredWidth()I

    .line 16
    move-result v5

    .line 19
    add-int/2addr v5, v2

    .line 20
    aget v0, v0, v3

    .line 21
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 23
    move-result p0

    .line 26
    add-int/2addr p0, v0

    .line 27
    invoke-direct {v1, v2, v4, v5, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 28
    return-object v1
    .line 31
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object v1

    .line 9
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setConfiguration(Landroid/content/res/Configuration;)V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mCommandListener:Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;

    .line 19
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->setMamlViewOnExternCommandListener(Lcom/miui/maml/ScreenElementRoot$OnExternCommandListener;)V

    .line 21
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->setRenderControllerRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 26
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->attachToVsync()V

    .line 31
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 34
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->selfInit()V

    .line 36
    new-instance v0, Lcom/miui/maml/util/MamlAccessHelper;

    .line 39
    iget-object v1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 41
    invoke-direct {v0, v1, p0}, Lcom/miui/maml/util/MamlAccessHelper;-><init>(Lcom/miui/maml/ScreenElementRoot;Landroid/view/View;)V

    .line 43
    iput-object v0, p0, Lcom/miui/maml/component/MamlView;->mMamlAccessHelper:Lcom/miui/maml/util/MamlAccessHelper;

    .line 46
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    .line 48
    :cond_0
    return-void
    .line 51
.end method

.method public isLoaded()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 5
    return-void
    .line 8
.end method

.method public onCommand(Ljava/lang/String;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public onDestory()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onDestroy()V

    .line 2
    return-void
    .line 5
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    const-string v0, "MamlView"

    .line 2
    const-string v1, "onDestroy"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/component/MamlView;->finish()V

    .line 9
    return-void
    .line 12
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 5
    return-void
    .line 8
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onHover(Landroid/view/MotionEvent;)Z

    .line 6
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onHoverEvent(Landroid/view/MotionEvent;)Z

    .line 9
    move-result p0

    .line 12
    return p0
    .line 13
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const-string v1, "accessibilityText"

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->getRawAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    .line 12
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 15
    return-void
    .line 18
.end method

.method public onLayout(ZIIII)V
    .locals 2

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 9
    move-result-object p1

    .line 12
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 13
    sub-int/2addr p4, p2

    .line 15
    int-to-float p4, p4

    .line 16
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 19
    move-result v0

    .line 22
    div-float/2addr p4, v0

    .line 23
    float-to-double v0, p4

    .line 24
    const-string/jumbo p4, "view_width"

    .line 25
    invoke-virtual {p1, p4, v0, v1}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 28
    sub-int/2addr p5, p3

    .line 31
    int-to-float p4, p5

    .line 32
    iget-object p5, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    invoke-virtual {p5}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 35
    move-result p5

    .line 38
    div-float/2addr p4, p5

    .line 39
    float-to-double p4, p4

    .line 40
    const-string/jumbo v0, "view_height"

    .line 41
    invoke-virtual {p1, v0, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 44
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 47
    move-result-object p4

    .line 50
    :goto_0
    instance-of p5, p4, Landroid/view/View;

    .line 51
    if-eqz p5, :cond_0

    .line 53
    check-cast p4, Landroid/view/View;

    .line 55
    invoke-virtual {p4}, Landroid/view/View;->getLeft()I

    .line 57
    move-result p5

    .line 60
    invoke-virtual {p4}, Landroid/view/View;->getScrollX()I

    .line 61
    move-result v0

    .line 64
    sub-int/2addr p5, v0

    .line 65
    add-int/2addr p2, p5

    .line 66
    invoke-virtual {p4}, Landroid/view/View;->getTop()I

    .line 67
    move-result p5

    .line 70
    invoke-virtual {p4}, Landroid/view/View;->getScrollY()I

    .line 71
    move-result v0

    .line 74
    sub-int/2addr p5, v0

    .line 75
    add-int/2addr p3, p5

    .line 76
    invoke-virtual {p4}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 77
    move-result-object p4

    .line 80
    goto :goto_0

    .line 81
    :cond_0
    int-to-float p2, p2

    .line 82
    iget-object p4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 83
    invoke-virtual {p4}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 85
    move-result p4

    .line 88
    div-float/2addr p2, p4

    .line 89
    float-to-double p4, p2

    .line 90
    const-string/jumbo p2, "view_x"

    .line 91
    invoke-virtual {p1, p2, p4, p5}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 94
    int-to-float p2, p3

    .line 97
    iget-object p3, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 98
    invoke-virtual {p3}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 100
    move-result p3

    .line 103
    div-float/2addr p2, p3

    .line 104
    float-to-double p2, p2

    .line 105
    const-string/jumbo p4, "view_y"

    .line 106
    invoke-virtual {p1, p4, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;D)V

    .line 109
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 112
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 114
    :cond_1
    return-void
    .line 117
.end method

.method public onMeasure(II)V
    .locals 5

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 2
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 5
    move-result v0

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 9
    move-result v1

    .line 12
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 13
    move-result p1

    .line 16
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 17
    move-result p2

    .line 20
    iget-object v2, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 21
    const/4 v3, 0x0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-virtual {v2}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 26
    move-result v2

    .line 29
    float-to-int v2, v2

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    move v2, v3

    .line 32
    :goto_0
    iget-object v4, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 33
    if-eqz v4, :cond_1

    .line 35
    invoke-virtual {v4}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 37
    move-result v3

    .line 40
    float-to-int v3, v3

    .line 41
    :cond_1
    const/high16 v4, -0x80000000

    .line 42
    if-ne v0, v4, :cond_2

    .line 44
    if-lez v2, :cond_2

    .line 46
    invoke-static {p1, v2}, Ljava/lang/Math;->min(II)I

    .line 48
    move-result p1

    .line 51
    :cond_2
    if-ne v1, v4, :cond_3

    .line 52
    if-lez v3, :cond_3

    .line 54
    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    .line 56
    move-result p2

    .line 59
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/widget/FrameLayout;->setMeasuredDimension(II)V

    .line 60
    return-void
    .line 63
.end method

.method public onPause()V
    .locals 2

    .line 1
    const-string v0, "MamlView"

    .line 2
    const-string v1, "onPause"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->selfPause()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public onResume()V
    .locals 2

    .line 1
    const-string v0, "MamlView"

    .line 2
    const-string v1, "onResume"

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->selfResume()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->needDisallowInterceptTouchEvent()Z

    .line 7
    move-result v0

    .line 10
    iget-boolean v2, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 11
    if-eq v2, v0, :cond_0

    .line 13
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 15
    move-result-object v2

    .line 18
    invoke-interface {v2, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlView;->mNeedDisallowInterceptTouchEvent:Z

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 24
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->onTouch(Landroid/view/MotionEvent;)Z

    .line 26
    move-result v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v1

    .line 31
    :goto_0
    if-nez v0, :cond_2

    .line 32
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_3

    .line 38
    :cond_2
    const/4 v1, 0x1

    .line 40
    :cond_3
    return v1
    .line 41
.end method

.method public putVariableNumber(Ljava/lang/String;D)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/miui/maml/component/MamlView;->putVariableNumber(Ljava/lang/String;DI)V

    return-void
.end method

.method public putVariableNumber(Ljava/lang/String;DI)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;DI)V

    :cond_0
    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method

.method public putVariableObject(Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/component/MamlView;->putVariableString(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public putVariableString(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    if-eqz p0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-virtual {p0, p1, p2, p3}, Lcom/miui/maml/data/Variables;->put(Ljava/lang/String;Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public removeRelatedBitmapsRef()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ResourceManager;->clearByKeys()V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public requestUpdate()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public sendCommand(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setAutoDarkenWallpaper(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setAutoDarkenWallpaper(Z)V

    .line 7
    :cond_0
    return-void
    .line 10
.end method

.method public setAutoFinishRoot(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mAutoFinishRoot:Z

    .line 2
    return-void
    .line 4
.end method

.method public setCacheSize(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 6
    move-result-object p0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/maml/ResourceManager;->setCacheSize(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final setKeepResource(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setKeepResource(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setOnExternCommandListener(Lcom/miui/maml/component/MamlView$OnExternCommandListener;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 8
    move-object p1, v0

    .line 11
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mExternCommandListener:Ljava/lang/ref/WeakReference;

    .line 12
    return-void
    .line 14
.end method

.method public setPath(Ljava/lang/String;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-direct {p0, v1, p1, v2, v3}, Lcom/miui/maml/component/MamlView;->getResourceLoader(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Lcom/miui/maml/ResourceLoader;

    .line 12
    move-result-object p1

    .line 15
    iget-boolean v1, p0, Lcom/miui/maml/component/MamlView;->mAutoRemoveCache:Z

    .line 16
    invoke-direct {p0, v0, p1, v1}, Lcom/miui/maml/component/MamlView;->load(Landroid/content/Context;Lcom/miui/maml/ResourceLoader;Z)V

    .line 18
    return-void
    .line 21
.end method

.method public setSaveConfigOnlyInPause(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setSaveConfigViaProvider(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setSaveConfigViaProvider(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setScale(FII)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mScale:F

    .line 2
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mPivotX:I

    .line 4
    iput p3, p0, Lcom/miui/maml/component/MamlView;->mPivotY:I

    .line 6
    const/4 p1, 0x1

    .line 8
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 9
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 11
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method

.method public setTouchable(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/maml/ScreenElementRoot;->setTouchable(Z)V

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setTranslate(FF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/component/MamlView;->mX:F

    .line 2
    iput p2, p0, Lcom/miui/maml/component/MamlView;->mY:F

    .line 4
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/maml/component/MamlView;->mCanvasParamsChanged:Z

    .line 7
    iget-object p0, p0, Lcom/miui/maml/component/MamlView;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 13
    :cond_0
    return-void
    .line 16
.end method

.method public setVisibility(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onResume()V

    .line 7
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x4

    .line 11
    if-eq p1, v0, :cond_1

    .line 12
    const/16 v0, 0x8

    .line 14
    if-ne p1, v0, :cond_2

    .line 16
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/component/MamlView;->onPause()V

    .line 18
    :cond_2
    :goto_0
    return-void
    .line 21
.end method

.method public setWindowLayoutParams(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/miui/maml/component/MamlView;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 2
    return-void
    .line 4
.end method
