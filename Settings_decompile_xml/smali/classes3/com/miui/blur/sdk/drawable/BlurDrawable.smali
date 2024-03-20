.class public Lcom/miui/blur/sdk/drawable/BlurDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "BlurDrawable.java"


# static fields
.field public static final MIUI_BLUR_DEFAULT_DARK:I = 0x6

.field public static final MIUI_BLUR_DEFAULT_LIGHT:I = 0x2

.field public static final MIUI_BLUR_EXTRA_THIN_DARK:I = 0x4

.field public static final MIUI_BLUR_EXTRA_THIN_LIGHT:I = 0x0

.field public static final MIUI_BLUR_HEAVY_DARK:I = 0x7

.field public static final MIUI_BLUR_HEAVY_LIGHT:I = 0x3

.field public static final MIUI_BLUR_THIN_DARK:I = 0x5

.field public static final MIUI_BLUR_THIN_LIGHT:I = 0x1

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_DARK:I = 0xb

.field public static final MIUI_FULL_SCREEN_BLUR_DEFAULT_LIGHT:I = 0x9

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_DARK:I = 0xa

.field public static final MIUI_FULL_SCREEN_BLUR_THIN_LIGHT:I = 0x8

.field private static final TAG:Ljava/lang/String; = "BlurDrawable"

.field private static final mainThreadHandler:Landroid/os/Handler;


# instance fields
.field private mAlpha:I

.field private mBlurEnabled:Z

.field private mBlurHeight:I

.field private mBlurWidth:I

.field private mFunctor:J

.field private mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 46
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    .line 50
    :try_start_0
    invoke-static {}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlurStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "miuiblursdk"

    .line 51
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "Failed to load miuiblursdk library"

    const-string v2, "BlurDrawable"

    .line 54
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :try_start_1
    const-string v0, "miuiblur"

    .line 56
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    const-string v1, "Failed to load miuiblur library"

    .line 58
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 75
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const-wide/16 v0, 0x0

    .line 37
    iput-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    const/4 v0, 0x1

    .line 38
    iput-boolean v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    .line 41
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurWidth:I

    .line 42
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    iput v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurHeight:I

    .line 76
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    .line 77
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 78
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 79
    iget v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurWidth:I

    iget v1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurHeight:I

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nCreateNativeFunctor(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    .line 80
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->initMethod()V

    :cond_0
    return-void
.end method

.method private drawBlurBack(Landroid/graphics/Canvas;)V
    .locals 4

    .line 179
    :try_start_0
    iget-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 180
    iget-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;

    new-array v1, v1, [Ljava/lang/Object;

    iget-wide v2, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p0

    const-string p1, "BlurDrawable"

    const-string v0, "canvas function [callDrawGLFunction()] error"

    .line 182
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private initMethod()V
    .locals 8

    .line 189
    const-class v0, Ljava/lang/String;

    .line 190
    :try_start_0
    const-class v1, Ljava/lang/Class;

    const-string v2, "getDeclaredMethod"

    const/4 v3, 0x2

    new-array v4, v3, [Ljava/lang/Class;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const-class v6, [Ljava/lang/Class;

    const/4 v7, 0x1

    aput-object v6, v4, v7

    .line 191
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 192
    const-class v2, Ljava/lang/Class;

    const-string v4, "forName"

    new-array v6, v7, [Ljava/lang/Class;

    aput-object v0, v6, v5

    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v2, v7, [Ljava/lang/Object;

    const-string v4, "android.graphics.RecordingCanvas"

    aput-object v4, v2, v5

    const/4 v4, 0x0

    .line 193
    invoke-virtual {v0, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    new-array v2, v3, [Ljava/lang/Object;

    const-string v3, "callDrawGLFunction2"

    aput-object v3, v2, v5

    new-array v3, v7, [Ljava/lang/Class;

    .line 194
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v4, v3, v5

    aput-object v3, v2, v7

    invoke-virtual {v1, v0, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Method;

    iput-object v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mMethodCallDrawGLFunction:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "BlurDrawable"

    const-string v1, "canvas function [callDrawGLFunction()] error"

    .line 209
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method

.method private invalidateOnMainThread()V
    .locals 2

    .line 315
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 316
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 324
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    goto :goto_1

    .line 317
    :cond_1
    :goto_0
    sget-object v0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mainThreadHandler:Landroid/os/Handler;

    new-instance v1, Lcom/miui/blur/sdk/drawable/BlurDrawable$1;

    invoke-direct {v1, p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable$1;-><init>(Lcom/miui/blur/sdk/drawable/BlurDrawable;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_1
    return-void
.end method

.method public static isSupportBlurStatic()Z
    .locals 1

    .line 0
    const/4 v0, 0x1

    return v0
.end method

.method public static native nAddMixColor(JII)V
.end method

.method public static native nClearMixColor(J)V
.end method

.method public static native nCreateNativeFunctor(II)J
.end method

.method public static native nDeleteNativeFunctor(J)J
.end method

.method public static native nEnableBlur(JZ)V
.end method

.method public static native nNeedUpdateBounds(JZ)V
.end method

.method public static native nSetAlpha(JF)V
.end method

.method public static native nSetBlurCornerRadii(J[F)V
.end method

.method public static native nSetBlurMode(JI)V
.end method

.method public static native nSetBlurRatio(JF)V
.end method

.method public static native nSetMixColor(JII)V
.end method


# virtual methods
.method public addMixColor(I)V
    .locals 3

    .line 253
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    const/4 v2, 0x4

    invoke-static {v0, v1, p1, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nAddMixColor(JII)V

    .line 255
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public addMixColor(II)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nAddMixColor(JII)V

    .line 262
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public clearMixColor()V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nClearMixColor(J)V

    .line 269
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 2

    const-string v0, "BlurDrawable"

    const-string v1, "draw"

    .line 169
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    invoke-direct {p0, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->drawBlurBack(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    iget-object p0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, p0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :goto_0
    return-void
.end method

.method public enableBlur(Z)V
    .locals 2

    .line 288
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 289
    iput-boolean p1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mBlurEnabled:Z

    .line 290
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nEnableBlur(JZ)V

    :cond_0
    return-void
.end method

.method protected finalize()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 231
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 232
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nDeleteNativeFunctor(J)J

    :cond_0
    const-string v0, "BlurDrawable"

    const-string v1, "finalize"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    return-void
.end method

.method public getOpacity()I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public isSupportBlur()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public needUpdateBounds(Z)V
    .locals 2

    .line 295
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nNeedUpdateBounds(JZ)V

    :cond_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 2

    .line 215
    iput p1, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mAlpha:I

    .line 216
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    int-to-float p0, p1

    const/high16 p1, 0x437f0000    # 255.0f

    div-float/2addr p0, p1

    invoke-static {v0, v1, p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetAlpha(JF)V

    return-void
.end method

.method public setBlurCornerRadii([F)V
    .locals 2

    .line 281
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurCornerRadii(J[F)V

    .line 283
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setBlurMode(I)V
    .locals 2

    .line 239
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurMode(JI)V

    .line 241
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setBlurRatio(F)V
    .locals 2

    .line 274
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 275
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetBlurRatio(JF)V

    .line 276
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    const-string p0, "BlurDrawable"

    const-string p1, "nothing in setColorFilter"

    .line 221
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public setMiuiBlurType(I)V
    .locals 7

    const v0, 0x3f666666    # 0.9f

    const v1, 0x3f333333    # 0.7f

    const v2, 0x3ecccccd    # 0.4f

    const/16 v3, 0x13

    const/high16 v4, 0x3f800000    # 1.0f

    const/16 v5, 0x12

    const/16 v6, 0x1d

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 157
    :pswitch_0
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#80a3a3a3"

    .line 158
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#66000000"

    .line 159
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 160
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#52b4b4b4"

    .line 151
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#26000000"

    .line 152
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 153
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 143
    :pswitch_2
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#85666666"

    .line 144
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#66ffffff"

    .line 145
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 146
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 136
    :pswitch_3
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#61424242"

    .line 137
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#1effffff"

    .line 138
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 139
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 129
    :pswitch_4
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#7f5c5c5c"

    .line 130
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#bf1f1f1f"

    .line 131
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 132
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 123
    :pswitch_5
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#75737373"

    .line 124
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#8a262626"

    .line 125
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 117
    :pswitch_6
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#618a8a8a"

    .line 118
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#4d424242"

    .line 119
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 120
    invoke-virtual {p0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto/16 :goto_0

    .line 111
    :pswitch_7
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#4dadadad"

    .line 112
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v3, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#33616161"

    .line 113
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 114
    invoke-virtual {p0, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    .line 105
    :pswitch_8
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#a66b6b6b"

    .line 106
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#ccf5f5f5"

    .line 107
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 108
    invoke-virtual {p0, v4}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    .line 99
    :pswitch_9
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#8f606060"

    .line 100
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#a3f2f2f2"

    .line 101
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 102
    invoke-virtual {p0, v0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    .line 93
    :pswitch_a
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#84585858"

    .line 94
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#40e3e3e3"

    .line 95
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 96
    invoke-virtual {p0, v1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    goto :goto_0

    .line 87
    :pswitch_b
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->clearMixColor()V

    const-string p1, "#7f4d4d4d"

    .line 88
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v5, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    const-string p1, "#26d9d9d9"

    .line 89
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result p1

    invoke-virtual {p0, v6, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->addMixColor(II)V

    .line 90
    invoke-virtual {p0, v2}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->setBlurRatio(F)V

    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setMixColor(II)V
    .locals 2

    .line 246
    invoke-virtual {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->isSupportBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    iget-wide v0, p0, Lcom/miui/blur/sdk/drawable/BlurDrawable;->mFunctor:J

    invoke-static {v0, v1, p2, p1}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->nSetMixColor(JII)V

    .line 248
    invoke-direct {p0}, Lcom/miui/blur/sdk/drawable/BlurDrawable;->invalidateOnMainThread()V

    :cond_0
    return-void
.end method
