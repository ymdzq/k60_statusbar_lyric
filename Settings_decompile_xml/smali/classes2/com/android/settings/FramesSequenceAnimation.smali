.class public Lcom/android/settings/FramesSequenceAnimation;
.super Ljava/lang/Object;
.source "FramesSequenceAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/FramesSequenceAnimation$AnimationListener;
    }
.end annotation


# instance fields
.field private mAnimationBackgroundChange:Z

.field private mAnimationListener:Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

.field private mAnimationPlayed:Z

.field private mAnimationPlaying:Z

.field private mAnimationShouldPlay:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCurrFrameIndex:I

.field private mDelayedMillis:I

.field private mFrames:[I

.field private mHandler:Landroid/os/Handler;

.field private mImageViewSoftReference:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mOptions:Landroid/graphics/BitmapFactory$Options;


# direct methods
.method static bridge synthetic -$$Nest$fgetmAnimationBackgroundChange(Lcom/android/settings/FramesSequenceAnimation;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationBackgroundChange:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationListener(Lcom/android/settings/FramesSequenceAnimation;)Lcom/android/settings/FramesSequenceAnimation$AnimationListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationListener:Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationPlayed(Lcom/android/settings/FramesSequenceAnimation;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlayed:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnimationShouldPlay(Lcom/android/settings/FramesSequenceAnimation;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationShouldPlay:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBitmap(Lcom/android/settings/FramesSequenceAnimation;)Landroid/graphics/Bitmap;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDelayedMillis(Lcom/android/settings/FramesSequenceAnimation;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mDelayedMillis:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/settings/FramesSequenceAnimation;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmImageViewSoftReference(Lcom/android/settings/FramesSequenceAnimation;)Ljava/lang/ref/SoftReference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mImageViewSoftReference:Ljava/lang/ref/SoftReference;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmOptions(Lcom/android/settings/FramesSequenceAnimation;)Landroid/graphics/BitmapFactory$Options;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mOptions:Landroid/graphics/BitmapFactory$Options;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmAnimationBackgroundChange(Lcom/android/settings/FramesSequenceAnimation;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationBackgroundChange:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimationPlayed(Lcom/android/settings/FramesSequenceAnimation;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlayed:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAnimationPlaying(Lcom/android/settings/FramesSequenceAnimation;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlaying:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBitmap(Lcom/android/settings/FramesSequenceAnimation;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetNextFrame(Lcom/android/settings/FramesSequenceAnimation;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FramesSequenceAnimation;->getNextFrame()I

    move-result p0

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/widget/ImageView;II)V
    .locals 2

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/settings/FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, -0x1

    .line 46
    iput v1, p0, Lcom/android/settings/FramesSequenceAnimation;->mCurrFrameIndex:I

    const/16 v1, 0x3e8

    .line 47
    div-int/2addr v1, p4

    iput v1, p0, Lcom/android/settings/FramesSequenceAnimation;->mDelayedMillis:I

    .line 48
    invoke-direct {p0, v0, p3}, Lcom/android/settings/FramesSequenceAnimation;->getFramesByResId(Landroid/content/res/Resources;I)[I

    move-result-object p4

    iput-object p4, p0, Lcom/android/settings/FramesSequenceAnimation;->mFrames:[I

    .line 50
    array-length p4, p4

    if-gtz p4, :cond_0

    .line 51
    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "can\'t get frames from resource, framesResId is "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string p4, "FramesSequenceAnimation"

    invoke-static {p4, p3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    new-instance p3, Ljava/lang/ref/SoftReference;

    invoke-direct {p3, p2}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/FramesSequenceAnimation;->mImageViewSoftReference:Ljava/lang/ref/SoftReference;

    .line 55
    invoke-virtual {p3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iget-object p3, p0, Lcom/android/settings/FramesSequenceAnimation;->mFrames:[I

    const/4 p4, 0x0

    aget p3, p3, p4

    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 57
    iput-boolean p4, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlayed:Z

    .line 58
    iput-boolean p4, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlaying:Z

    .line 59
    iput-boolean p4, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationShouldPlay:Z

    .line 61
    iget-object p2, p0, Lcom/android/settings/FramesSequenceAnimation;->mImageViewSoftReference:Ljava/lang/ref/SoftReference;

    invoke-virtual {p2}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p2

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    if-nez p2, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Lcom/android/settings/R$drawable;->keysettings_launcher:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    move-object p2, p1

    check-cast p2, Landroid/graphics/drawable/BitmapDrawable;

    .line 65
    :cond_1
    invoke-virtual {p2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p1

    .line 66
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p2

    .line 67
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p3

    .line 68
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object p1

    .line 69
    invoke-static {p2, p3, p1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    .line 71
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    iput-object p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mOptions:Landroid/graphics/BitmapFactory$Options;

    .line 72
    iget-object p0, p0, Lcom/android/settings/FramesSequenceAnimation;->mBitmap:Landroid/graphics/Bitmap;

    iput-object p0, p1, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    const/4 p0, 0x1

    .line 73
    iput-boolean p0, p1, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 74
    iput p0, p1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    return-void
.end method

.method private getFramesByResId(Landroid/content/res/Resources;I)[I
    .locals 3

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->obtainTypedArray(I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->length()I

    move-result p1

    .line 81
    new-array p2, p1, [I

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-ge v1, p1, :cond_0

    .line 83
    invoke-virtual {p0, v1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    aput v2, p2, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    return-object p2
.end method

.method private getNextFrame()I
    .locals 9

    .line 91
    iget v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mCurrFrameIndex:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mCurrFrameIndex:I

    .line 92
    iget-object v2, p0, Lcom/android/settings/FramesSequenceAnimation;->mFrames:[I

    array-length v3, v2

    if-lt v0, v3, :cond_0

    const/4 v0, 0x0

    .line 93
    iput v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mCurrFrameIndex:I

    .line 94
    iput-boolean v1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlayed:Z

    .line 96
    :cond_0
    iget v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mCurrFrameIndex:I

    int-to-double v3, v0

    array-length v5, v2

    int-to-double v5, v5

    const-wide v7, 0x3fe4cccccccccccdL    # 0.65

    mul-double/2addr v5, v7

    cmpl-double v3, v3, v5

    if-ltz v3, :cond_1

    .line 97
    iput-boolean v1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationBackgroundChange:Z

    .line 100
    :cond_1
    aget p0, v2, v0

    return p0
.end method


# virtual methods
.method public setAnimationListener(Lcom/android/settings/FramesSequenceAnimation$AnimationListener;)V
    .locals 0

    .line 177
    iput-object p1, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationListener:Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    return-void
.end method

.method public declared-synchronized start()V
    .locals 2

    monitor-enter p0

    const/4 v0, 0x1

    .line 104
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationShouldPlay:Z

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlaying:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 106
    monitor-exit p0

    return-void

    .line 109
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/android/settings/FramesSequenceAnimation$1;

    invoke-direct {v1, p0}, Lcom/android/settings/FramesSequenceAnimation$1;-><init>(Lcom/android/settings/FramesSequenceAnimation;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 163
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationListener:Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    if-eqz v0, :cond_1

    .line 164
    invoke-interface {v0}, Lcom/android/settings/FramesSequenceAnimation$AnimationListener;->onAnimationStarted()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 166
    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized stop()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x0

    .line 169
    :try_start_0
    iput-boolean v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationPlaying:Z

    .line 170
    iput-boolean v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationShouldPlay:Z

    .line 171
    iget-object v0, p0, Lcom/android/settings/FramesSequenceAnimation;->mAnimationListener:Lcom/android/settings/FramesSequenceAnimation$AnimationListener;

    if-eqz v0, :cond_0

    .line 172
    invoke-interface {v0}, Lcom/android/settings/FramesSequenceAnimation$AnimationListener;->onAnimationStopped()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 174
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
