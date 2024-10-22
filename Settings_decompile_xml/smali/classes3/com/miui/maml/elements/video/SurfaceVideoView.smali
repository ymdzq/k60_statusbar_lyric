.class public Lcom/miui/maml/elements/video/SurfaceVideoView;
.super Lcom/miui/maml/elements/video/BaseVideoView;
.source "SurfaceVideoView.java"


# static fields
.field private static final APPLICATION_MEDIA_SUBLAYER:I = -0x2

.field private static final APPLICATION_PANEL_SUBLAYER:I = 0x1

.field private static final TAG:Ljava/lang/String; = "SurfaceVideoView"


# instance fields
.field private mFormat:I

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mMamlSurfaceRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/miui/maml/component/MamlSurface;",
            ">;"
        }
    .end annotation
.end field

.field private mSubLayer:I

.field private mSurfaceControl:Landroid/view/SurfaceControl;

.field private mUpdateRunnable:Ljava/lang/Runnable;

.field private mVisibility:I

.field private mWidth:I

.field private mX:F

.field private mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/maml/component/MamlSurface;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;-><init>(Landroid/content/Context;)V

    const/4 p1, -0x2

    .line 33
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 34
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    const/4 p1, 0x0

    .line 35
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    const/4 p1, 0x0

    .line 37
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 38
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 42
    new-instance p1, Lcom/miui/maml/elements/video/SurfaceVideoView$1;

    invoke-direct {p1, p0}, Lcom/miui/maml/elements/video/SurfaceVideoView$1;-><init>(Lcom/miui/maml/elements/video/SurfaceVideoView;)V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 51
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_getInstance()Landroid/view/Surface;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    .line 52
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    .line 53
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/maml/elements/video/SurfaceVideoView;)V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method

.method private initSize()V
    .locals 2

    .line 158
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "window"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    .line 159
    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 160
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 161
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 163
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getWidth()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    if-gtz v0, :cond_0

    .line 165
    iget v0, v1, Landroid/graphics/Point;->x:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 167
    :cond_0
    invoke-virtual {p0}, Landroid/view/SurfaceView;->getHeight()I

    move-result v0

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    if-gtz v0, :cond_1

    .line 169
    iget v0, v1, Landroid/graphics/Point;->y:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 171
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    return-void
.end method

.method private postUpdateRunnable()V
    .locals 2

    .line 185
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 186
    iget-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 187
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private updateSize()V
    .locals 6

    .line 175
    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mScaleMode:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    if-lez v0, :cond_1

    iget v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    if-lez v1, :cond_1

    .line 176
    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    mul-int v3, v1, v2

    iget v4, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    mul-int v5, v4, v0

    if-ge v3, v5, :cond_0

    mul-int/2addr v2, v1

    .line 177
    div-int/2addr v2, v0

    iput v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    goto :goto_0

    :cond_0
    mul-int/2addr v2, v1

    mul-int v3, v4, v0

    if-le v2, v3, :cond_1

    mul-int/2addr v4, v0

    .line 179
    div-int/2addr v4, v1

    iput v4, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    :cond_1
    :goto_0
    return-void
.end method

.method private updateSurfaceInternal()V
    .locals 3

    .line 192
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1

    .line 193
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_openTransaction()V

    .line 195
    :try_start_0
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-nez v0, :cond_0

    .line 196
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_show(Landroid/view/SurfaceControl;)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_hide(Landroid/view/SurfaceControl;)V

    .line 200
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    invoke-static {v0, v1}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setLayer(Landroid/view/SurfaceControl;I)V

    .line 201
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setPosition(Landroid/view/SurfaceControl;FF)V

    .line 202
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    iget v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    invoke-static {v0, v1, v2}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_setBufferSize(Landroid/view/SurfaceControl;II)V

    .line 203
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    iget-object p0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v0, p0}, Lcom/miui/maml/util/HideSdkDependencyUtils;->Surface_copyFrom(Landroid/view/Surface;Landroid/view/SurfaceControl;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    goto :goto_1

    :catchall_0
    move-exception p0

    invoke-static {}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_closeTransaction()V

    .line 206
    throw p0

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected addSurfaceHolderCallback()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getSurfaceHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 149
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 152
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    :cond_0
    return-void
.end method

.method protected onSurfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 8

    .line 108
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->initSize()V

    if-eqz p1, :cond_2

    .line 110
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Surface;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-nez v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mMamlSurfaceRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/maml/component/MamlSurface;

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->isIsSuperWallpaper()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string/jumbo v1, "superwallpaper.SurfaceVideoView"

    goto :goto_0

    :cond_0
    const-string v1, "SurfaceVideoView"

    :goto_0
    move-object v4, v1

    .line 114
    invoke-interface {p1}, Landroid/view/SurfaceHolder;->getSurface()Landroid/view/Surface;

    move-result-object v2

    if-eqz v0, :cond_1

    .line 115
    invoke-virtual {v0}, Lcom/miui/maml/component/MamlSurface;->getParentSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object p1

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    :goto_1
    move-object v3, p1

    iget v5, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    iget v6, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    iget v7, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    .line 114
    invoke-static/range {v2 .. v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->SurfaceControl_getInstance_with_params(Landroid/view/Surface;Landroid/view/SurfaceControl;Ljava/lang/String;III)Landroid/view/SurfaceControl;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 116
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    :cond_2
    return-void
.end method

.method protected onSurfaceDestroyed()V
    .locals 3

    const-string v0, "SurfaceVideoView"

    const-string v1, "onSurfaceDestroyed"

    .line 122
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 123
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->releaseMedia(Z)V

    .line 124
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 125
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 126
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mSurface:Landroid/view/Surface;

    if-eqz v0, :cond_1

    .line 130
    invoke-virtual {v0}, Landroid/view/Surface;->release()V

    .line 132
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 133
    iget-object v2, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 134
    iput-object v1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHandler:Landroid/os/Handler;

    :cond_2
    return-void
.end method

.method protected setFormat(I)V
    .locals 0

    .line 140
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mFormat:I

    return-void
.end method

.method public setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 75
    iget v0, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    iput v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mWidth:I

    .line 76
    iget p1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mHeight:I

    .line 77
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 78
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setVisibility(I)V
    .locals 1

    .line 94
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    if-eq v0, p1, :cond_0

    .line 95
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mVisibility:I

    .line 96
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 58
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 59
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mX:F

    .line 60
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 66
    iget v0, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 67
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mY:F

    .line 68
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    :cond_0
    return-void
.end method

.method public setZOrderOnTop(Z)V
    .locals 0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    .line 85
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    goto :goto_0

    :cond_0
    const/4 p1, -0x2

    .line 87
    iput p1, p0, Lcom/miui/maml/elements/video/SurfaceVideoView;->mSubLayer:I

    .line 89
    :goto_0
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->postUpdateRunnable()V

    return-void
.end method

.method protected updateVideoSize()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSize()V

    .line 103
    invoke-direct {p0}, Lcom/miui/maml/elements/video/SurfaceVideoView;->updateSurfaceInternal()V

    return-void
.end method
