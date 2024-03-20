.class public final Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAnimItemMap:Ljava/util/Map;

.field public mBouncer:Z

.field public final mContentObserver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;

.field public final mContext:Landroid/content/Context;

.field public mEnrolling:Z

.field public mGxzwAnimType:I

.field public mKeyguardAuthen:Z

.field public mLightIcon:Z

.field public mLightWallpaperGxzw:Z

.field public final mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x6

    .line 5
    iput v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 6
    const/4 v1, 0x0

    .line 8
    iput-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 9
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;

    .line 11
    new-instance v3, Landroid/os/Handler;

    .line 13
    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    .line 15
    invoke-direct {v2, p0, v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;Landroid/os/Handler;)V

    .line 18
    iput-object v2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mContentObserver:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;

    .line 21
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mContext:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mMiuiGxzwFrameAnimation:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 25
    new-instance p2, Ljava/util/HashMap;

    .line 27
    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 32
    sget-boolean p0, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 34
    const/16 v3, 0x8

    .line 36
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v3

    .line 41
    if-eqz p0, :cond_0

    .line 42
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;

    .line 44
    invoke-direct {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;-><init>()V

    .line 46
    invoke-virtual {p2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    goto :goto_0

    .line 52
    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 53
    move-result-object p0

    .line 56
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemNone;

    .line 57
    invoke-direct {v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemNone;-><init>()V

    .line 59
    invoke-virtual {p2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 65
    move-result-object p0

    .line 68
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemLight;

    .line 69
    invoke-direct {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemLight;-><init>()V

    .line 71
    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const/4 p0, 0x7

    .line 77
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 78
    move-result-object v0

    .line 81
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemStar;

    .line 82
    invoke-direct {v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemStar;-><init>()V

    .line 84
    invoke-virtual {p2, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;

    .line 90
    invoke-direct {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAinmItemAurora;-><init>()V

    .line 92
    invoke-virtual {p2, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const/16 v0, 0x9

    .line 98
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 100
    move-result-object v4

    .line 103
    new-instance v5, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemPulse;

    .line 104
    invoke-direct {v5}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemPulse;-><init>()V

    .line 106
    invoke-virtual {p2, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 112
    move-result v4

    .line 115
    if-eqz v4, :cond_1

    .line 116
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 118
    move-result-object p0

    .line 121
    new-instance v4, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemStarHFR;

    .line 122
    invoke-direct {v4}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemStarHFR;-><init>()V

    .line 124
    invoke-virtual {p2, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    new-instance p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemDream;

    .line 130
    invoke-direct {p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemDream;-><init>()V

    .line 132
    invoke-virtual {p2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 138
    move-result-object p0

    .line 141
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemIris;

    .line 142
    invoke-direct {v0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItemIris;-><init>()V

    .line 144
    invoke-virtual {p2, p0, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 150
    move-result-object p0

    .line 153
    const-string p1, "fod_animation_type"

    .line 154
    invoke-static {p1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 156
    move-result-object p1

    .line 159
    invoke-virtual {p0, p1, v1, v2, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 160
    invoke-virtual {v2, v1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$1;->onChange(Z)V

    .line 163
    return-void
    .line 166
.end method


# virtual methods
.method public final getFalseTipTranslationY(Landroid/content/Context;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 2
    iget p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 4
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    move-result-object p0

    .line 9
    check-cast v0, Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;

    .line 16
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object p0

    .line 24
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    const p1, 0x7f0703b6    # @dimen/gxzw_normal_false_tip_translation_y_low '15.06dp'

    .line 31
    goto :goto_0

    .line 34
    :cond_0
    const p1, 0x7f0703b5    # @dimen/gxzw_normal_false_tip_translation_y '0.0dp'

    .line 35
    :goto_0
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 38
    move-result p0

    .line 41
    return p0
    .line 42
.end method

.method public final getFingerIconResource(Z)I
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "getFingerIconResource: mKeyguardAuthen = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", mLightWallpaperGxzw = "

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", mEnrolling = "

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", mLightIcon = "

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    const-string v1, "MiuiGxzwAnimManager"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    if-eqz p1, :cond_0

    .line 53
    const p0, 0x7f080c86    # @drawable/finger_circle_image_aod 'res/drawable/finger_circle_image_aod.webp'

    .line 55
    return p0

    .line 58
    :cond_0
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 59
    if-eqz p1, :cond_3

    .line 61
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 63
    if-eqz p1, :cond_1

    .line 65
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mBouncer:Z

    .line 67
    if-nez p0, :cond_1

    .line 69
    const/4 p0, 0x1

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const/4 p0, 0x0

    .line 73
    :goto_0
    if-eqz p0, :cond_2

    .line 74
    const p0, 0x7f080c87    # @drawable/finger_circle_image_light 'res/drawable/finger_circle_image_light.webp'

    .line 76
    return p0

    .line 79
    :cond_2
    const p0, 0x7f080c88    # @drawable/finger_circle_image_normal 'res/drawable/finger_circle_image_normal.png'

    .line 80
    return p0

    .line 83
    :cond_3
    iget-boolean p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mEnrolling:Z

    .line 84
    const v0, 0x7f080c8b    # @drawable/finger_image_normal 'res/drawable/finger_image_normal.webp'

    .line 86
    if-eqz p1, :cond_4

    .line 89
    return v0

    .line 91
    :cond_4
    iget-boolean p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightIcon:Z

    .line 92
    if-eqz p0, :cond_5

    .line 94
    goto :goto_1

    .line 96
    :cond_5
    const v0, 0x7f080c89    # @drawable/finger_image_grey 'res/drawable/finger_image_grey.webp'

    .line 97
    :goto_1
    return v0
    .line 100
.end method

.method public final getRecognizingAnimArgs(Z)Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mAnimItemMap:Ljava/util/Map;

    .line 4
    iget v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mGxzwAnimType:I

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v2

    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;

    .line 18
    if-nez v1, :cond_0

    .line 20
    const/4 v4, 0x0

    .line 22
    const/4 v3, 0x0

    .line 23
    const/4 v12, 0x0

    .line 24
    const/16 v6, 0x1e

    .line 25
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .line 27
    move-object v2, v0

    .line 29
    move v5, v12

    .line 30
    move v7, v12

    .line 31
    move v8, v12

    .line 32
    move v9, v12

    .line 33
    move v10, v12

    .line 34
    move v11, v12

    .line 35
    invoke-direct/range {v2 .. v12}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIIZZII)V

    .line 36
    return-object v0

    .line 39
    :cond_0
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mLightWallpaperGxzw:Z

    .line 40
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x1

    .line 43
    if-eqz v2, :cond_1

    .line 44
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mBouncer:Z

    .line 46
    if-nez v2, :cond_1

    .line 48
    move v2, v4

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    move v2, v3

    .line 52
    :goto_0
    if-eqz v2, :cond_2

    .line 53
    iget-boolean v2, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->mKeyguardAuthen:Z

    .line 55
    if-eqz v2, :cond_2

    .line 57
    move v3, v4

    .line 59
    :cond_2
    if-eqz p1, :cond_3

    .line 60
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mAodRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 62
    goto :goto_1

    .line 64
    :cond_3
    if-eqz v3, :cond_4

    .line 65
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mLightRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 67
    goto :goto_1

    .line 69
    :cond_4
    iget-object v1, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimItem;->mNormalRecognizing:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;

    .line 70
    :goto_1
    const/4 v7, 0x0

    .line 72
    iget-object v6, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mRes:[I

    .line 73
    iget-boolean v8, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mRepeat:Z

    .line 75
    iget v9, v1, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimRes;->mFrameInterval:I

    .line 77
    sget-boolean v1, Lcom/miui/interfaces/IHapticFeedBack;->IS_SUPPORT_V2_HAPTIC_VERSION:Z

    .line 79
    xor-int/lit8 v12, v1, 0x1

    .line 81
    const/4 v14, 0x0

    .line 83
    const/4 v15, 0x0

    .line 84
    invoke-virtual/range {p0 .. p1}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager;->getFingerIconResource(Z)I

    .line 85
    move-result v10

    .line 88
    const/4 v11, 0x6

    .line 89
    new-instance v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;

    .line 90
    move-object v5, v0

    .line 92
    move/from16 v13, p1

    .line 93
    invoke-direct/range {v5 .. v15}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwAnimManager$MiuiGxzwAnimArgs;-><init>([IIZIIIZZII)V

    .line 95
    return-object v0
    .line 98
.end method
