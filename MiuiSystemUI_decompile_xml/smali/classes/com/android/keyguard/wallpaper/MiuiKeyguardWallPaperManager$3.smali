.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;
.super Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    invoke-direct {p0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerCallback$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPartColorComputeComplete(Ljava/util/Map;Ljava/util/Map;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    const/4 v1, 0x1

    .line 4
    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperUpdateColor:Z

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    .line 7
    const-string v1, "partDeepMap:"

    .line 9
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    const-string v1, "MiuiKeyguardWallPaperManager"

    .line 21
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 26
    if-eqz v0, :cond_0

    .line 28
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 35
    const-string v2, "onPartColorComputeComplete: clockColorMap:"

    .line 37
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    const-string v2, "clock_style_rect"

    .line 42
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 58
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 60
    new-instance v0, Ljava/lang/StringBuilder;

    .line 63
    const-string v2, "onPartColorComputeComplete: magazineScriptColorMap:"

    .line 65
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 67
    const-string v2, "magazine_script_rect"

    .line 70
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object v0

    .line 82
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 86
    iput-object p1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mColorMap:Ljava/util/Map;

    .line 88
    iput-object p2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mPartDeepMap:Ljava/util/Map;

    .line 90
    iget-object p1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 92
    if-nez p1, :cond_1

    .line 94
    new-instance p1, Ljava/util/HashMap;

    .line 96
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 98
    iput-object p1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mFilterColorMap:Ljava/util/Map;

    .line 101
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 103
    invoke-virtual {p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->updateColorAndDeep()V

    .line 105
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 108
    const/4 p1, 0x0

    .line 110
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperUpdateColor:Z

    .line 111
    return-void
    .line 113
.end method

.method public final onWallpaperChanged(Landroid/app/WallpaperColors;Ljava/lang/String;I)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 4
    if-eqz v0, :cond_5

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 10
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 12
    move-result v1

    .line 15
    const-string v2, "MiuiWallpaperManager"

    .line 16
    if-eqz v1, :cond_0

    .line 18
    :try_start_0
    iget-object v1, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 20
    check-cast v1, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 22
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 24
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 27
    move-result-object v3

    .line 30
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    .line 31
    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :try_start_1
    const-string v5, "com.miui.miwallpaper.IMiuiWallpaperManagerService"

    .line 35
    invoke-virtual {v3, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 37
    iget-object v1, v1, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 40
    const/4 v5, 0x1

    .line 42
    const/4 v6, 0x0

    .line 43
    invoke-interface {v1, v5, v3, v4, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 44
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 47
    invoke-virtual {v4}, Landroid/os/Parcel;->readFloat()F

    .line 50
    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 53
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 54
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 57
    goto :goto_0

    .line 60
    :catchall_0
    move-exception v1

    .line 61
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 62
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 65
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 68
    :catchall_1
    move-exception v1

    .line 69
    const-string v3, "getMiuiWallpaperSdkVersion fail : "

    .line 70
    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :cond_0
    const/4 v1, 0x0

    .line 75
    :goto_0
    const/high16 v3, 0x3f800000    # 1.0f

    .line 76
    cmpg-float v1, v1, v3

    .line 78
    const-string v4, "#80000000"

    .line 80
    if-gtz v1, :cond_3

    .line 82
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 84
    move-result v1

    .line 87
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getMiuiWallpaperPreview()Landroid/graphics/Bitmap;

    .line 88
    move-result-object v0

    .line 91
    if-nez v0, :cond_1

    .line 92
    goto/16 :goto_2

    .line 94
    :cond_1
    invoke-static {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->getFastBlurColor(Landroid/graphics/Bitmap;)I

    .line 96
    move-result v0

    .line 99
    const/4 v2, -0x1

    .line 100
    if-ne v0, v2, :cond_2

    .line 101
    goto :goto_2

    .line 103
    :cond_2
    invoke-static {v0}, Landroid/graphics/Color;->alpha(I)I

    .line 104
    move-result v2

    .line 107
    int-to-float v2, v2

    .line 108
    const/high16 v4, 0x437f0000    # 255.0f

    .line 109
    div-float/2addr v2, v4

    .line 111
    invoke-static {v1}, Landroid/graphics/Color;->alpha(I)I

    .line 112
    move-result v5

    .line 115
    int-to-float v5, v5

    .line 116
    div-float/2addr v5, v4

    .line 117
    add-float v6, v2, v5

    .line 118
    mul-float v7, v2, v5

    .line 120
    sub-float/2addr v6, v7

    .line 122
    mul-float/2addr v4, v6

    .line 123
    float-to-int v4, v4

    .line 124
    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    .line 125
    move-result v7

    .line 128
    int-to-float v7, v7

    .line 129
    mul-float/2addr v7, v2

    .line 130
    sub-float/2addr v3, v5

    .line 131
    mul-float/2addr v7, v3

    .line 132
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    .line 133
    move-result v8

    .line 136
    int-to-float v8, v8

    .line 137
    mul-float/2addr v8, v5

    .line 138
    add-float/2addr v8, v7

    .line 139
    div-float/2addr v8, v6

    .line 140
    float-to-int v7, v8

    .line 141
    invoke-static {v0}, Landroid/graphics/Color;->green(I)I

    .line 142
    move-result v8

    .line 145
    int-to-float v8, v8

    .line 146
    mul-float/2addr v8, v2

    .line 147
    mul-float/2addr v8, v3

    .line 148
    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    .line 149
    move-result v9

    .line 152
    int-to-float v9, v9

    .line 153
    mul-float/2addr v9, v5

    .line 154
    add-float/2addr v9, v8

    .line 155
    div-float/2addr v9, v6

    .line 156
    float-to-int v8, v9

    .line 157
    invoke-static {v0}, Landroid/graphics/Color;->blue(I)I

    .line 158
    move-result v0

    .line 161
    int-to-float v0, v0

    .line 162
    mul-float/2addr v0, v2

    .line 163
    mul-float/2addr v0, v3

    .line 164
    invoke-static {v1}, Landroid/graphics/Color;->blue(I)I

    .line 165
    move-result v1

    .line 168
    int-to-float v1, v1

    .line 169
    mul-float/2addr v1, v5

    .line 170
    add-float/2addr v1, v0

    .line 171
    div-float/2addr v1, v6

    .line 172
    float-to-int v0, v1

    .line 173
    invoke-static {v4, v7, v8, v0}, Landroid/graphics/Color;->argb(IIII)I

    .line 174
    move-result v1

    .line 177
    goto :goto_2

    .line 178
    :cond_3
    invoke-virtual {v0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->isServiceReady()Z

    .line 179
    move-result v1

    .line 182
    if-eqz v1, :cond_4

    .line 183
    sget-boolean v1, Lcom/miui/miwallpaper/MiuiWallpaperManager;->IS_FOLD_DEVICE:Z

    .line 185
    :try_start_3
    iget-object v0, v0, Lcom/miui/miwallpaper/MiuiWallpaperManager;->mService:Lcom/miui/miwallpaper/IMiuiWallpaperManagerService;

    .line 187
    check-cast v0, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;

    .line 189
    invoke-virtual {v0}, Lcom/miui/miwallpaper/IMiuiWallpaperManagerService$Stub$Proxy;->getWallpaperBlurColor()I

    .line 191
    move-result v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 194
    goto :goto_1

    .line 195
    :catchall_2
    move-exception v0

    .line 196
    const-string v1, "getMiuiWallpaperColors fail : "

    .line 197
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_4
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 202
    move-result v0

    .line 205
    :goto_1
    move v1, v0

    .line 206
    goto :goto_2

    .line 207
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 208
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mContext:Landroid/content/Context;

    .line 210
    const v1, 0x7f060052    # @color/blur_background_mask '#4d000000'

    .line 212
    invoke-virtual {v0, v1}, Landroid/content/Context;->getColor(I)I

    .line 215
    move-result v1

    .line 218
    :goto_2
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 219
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 221
    new-instance v0, Ljava/lang/StringBuilder;

    .line 224
    const-string v2, "onWallpaperChanged type="

    .line 226
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 228
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    const-string v2, ";color="

    .line 234
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 236
    if-nez p1, :cond_6

    .line 239
    const-string/jumbo v2, "unknown"

    .line 241
    goto :goto_3

    .line 244
    :cond_6
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    .line 245
    move-result v2

    .line 248
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 249
    move-result-object v2

    .line 252
    :goto_3
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 253
    const-string v2, ";which="

    .line 256
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 258
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 261
    const-string p3, ";blurColor="

    .line 264
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 266
    const-string p3, "MiuiKeyguardWallPaperManager"

    .line 269
    invoke-static {v0, v1, p3}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 271
    iget-object p3, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 274
    iget-object p3, p3, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mMainHandler:Landroid/os/Handler;

    .line 276
    new-instance v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;

    .line 278
    invoke-direct {v0, p0, p2, v1, p1}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;-><init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;Ljava/lang/String;ILandroid/app/WallpaperColors;)V

    .line 280
    invoke-virtual {p3, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 283
    return-void
    .line 286
.end method
