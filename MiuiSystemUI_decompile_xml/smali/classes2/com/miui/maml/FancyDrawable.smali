.class public Lcom/miui/maml/FancyDrawable;
.super Lcom/miui/maml/MamlDrawable;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/RendererController$IRenderable;


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "FancyDrawable"

.field private static final QUIET_IMAGE_NAME:Ljava/lang/String; = "quietImage.png"

.field private static final RENDER_TIMEOUT:I = 0x64

.field private static final START_IMAGE_NAME:Ljava/lang/String; = "startImage.png"

.field private static final USE_QUIET_IMAGE_TAG:Ljava/lang/String; = "useQuietImage"


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mPauseLock:Ljava/lang/Object;

.field private mPaused:Z

.field private mQuietDrawable:Landroid/graphics/drawable/Drawable;

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRendererCore:Lcom/miui/maml/RendererCore;

.field private mStartDrawable:Landroid/graphics/drawable/Drawable;

.field private mTimeOut:Z


# direct methods
.method public constructor <init>(Lcom/miui/maml/RendererCore;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/MamlDrawable;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 7
    move-result-object v1

    .line 10
    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 14
    new-instance v0, Ljava/lang/Object;

    .line 16
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 21
    new-instance v0, Lcom/miui/maml/FancyDrawable$1;

    .line 23
    invoke-direct {v0, p0}, Lcom/miui/maml/FancyDrawable$1;-><init>(Lcom/miui/maml/FancyDrawable;)V

    .line 25
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 28
    invoke-direct {p0, p1}, Lcom/miui/maml/FancyDrawable;->init(Lcom/miui/maml/RendererCore;)V

    .line 30
    return-void
    .line 33
.end method

.method public static synthetic access$002(Lcom/miui/maml/FancyDrawable;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 2
    return p1
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/FancyDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 2
    return-void
    .line 5
.end method

.method private doPause()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 5
    if-eqz v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "doPause: "

    .line 11
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 13
    const/4 v1, 0x1

    .line 16
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 17
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 19
    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->pauseRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 21
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
    .line 28
.end method

.method private doResume()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mPauseLock:Ljava/lang/Object;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 5
    if-nez v1, :cond_0

    .line 7
    monitor-exit v0

    .line 9
    return-void

    .line 10
    :cond_0
    const-string v1, "doResume: "

    .line 11
    invoke-direct {p0, v1}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 13
    const/4 v1, 0x0

    .line 16
    iput-boolean v1, p0, Lcom/miui/maml/FancyDrawable;->mPaused:Z

    .line 17
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 19
    invoke-virtual {v1, p0}, Lcom/miui/maml/RendererCore;->resumeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 21
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    throw p0
    .line 28
.end method

.method private init(Lcom/miui/maml/RendererCore;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/miui/maml/FancyDrawable$FancyDrawableState;

    .line 5
    invoke-direct {v0, p1}, Lcom/miui/maml/FancyDrawable$FancyDrawableState;-><init>(Lcom/miui/maml/RendererCore;)V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 10
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 12
    invoke-virtual {p1, p0}, Lcom/miui/maml/RendererCore;->addRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 14
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 19
    move-result-object p1

    .line 22
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    .line 23
    move-result p1

    .line 26
    float-to-int p1, p1

    .line 27
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 28
    invoke-virtual {v0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    .line 34
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/MamlDrawable;->setIntrinsicSize(II)V

    .line 39
    iget-object p1, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 42
    invoke-virtual {p1}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 44
    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 48
    move-result-object p1

    .line 51
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 52
    iget-object v1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 54
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 56
    move-result-object v1

    .line 59
    const-string v2, "quietImage.png"

    .line 60
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 62
    move-result-object v0

    .line 65
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 66
    const/4 v1, 0x0

    .line 68
    if-eqz v0, :cond_0

    .line 69
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 75
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 77
    move-result v2

    .line 80
    iget-object v3, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 83
    move-result v3

    .line 86
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 87
    :cond_0
    iget-object v0, p1, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 90
    iget-object p1, p1, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 94
    move-result-object p1

    .line 97
    const-string/jumbo v2, "startImage.png"

    .line 98
    invoke-virtual {v0, p1, v2}, Lcom/miui/maml/ResourceManager;->getDrawable(Landroid/content/res/Resources;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    .line 101
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 105
    if-eqz p1, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 109
    move-result-object p1

    .line 112
    iput-object p1, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 113
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 115
    move-result v0

    .line 118
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 119
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 121
    move-result p0

    .line 124
    invoke-virtual {p1, v1, v1, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 125
    :cond_1
    return-void
    .line 128
.end method

.method private logd(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 7
    const-string p1, "  ["

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    const-string p0, "]"

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    const-string p1, "FancyDrawable"

    .line 31
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public cleanUp()V
    .locals 1

    .line 1
    const-string v0, "cleanUp: "

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/FancyDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 7
    invoke-virtual {v0, p0}, Lcom/miui/maml/RendererCore;->removeRenderable(Lcom/miui/maml/RendererController$IRenderable;)V

    .line 9
    return-void
    .line 12
.end method

.method public doRender()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 9
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 11
    const-wide/16 v2, 0x64

    .line 13
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 15
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 18
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 20
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    return-void
    .line 25
.end method

.method public drawIcon(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 9
    if-eqz v0, :cond_0

    .line 11
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    .line 13
    const/4 v0, 0x0

    .line 16
    iput-boolean v0, p0, Lcom/miui/maml/FancyDrawable;->mTimeOut:Z

    .line 17
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 19
    move-result v0

    .line 22
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 23
    move-result-object v1

    .line 26
    iget v1, v1, Landroid/graphics/Rect;->left:I

    .line 27
    int-to-float v1, v1

    .line 29
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 30
    move-result-object v2

    .line 33
    iget v2, v2, Landroid/graphics/Rect;->top:I

    .line 34
    int-to-float v2, v2

    .line 36
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 37
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mWidth:I

    .line 40
    int-to-float v1, v1

    .line 42
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 43
    int-to-float v2, v2

    .line 45
    div-float/2addr v1, v2

    .line 46
    iget v2, p0, Lcom/miui/maml/MamlDrawable;->mHeight:I

    .line 47
    int-to-float v2, v2

    .line 49
    iget v3, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 50
    int-to-float v3, v3

    .line 52
    div-float/2addr v2, v3

    .line 53
    const/4 v3, 0x0

    .line 54
    invoke-virtual {p1, v1, v2, v3, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 55
    const-string/jumbo v1, "useQuietImage"

    .line 58
    iget-object v2, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 61
    invoke-virtual {v2}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 63
    move-result-object v2

    .line 66
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 67
    move-result-object v2

    .line 70
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->getVariableNumber(Ljava/lang/String;Lcom/miui/maml/data/Variables;)D

    .line 71
    move-result-wide v1

    .line 74
    const-wide/16 v3, 0x0

    .line 75
    cmpl-double v1, v1, v3

    .line 77
    if-lez v1, :cond_1

    .line 79
    iget-object v1, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 81
    if-eqz v1, :cond_1

    .line 83
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 85
    goto :goto_0

    .line 88
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 89
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererCore;->render(Landroid/graphics/Canvas;)V

    .line 91
    :goto_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 94
    goto :goto_1

    .line 97
    :catch_0
    move-exception p0

    .line 98
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 99
    :goto_1
    return-void
    .line 102
.end method

.method public finalize()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->cleanUp()V

    .line 2
    invoke-super {p0}, Lcom/miui/maml/MamlDrawable;->finalize()V

    .line 5
    return-void
    .line 8
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getQuietDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/RendererCore;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getStartDrawable()Landroid/graphics/drawable/Drawable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    return-object p0
    .line 4
.end method

.method public onPause()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "pause"

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doPause()V

    .line 11
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mHandler:Landroid/os/Handler;

    .line 14
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 16
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 18
    return-void
    .line 21
.end method

.method public onResume()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/FancyDrawable;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "resume"

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->onCommand(Ljava/lang/String;)V

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/FancyDrawable;->doResume()V

    .line 11
    return-void
    .line 14
.end method

.method public setAlpha(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    invoke-virtual {p0, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 13
    :cond_1
    return-void
    .line 16
.end method

.method public setBadgeInfo(Landroid/graphics/drawable/Drawable;Landroid/graphics/Rect;)V
    .locals 3

    .line 1
    if-eqz p2, :cond_1

    .line 2
    iget v0, p2, Landroid/graphics/Rect;->left:I

    .line 4
    if-ltz v0, :cond_0

    .line 6
    iget v0, p2, Landroid/graphics/Rect;->top:I

    .line 8
    if-ltz v0, :cond_0

    .line 10
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 12
    move-result v0

    .line 15
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 16
    if-gt v0, v1, :cond_0

    .line 18
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 20
    move-result v0

    .line 23
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 24
    if-gt v0, v1, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Badge location "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string p2, " not in badged drawable bounds "

    .line 41
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    new-instance p2, Landroid/graphics/Rect;

    .line 46
    iget v1, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicWidth:I

    .line 48
    iget p0, p0, Lcom/miui/maml/MamlDrawable;->mIntrinsicHeight:I

    .line 50
    const/4 v2, 0x0

    .line 52
    invoke-direct {p2, v2, v2, v1, p0}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 53
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p1

    .line 66
    :cond_1
    :goto_0
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 67
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable;->mBadgeLocation:Landroid/graphics/Rect;

    .line 69
    iget-object p0, p0, Lcom/miui/maml/MamlDrawable;->mState:Lcom/miui/maml/MamlDrawable$MamlDrawableState;

    .line 71
    iput-object p1, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 73
    iput-object p2, p0, Lcom/miui/maml/MamlDrawable$MamlDrawableState;->mStateBadgeLocation:Landroid/graphics/Rect;

    .line 75
    return-void
    .line 77
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/MamlDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    const-string v0, "FancyDrawable"

    .line 5
    const-string/jumbo v1, "setColorFilter"

    .line 7
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mQuietDrawable:Landroid/graphics/drawable/Drawable;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 17
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/FancyDrawable;->mStartDrawable:Landroid/graphics/drawable/Drawable;

    .line 20
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/MamlDrawable;->mBadgeDrawable:Landroid/graphics/drawable/Drawable;

    .line 27
    if-eqz v0, :cond_2

    .line 29
    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 31
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/FancyDrawable;->mRendererCore:Lcom/miui/maml/RendererCore;

    .line 34
    if-eqz p0, :cond_3

    .line 36
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererCore;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 38
    :cond_3
    return-void
    .line 41
.end method
