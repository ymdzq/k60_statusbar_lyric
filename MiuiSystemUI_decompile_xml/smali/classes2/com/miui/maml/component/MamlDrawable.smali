.class public Lcom/miui/maml/component/MamlDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final LOG_TAG:Ljava/lang/String; = "MamlDrawable"

.field private static final RENDER_TIMEOUT:I = 0x64


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I

.field private mInvalidateSelf:Ljava/lang/Runnable;

.field private mPaused:Z

.field private mRenderTimeout:Ljava/lang/Runnable;

.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mUpdater:Lcom/miui/maml/RenderUpdater;

.field private mWidth:I


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/component/MamlDrawable;-><init>(Lcom/miui/maml/ScreenElementRoot;Z)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;Z)V
    .locals 2

    .line 2
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 4
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    .line 5
    new-instance v0, Lcom/miui/maml/component/MamlDrawable$1;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlDrawable$1;-><init>(Lcom/miui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 6
    new-instance v0, Lcom/miui/maml/component/MamlDrawable$2;

    invoke-direct {v0, p0}, Lcom/miui/maml/component/MamlDrawable$2;-><init>(Lcom/miui/maml/component/MamlDrawable;)V

    iput-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 7
    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getWidth()F

    move-result p1

    float-to-int p1, p1

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getHeight()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/component/MamlDrawable;->setIntrinsicSize(II)V

    .line 9
    new-instance p1, Lcom/miui/maml/component/MamlDrawable$3;

    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {p1, p0, v0, v1, p2}, Lcom/miui/maml/component/MamlDrawable$3;-><init>(Lcom/miui/maml/component/MamlDrawable;Lcom/miui/maml/ScreenElementRoot;Landroid/os/Handler;Z)V

    iput-object p1, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 10
    invoke-virtual {p1}, Lcom/miui/maml/RenderUpdater;->init()V

    .line 11
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->runUpdater()V

    return-void
.end method

.method public static synthetic access$000(Lcom/miui/maml/component/MamlDrawable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/component/MamlDrawable;->doPause()V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic access$100(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/component/MamlDrawable;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$300(Lcom/miui/maml/component/MamlDrawable;)Ljava/lang/Runnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mInvalidateSelf:Ljava/lang/Runnable;

    .line 2
    return-object p0
    .line 4
.end method

.method private doPause()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "doPause: "

    .line 7
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 9
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 13
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->onPause()V

    .line 17
    return-void
    .line 20
.end method

.method private doResume()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "doResume: "

    .line 7
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-boolean v0, p0, Lcom/miui/maml/component/MamlDrawable;->mPaused:Z

    .line 13
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->onResume()V

    .line 17
    return-void
    .line 20
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
    const-string p1, "MamlDrawable"

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
    invoke-direct {p0, v0}, Lcom/miui/maml/component/MamlDrawable;->logd(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/RenderUpdater;->cleanUp()V

    .line 9
    return-void
    .line 12
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    const-string v0, "MamlDrawable"

    .line 2
    iget-object v1, p0, Lcom/miui/maml/component/MamlDrawable;->mHandler:Landroid/os/Handler;

    .line 4
    iget-object v2, p0, Lcom/miui/maml/component/MamlDrawable;->mRenderTimeout:Ljava/lang/Runnable;

    .line 6
    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 8
    invoke-direct {p0}, Lcom/miui/maml/component/MamlDrawable;->doResume()V

    .line 11
    :try_start_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 14
    move-result v1

    .line 17
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 18
    move-result-object v2

    .line 21
    iget v2, v2, Landroid/graphics/Rect;->left:I

    .line 22
    int-to-float v2, v2

    .line 24
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    .line 25
    move-result-object v3

    .line 28
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 29
    int-to-float v3, v3

    .line 31
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 32
    iget v2, p0, Lcom/miui/maml/component/MamlDrawable;->mWidth:I

    .line 35
    int-to-float v2, v2

    .line 37
    iget v3, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    .line 38
    int-to-float v3, v3

    .line 40
    div-float/2addr v2, v3

    .line 41
    iget v3, p0, Lcom/miui/maml/component/MamlDrawable;->mHeight:I

    .line 42
    int-to-float v3, v3

    .line 44
    iget v4, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    .line 45
    int-to-float v4, v4

    .line 47
    div-float/2addr v3, v4

    .line 48
    const/4 v4, 0x0

    .line 49
    invoke-virtual {p1, v2, v3, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 50
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 53
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 55
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->restoreToCount(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 61
    :catch_0
    move-exception p0

    .line 62
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    .line 63
    invoke-virtual {p0}, Ljava/lang/OutOfMemoryError;->toString()Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    goto :goto_0

    .line 73
    :catch_1
    move-exception p0

    .line 74
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 75
    invoke-virtual {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 78
    move-result-object p0

    .line 81
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    :goto_0
    return-void
    .line 85
.end method

.method public getIntrinsicHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getIntrinsicWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public getOpacity()I
    .locals 0

    .line 1
    const/4 p0, -0x3

    .line 2
    return p0
    .line 3
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/component/MamlDrawable;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public setAlpha(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAutoCleanup(Z)Lcom/miui/maml/component/MamlDrawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/component/MamlDrawable;->mUpdater:Lcom/miui/maml/RenderUpdater;

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/maml/RenderUpdater;->setAutoCleanup(Z)V

    .line 4
    return-object p0
    .line 7
.end method

.method public setBounds(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 2
    sub-int/2addr p3, p1

    .line 5
    iput p3, p0, Lcom/miui/maml/component/MamlDrawable;->mWidth:I

    .line 6
    sub-int/2addr p4, p2

    .line 8
    iput p4, p0, Lcom/miui/maml/component/MamlDrawable;->mHeight:I

    .line 9
    return-void
    .line 11
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setIntrinsicSize(II)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicWidth:I

    .line 2
    iput p2, p0, Lcom/miui/maml/component/MamlDrawable;->mIntrinsicHeight:I

    .line 4
    return-void
    .line 6
.end method
