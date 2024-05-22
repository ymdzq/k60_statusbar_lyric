.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 4
    if-eqz v0, :cond_6

    .line 6
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    iget-object v1, v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 10
    invoke-virtual {v0, v1}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getFitScreenWallpaperPreview(Landroid/content/Context;)Landroid/graphics/Bitmap;

    .line 12
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const v2, 0x3eaaaaab

    .line 17
    if-nez v0, :cond_0

    .line 20
    move v3, v1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    .line 24
    move-result v3

    .line 27
    int-to-float v3, v3

    .line 28
    mul-float/2addr v3, v2

    .line 29
    float-to-int v3, v3

    .line 30
    :goto_0
    if-nez v0, :cond_1

    .line 31
    goto :goto_1

    .line 33
    :cond_1
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    .line 34
    move-result v1

    .line 37
    int-to-float v1, v1

    .line 38
    mul-float/2addr v1, v2

    .line 39
    float-to-int v1, v1

    .line 40
    :goto_1
    const/4 v2, 0x1

    .line 41
    invoke-static {v0, v3, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 42
    move-result-object v1

    .line 45
    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    .line 46
    iget-object v4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 48
    iget-object v4, v4, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 50
    const/4 v5, 0x0

    .line 52
    if-eqz v1, :cond_2

    .line 53
    :try_start_0
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v6

    .line 58
    const v7, 0x7f07128b    # @dimen/window_background_blur_radius '15.0dp'

    .line 59
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v6

    .line 65
    invoke-static {v4, v1, v5, v6}, Lmiuix/graphics/BitmapFactory;->fastBlur(Landroid/content/Context;Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    .line 66
    move-result-object v6

    .line 69
    goto :goto_2

    .line 70
    :catch_0
    move-exception v4

    .line 71
    goto :goto_3

    .line 72
    :cond_2
    move-object v6, v5

    .line 73
    :goto_2
    if-eqz v6, :cond_3

    .line 74
    new-instance v7, Landroid/graphics/Canvas;

    .line 76
    invoke-direct {v7, v6}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 78
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 81
    move-result-object v4

    .line 84
    const v8, 0x7f060052    # @color/blur_background_mask '#4d000000'

    .line 85
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getColor(I)I

    .line 88
    move-result v4

    .line 91
    invoke-virtual {v7, v4}, Landroid/graphics/Canvas;->drawColor(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    goto :goto_4

    .line 95
    :goto_3
    const-string v6, "BitmapUtils"

    .line 96
    const-string v7, "getBlurBackground exception: "

    .line 98
    invoke-static {v6, v7, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    goto :goto_5

    .line 103
    :cond_3
    :goto_4
    move-object v5, v6

    .line 104
    :goto_5
    invoke-direct {v3, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    .line 105
    if-eqz v1, :cond_4

    .line 108
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    :cond_4
    if-eqz v0, :cond_5

    .line 113
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 115
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 118
    iput-object v3, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperBlurPreview:Landroid/graphics/drawable/Drawable;

    .line 120
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$5;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 122
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMainHandler:Landroid/os/Handler;

    .line 124
    new-instance v1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;

    .line 126
    invoke-direct {v1, v2, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 131
    invoke-static {}, Ljava/lang/System;->gc()V

    .line 134
    :cond_6
    return-void
    .line 137
.end method
