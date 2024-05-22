.class public final Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final mAnimRes:[I

.field public final mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

.field public volatile mDecoding:Z

.field public final synthetic this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;


# direct methods
.method public constructor <init>(Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;[I)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance p1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 7
    const/4 v0, 0x0

    .line 9
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 10
    iput-object p1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 13
    iput-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 15
    iput-object p2, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mAnimRes:[I

    .line 17
    array-length p0, p2

    .line 19
    rem-int/2addr v0, p0

    .line 20
    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 21
    return-void
    .line 24
.end method


# virtual methods
.method public final run()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mAnimRes:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_1

    .line 6
    array-length v0, v0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    iget-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 11
    if-nez v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    move v0, v1

    .line 16
    goto :goto_1

    .line 17
    :cond_1
    :goto_0
    move v0, v2

    .line 18
    :goto_1
    if-eqz v0, :cond_2

    .line 19
    iput-boolean v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 21
    return-void

    .line 23
    :cond_2
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mAnimRes:[I

    .line 24
    iget-object v3, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 26
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 28
    move-result v3

    .line 31
    aget v0, v0, v3

    .line 32
    iget-object v3, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 34
    iget-object v4, v3, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mRecycleBitmapQueue:Ljava/util/Queue;

    .line 36
    const/4 v5, 0x0

    .line 38
    :try_start_0
    move-object v6, v4

    .line 39
    check-cast v6, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 40
    invoke-virtual {v6}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    .line 42
    move-result v6

    .line 45
    const/4 v7, 0x2

    .line 46
    if-lt v6, v7, :cond_3

    .line 47
    check-cast v4, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 49
    invoke-virtual {v4}, Ljava/util/concurrent/ArrayBlockingQueue;->poll()Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    check-cast v4, Landroid/graphics/Bitmap;

    .line 55
    goto :goto_2

    .line 57
    :cond_3
    move-object v4, v5

    .line 58
    :goto_2
    new-instance v6, Landroid/graphics/BitmapFactory$Options;

    .line 59
    invoke-direct {v6}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 61
    iput-boolean v2, v6, Landroid/graphics/BitmapFactory$Options;->inMutable:Z

    .line 64
    iput v2, v6, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 66
    iput-object v4, v6, Landroid/graphics/BitmapFactory$Options;->inBitmap:Landroid/graphics/Bitmap;

    .line 68
    iget-object v3, v3, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mContext:Landroid/content/Context;

    .line 70
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 72
    move-result-object v3

    .line 75
    invoke-static {v3, v0, v6}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 76
    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_3

    .line 80
    :catch_0
    move-exception v0

    .line 81
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 82
    :goto_3
    :try_start_1
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 85
    iget-object v0, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mBitmapQueue:Ljava/util/concurrent/BlockingQueue;

    .line 87
    check-cast v0, Ljava/util/concurrent/ArrayBlockingQueue;

    .line 89
    invoke-virtual {v0, v5}, Ljava/util/concurrent/ArrayBlockingQueue;->put(Ljava/lang/Object;)V

    .line 91
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 94
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 96
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 101
    move-result v0

    .line 104
    iget-object v3, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mAnimRes:[I

    .line 105
    array-length v3, v3

    .line 107
    if-lt v0, v3, :cond_4

    .line 108
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mCurrentPosition:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 110
    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 112
    goto :goto_4

    .line 115
    :catch_1
    move-exception v0

    .line 116
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 117
    :cond_4
    :goto_4
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mAnimRes:[I

    .line 120
    if-eqz v0, :cond_6

    .line 122
    array-length v0, v0

    .line 124
    if-eqz v0, :cond_6

    .line 125
    iget-boolean v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 127
    if-nez v0, :cond_5

    .line 129
    goto :goto_5

    .line 131
    :cond_5
    move v2, v1

    .line 132
    :cond_6
    :goto_5
    if-eqz v2, :cond_7

    .line 133
    iput-boolean v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->mDecoding:Z

    .line 135
    return-void

    .line 137
    :cond_7
    iget-object v0, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 138
    iget-object v0, v0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mHandlerLock:Ljava/lang/Object;

    .line 140
    monitor-enter v0

    .line 142
    :try_start_2
    iget-object v1, p0, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer$DecodeTask;->this$0:Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;

    .line 143
    iget-object v1, v1, Lcom/miui/charge/lollipop/LollipopWirelessChargeCircleDrawer;->mDecodeHandler:Landroid/os/Handler;

    .line 145
    if-eqz v1, :cond_8

    .line 147
    invoke-virtual {v1, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 149
    :cond_8
    monitor-exit v0

    .line 152
    return-void

    .line 153
    :catchall_0
    move-exception p0

    .line 154
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 155
    throw p0
    .line 156
.end method
