.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# instance fields
.field public final synthetic this$1:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;


# direct methods
.method public constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;->this$1:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doFrame(J)V
    .locals 9

    .line 1
    const-string p1, "#MiuiGxzwFrameAnimation mFrameCallback"

    .line 2
    invoke-static {p1}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 4
    iget-object p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;->this$1:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;

    .line 7
    iget-wide p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 9
    const-wide/16 v0, 0x0

    .line 11
    cmp-long p1, p1, v0

    .line 13
    const/4 p2, 0x2

    .line 15
    const/4 v2, 0x1

    .line 16
    if-lez p1, :cond_2

    .line 17
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 26
    move-result-wide v3

    .line 29
    iget-wide v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 30
    sub-long/2addr v3, v5

    .line 32
    const-wide/16 v5, 0x96

    .line 33
    cmp-long p1, v3, v5

    .line 35
    if-lez p1, :cond_1

    .line 37
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 39
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 41
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 43
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->clearAnimationSurface()V

    .line 45
    goto :goto_0

    .line 48
    :cond_1
    :try_start_0
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 49
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mContext:Landroid/content/Context;

    .line 51
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 53
    move-result-object p1

    .line 56
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 57
    move-result-object p1

    .line 60
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 61
    if-ne p1, p2, :cond_2

    .line 63
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    goto :goto_0

    .line 67
    :catch_0
    move-exception p1

    .line 68
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 69
    :cond_2
    :goto_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 72
    const/4 v3, 0x0

    .line 74
    if-eqz p1, :cond_3

    .line 75
    invoke-virtual {p0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 77
    iput-boolean v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 80
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 82
    if-eqz p1, :cond_c

    .line 84
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 86
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 88
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 90
    invoke-direct {v0, p0, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 92
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 95
    goto/16 :goto_4

    .line 98
    :cond_3
    monitor-enter p0

    .line 100
    :try_start_1
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawing:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 101
    monitor-exit p0

    .line 103
    if-nez p1, :cond_4

    .line 104
    goto/16 :goto_4

    .line 106
    :cond_4
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    .line 108
    move-result-object p1

    .line 111
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mDrawCurrFrameCallBack:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$1;

    .line 112
    invoke-virtual {p1, v4}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 117
    move-result-wide v4

    .line 120
    iget-wide v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mStartTimePerFrame:J

    .line 121
    sub-long/2addr v4, v6

    .line 123
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 124
    iget p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mFrameInterval:I

    .line 126
    int-to-long v6, p1

    .line 128
    cmp-long p1, v4, v6

    .line 129
    if-ltz p1, :cond_8

    .line 131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 133
    move-result-wide v4

    .line 136
    iput-wide v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mStartTimePerFrame:J

    .line 137
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 139
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 141
    iget v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 143
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 145
    move-result-object v4

    .line 148
    invoke-virtual {p1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 152
    check-cast p1, Landroid/graphics/Bitmap;

    .line 153
    if-eqz p1, :cond_7

    .line 155
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 157
    iget-object v4, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 159
    iget v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 161
    iget v6, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundFrame:I

    .line 163
    if-lt v5, v6, :cond_6

    .line 165
    if-gtz v6, :cond_5

    .line 167
    goto :goto_1

    .line 169
    :cond_5
    const/4 v5, 0x0

    .line 170
    goto :goto_2

    .line 171
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mBackgroundBmp:Landroid/graphics/Bitmap;

    .line 172
    :goto_2
    sget v6, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->GXZW_ANIM_SCALE:F

    .line 174
    iget v7, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mTranslateX:I

    .line 176
    iget v8, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mTranslateY:I

    .line 178
    iput-object p1, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBitmap:Landroid/graphics/Bitmap;

    .line 180
    iput-object v5, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    .line 182
    iput v6, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mScale:F

    .line 184
    iput v7, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateX:I

    .line 186
    iput v8, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->mTranslateY:I

    .line 188
    invoke-virtual {v4}, Landroid/view/View;->invalidate()V

    .line 190
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 193
    add-int/2addr p1, v2

    .line 195
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 196
    goto :goto_3

    .line 198
    :cond_7
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 199
    if-lez p1, :cond_8

    .line 201
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 203
    add-int/2addr p1, v2

    .line 205
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 206
    :cond_8
    :goto_3
    iget p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 208
    iget-object v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 210
    iget-object v4, v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mGxzwAnimCacheBitmapHashMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 212
    invoke-virtual {v4}, Ljava/util/concurrent/ConcurrentHashMap;->size()I

    .line 214
    move-result v4

    .line 217
    if-lt p1, v4, :cond_c

    .line 218
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 220
    iget p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMode:I

    .line 222
    if-ne p1, v2, :cond_9

    .line 224
    invoke-virtual {p0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 226
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 229
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 231
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->clearAnimationSurface()V

    .line 233
    iput-boolean v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 236
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 238
    if-eqz p1, :cond_c

    .line 240
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 242
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 244
    new-instance p2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 246
    invoke-direct {p2, p0, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 248
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 251
    goto :goto_4

    .line 254
    :cond_9
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 255
    iget p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMode:I

    .line 257
    if-ne p1, p2, :cond_c

    .line 259
    iget-wide v4, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDecode:J

    .line 261
    cmp-long p1, v4, v0

    .line 263
    if-lez p1, :cond_a

    .line 265
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mInterruptDraw:Z

    .line 267
    invoke-virtual {p0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->setDrawing(Z)V

    .line 269
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 272
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMiuiGxzwAnimationView:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;

    .line 274
    invoke-virtual {p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimationView;->clearAnimationSurface()V

    .line 276
    iput-boolean v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 279
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 281
    if-eqz p1, :cond_c

    .line 283
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 285
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 287
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 289
    invoke-direct {v0, p0, p2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 291
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 294
    goto :goto_4

    .line 297
    :cond_a
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mFrameAnimationListener:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimView$MiuiGxzwAnimViewInternal$AnimationListener;

    .line 298
    if-eqz p1, :cond_b

    .line 300
    iget-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->this$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 302
    iget-object p1, p1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mHandler:Landroid/os/Handler;

    .line 304
    new-instance p2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;

    .line 306
    const/4 v0, 0x3

    .line 308
    invoke-direct {p2, p0, v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable$$ExternalSyntheticLambda0;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;I)V

    .line 309
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    :cond_b
    iput v3, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mCurrentPosition:I

    .line 315
    iput-boolean v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$DrawRunnable;->mRepeatDraw:Z

    .line 317
    :cond_c
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 319
    return-void

    .line 322
    :catchall_0
    move-exception p1

    .line 323
    monitor-exit p0

    .line 324
    throw p1
    .line 325
.end method
