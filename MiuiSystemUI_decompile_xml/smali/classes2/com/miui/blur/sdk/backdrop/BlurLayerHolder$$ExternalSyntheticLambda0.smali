.class public final synthetic Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda0;->f$0:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;

    .line 2
    check-cast p1, Landroid/graphics/GraphicBuffer;

    .line 4
    iget-boolean v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mDestroyed:Z

    .line 6
    if-nez v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 10
    if-eqz v0, :cond_1

    .line 12
    iget v0, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    .line 14
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    .line 16
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 22
    iget v0, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferHeight:I

    .line 24
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    .line 26
    move-result v1

    .line 29
    if-eq v0, v1, :cond_1

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 34
    new-instance v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;

    .line 37
    const/4 v2, 0x1

    .line 39
    invoke-direct {v1, v2, v0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 40
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mHandler:Landroid/os/Handler;

    .line 43
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 45
    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 51
    if-nez v0, :cond_3

    .line 53
    new-instance v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 55
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getWidth()I

    .line 57
    move-result v1

    .line 60
    invoke-virtual {p1}, Landroid/graphics/GraphicBuffer;->getHeight()I

    .line 61
    move-result v2

    .line 64
    iget-object v3, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mRenderScript:Landroid/renderscript/RenderScript;

    .line 65
    iget-object v4, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 67
    invoke-direct {v0, v1, v2, v3, v4}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;-><init>(IILandroid/renderscript/RenderScript;Landroid/renderscript/ScriptIntrinsicBlur;)V

    .line 69
    iput-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 72
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mPaint:Landroid/graphics/Paint;

    .line 74
    iget-object v0, v0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mShader:Landroid/graphics/BitmapShader;

    .line 76
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 78
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mContext:Landroid/content/Context;

    .line 81
    instance-of v1, v0, Landroid/app/Application;

    .line 83
    if-eqz v1, :cond_2

    .line 85
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 87
    move-result-object v0

    .line 90
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 91
    move-result-object v0

    .line 94
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 95
    int-to-float v0, v0

    .line 97
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 98
    iget v1, v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    .line 100
    int-to-float v1, v1

    .line 102
    div-float/2addr v1, v0

    .line 103
    iput v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    .line 104
    goto :goto_0

    .line 106
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 107
    move-result-object v0

    .line 110
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mTmpSize:Landroid/graphics/Point;

    .line 111
    invoke-virtual {v0, v1}, Landroid/view/Display;->getRealSize(Landroid/graphics/Point;)V

    .line 113
    iget v0, v1, Landroid/graphics/Point;->x:I

    .line 116
    int-to-float v0, v0

    .line 118
    iget-object v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 119
    iget v1, v1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBufferWidth:I

    .line 121
    int-to-float v1, v1

    .line 123
    div-float/2addr v1, v0

    .line 124
    iput v1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mScale:F

    .line 125
    :cond_3
    :goto_0
    const-string v0, "attachAndProcessBuffer"

    .line 127
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 129
    iget-object v0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 132
    invoke-virtual {v0, p1}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->attachAndQueueBuffer(Landroid/graphics/GraphicBuffer;)V

    .line 134
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mBlurBuffer:Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;

    .line 137
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    const-string v0, "processBlur"

    .line 142
    invoke-static {v0}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 144
    iget-object v0, p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mInput:Landroid/renderscript/Allocation;

    .line 147
    iget-object v1, p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mScriptIntrinsicBlur:Landroid/renderscript/ScriptIntrinsicBlur;

    .line 149
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 151
    iget-object v0, p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mOutput:Landroid/renderscript/Allocation;

    .line 154
    invoke-virtual {v1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 156
    iget-object p1, p1, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$BlurBufferHolder;->mBlurred:Landroid/graphics/Bitmap;

    .line 159
    invoke-virtual {v0, p1}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    .line 161
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 164
    iget-object p1, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mLock:Ljava/lang/Object;

    .line 167
    monitor-enter p1

    .line 169
    :try_start_0
    new-instance v0, Ljava/util/HashSet;

    .line 170
    iget-object p0, p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder;->mAttachedDrawInfos:Ljava/util/Set;

    .line 172
    invoke-direct {v0, p0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 174
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    new-instance p0, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda3;

    .line 178
    invoke-direct {p0}, Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda3;-><init>()V

    .line 180
    invoke-interface {v0, p0}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 183
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 186
    goto :goto_1

    .line 189
    :catchall_0
    move-exception p0

    .line 190
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 191
    throw p0

    .line 192
    :cond_4
    :goto_1
    return-void
    .line 193
.end method
