.class public final Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final WIRELESS_CIRCLE_RES_ARRAY:[I


# instance fields
.field public final mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

.field public final mContext:Landroid/content/Context;

.field public mDecodeHandler:Landroid/os/Handler;

.field public mDecodeTask:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;

.field public mDecodeThread:Landroid/os/HandlerThread;

.field public final mFrameInterval:I

.field public final mHandlerLock:Ljava/lang/Object;

.field public mLastFrameTime:J

.field public final mMatrix:Landroid/graphics/Matrix;

.field public final mPaint:Landroid/graphics/Paint;

.field public final mRecycleBitmapQueue:Ljava/util/Queue;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x18

    .line 2
    new-array v0, v0, [I

    .line 4
    fill-array-data v0, :array_0

    .line 6
    sput-object v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->WIRELESS_CIRCLE_RES_ARRAY:[I

    .line 9
    return-void

    .line 11
    :array_0
    .array-data 4
        0x7f0819cf    # @drawable/wireless_rapid_charge_0 'res/drawable-nodpi/wireless_rapid_charge_0.webp'
        0x7f0819d0    # @drawable/wireless_rapid_charge_1 'res/drawable-nodpi/wireless_rapid_charge_1.webp'
        0x7f0819db    # @drawable/wireless_rapid_charge_2 'res/drawable-nodpi/wireless_rapid_charge_2.webp'
        0x7f0819e0    # @drawable/wireless_rapid_charge_3 'res/drawable-nodpi/wireless_rapid_charge_3.webp'
        0x7f0819e1    # @drawable/wireless_rapid_charge_4 'res/drawable-nodpi/wireless_rapid_charge_4.webp'
        0x7f0819e2    # @drawable/wireless_rapid_charge_5 'res/drawable-nodpi/wireless_rapid_charge_5.webp'
        0x7f0819e3    # @drawable/wireless_rapid_charge_6 'res/drawable-nodpi/wireless_rapid_charge_6.webp'
        0x7f0819e4    # @drawable/wireless_rapid_charge_7 'res/drawable-nodpi/wireless_rapid_charge_7.webp'
        0x7f0819e5    # @drawable/wireless_rapid_charge_8 'res/drawable-nodpi/wireless_rapid_charge_8.webp'
        0x7f0819e6    # @drawable/wireless_rapid_charge_9 'res/drawable-nodpi/wireless_rapid_charge_9.webp'
        0x7f0819d1    # @drawable/wireless_rapid_charge_10 'res/drawable-nodpi/wireless_rapid_charge_10.webp'
        0x7f0819d2    # @drawable/wireless_rapid_charge_11 'res/drawable-nodpi/wireless_rapid_charge_11.webp'
        0x7f0819d3    # @drawable/wireless_rapid_charge_12 'res/drawable-nodpi/wireless_rapid_charge_12.webp'
        0x7f0819d4    # @drawable/wireless_rapid_charge_13 'res/drawable-nodpi/wireless_rapid_charge_13.webp'
        0x7f0819d5    # @drawable/wireless_rapid_charge_14 'res/drawable-nodpi/wireless_rapid_charge_14.webp'
        0x7f0819d6    # @drawable/wireless_rapid_charge_15 'res/drawable-nodpi/wireless_rapid_charge_15.webp'
        0x7f0819d7    # @drawable/wireless_rapid_charge_16 'res/drawable-nodpi/wireless_rapid_charge_16.webp'
        0x7f0819d8    # @drawable/wireless_rapid_charge_17 'res/drawable-nodpi/wireless_rapid_charge_17.webp'
        0x7f0819d9    # @drawable/wireless_rapid_charge_18 'res/drawable-nodpi/wireless_rapid_charge_18.webp'
        0x7f0819da    # @drawable/wireless_rapid_charge_19 'res/drawable-nodpi/wireless_rapid_charge_19.webp'
        0x7f0819dc    # @drawable/wireless_rapid_charge_20 'res/drawable-nodpi/wireless_rapid_charge_20.webp'
        0x7f0819dd    # @drawable/wireless_rapid_charge_21 'res/drawable-nodpi/wireless_rapid_charge_21.webp'
        0x7f0819de    # @drawable/wireless_rapid_charge_22 'res/drawable-nodpi/wireless_rapid_charge_22.webp'
        0x7f0819df    # @drawable/wireless_rapid_charge_23 'res/drawable-nodpi/wireless_rapid_charge_23.webp'
    .end array-data
    .line 12
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 5
    const/4 v1, 0x4

    .line 7
    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    .line 8
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 11
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 13
    const/4 v1, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    invoke-direct {v0, v1, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(IZ)V

    .line 17
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mRecycleBitmapQueue:Ljava/util/Queue;

    .line 20
    new-instance v0, Ljava/lang/Object;

    .line 22
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mHandlerLock:Ljava/lang/Object;

    .line 27
    const-wide/16 v0, -0x1

    .line 29
    iput-wide v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mLastFrameTime:J

    .line 31
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mContext:Landroid/content/Context;

    .line 33
    const/16 p1, 0x1f

    .line 35
    iput p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mFrameInterval:I

    .line 37
    new-instance p1, Landroid/graphics/Paint;

    .line 39
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mPaint:Landroid/graphics/Paint;

    .line 44
    new-instance p1, Landroid/graphics/Matrix;

    .line 46
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mMatrix:Landroid/graphics/Matrix;

    .line 51
    return-void
    .line 53
.end method


# virtual methods
.method public final dequeueBitmapInfoAndDraw(Lcom/miui/charge/lollipop/LollipopWirelessAnimationView;)V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 2
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 4
    invoke-virtual {v0}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroid/graphics/Bitmap;

    .line 10
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mPaint:Landroid/graphics/Paint;

    .line 12
    iget-object v2, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mMatrix:Landroid/graphics/Matrix;

    .line 14
    if-eqz v0, :cond_2

    .line 16
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->isRecycled()Z

    .line 18
    move-result v3

    .line 21
    if-eqz v3, :cond_0

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    invoke-virtual {p1}, Landroid/view/TextureView;->lockCanvas()Landroid/graphics/Canvas;

    .line 25
    move-result-object v3

    .line 28
    if-eqz v3, :cond_2

    .line 29
    :try_start_0
    invoke-virtual {v2}, Landroid/graphics/Matrix;->reset()V

    .line 31
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 34
    move-result v4

    .line 37
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getWidth()I

    .line 38
    move-result v5

    .line 41
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 42
    move-result v6

    .line 45
    invoke-virtual {v3}, Landroid/graphics/Canvas;->getHeight()I

    .line 46
    move-result v7

    .line 49
    sub-int v8, v5, v4

    .line 50
    int-to-float v8, v8

    .line 52
    const/high16 v9, 0x3f000000    # 0.5f

    .line 53
    mul-float/2addr v8, v9

    .line 55
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 56
    move-result v8

    .line 59
    int-to-float v8, v8

    .line 60
    sub-int v10, v7, v6

    .line 61
    int-to-float v10, v10

    .line 63
    mul-float/2addr v10, v9

    .line 64
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 65
    move-result v9

    .line 68
    int-to-float v9, v9

    .line 69
    int-to-float v5, v5

    .line 70
    const/high16 v10, 0x3f800000    # 1.0f

    .line 71
    mul-float v11, v5, v10

    .line 73
    int-to-float v4, v4

    .line 75
    div-float/2addr v11, v4

    .line 76
    int-to-float v4, v7

    .line 77
    mul-float/2addr v10, v4

    .line 78
    int-to-float v6, v6

    .line 79
    div-float/2addr v10, v6

    .line 80
    invoke-static {v11, v10}, Ljava/lang/Math;->min(FF)F

    .line 81
    move-result v6

    .line 84
    invoke-virtual {v2, v8, v9}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 85
    const/high16 v7, 0x40000000    # 2.0f

    .line 88
    div-float/2addr v5, v7

    .line 90
    div-float/2addr v4, v7

    .line 91
    invoke-virtual {v2, v6, v6, v5, v4}, Landroid/graphics/Matrix;->postScale(FFFF)Z

    .line 92
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    .line 95
    const/4 v5, 0x0

    .line 97
    invoke-virtual {v3, v5, v4}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 98
    invoke-virtual {v3, v0, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 101
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 104
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 110
    goto :goto_0

    .line 113
    :catchall_0
    move-exception p0

    .line 114
    invoke-virtual {p1}, Landroid/view/TextureView;->isAvailable()Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_1

    .line 119
    invoke-virtual {p1, v3}, Landroid/view/TextureView;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V

    .line 121
    :cond_1
    throw p0

    .line 124
    :cond_2
    :goto_0
    :try_start_1
    iget-object p0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mRecycleBitmapQueue:Ljava/util/Queue;

    .line 125
    check-cast p0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->offer(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    goto :goto_1

    .line 132
    :catch_0
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 134
    :goto_1
    return-void
    .line 137
.end method
