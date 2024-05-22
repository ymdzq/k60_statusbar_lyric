.class public final Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController;


# instance fields
.field public appIconCleared:Z

.field public appIconsManager:Lcom/miui/systemui/graphics/AppIconsManager;

.field public final context:Landroid/content/Context;

.field public density:I

.field public fontScale:F

.field public final inCarMode:Z

.field public iterating:Z

.field public final lastConfig:Landroid/content/res/Configuration;

.field public layoutDirection:I

.field public final listeners:Ljava/util/List;

.field public localeList:Landroid/os/LocaleList;

.field public final mainHandler:Landroid/os/Handler;

.field public final maxBounds:Landroid/graphics/Rect;

.field public screenLayoutSize:I

.field public smallestScreenWidth:I

.field public themeChanged:I

.field public uiMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 10
    new-instance v0, Landroid/content/res/Configuration;

    .line 12
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    .line 17
    new-instance v0, Landroid/graphics/Rect;

    .line 19
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->maxBounds:Landroid/graphics/Rect;

    .line 24
    new-instance v1, Landroid/os/Handler;

    .line 26
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 28
    move-result-object v2

    .line 31
    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 32
    iput-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mainHandler:Landroid/os/Handler;

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 41
    move-result-object v1

    .line 44
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    .line 45
    iget p1, v1, Landroid/content/res/Configuration;->fontScale:F

    .line 47
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 49
    iget p1, v1, Landroid/content/res/Configuration;->densityDpi:I

    .line 51
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 53
    iget p1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 55
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    .line 57
    iget-object p1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 59
    invoke-virtual {p1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 61
    move-result-object p1

    .line 64
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 65
    iget p1, v1, Landroid/content/res/Configuration;->uiMode:I

    .line 68
    and-int/lit8 v0, p1, 0xf

    .line 70
    const/4 v2, 0x3

    .line 72
    if-ne v0, v2, :cond_0

    .line 73
    const/4 v0, 0x1

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    .line 78
    and-int/lit8 p1, p1, 0x30

    .line 80
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 82
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 84
    move-result-object p1

    .line 87
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 88
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 90
    move-result p1

    .line 93
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 94
    invoke-virtual {v1}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    .line 96
    move-result-object p1

    .line 99
    instance-of v0, p1, Landroid/content/res/MiuiConfiguration;

    .line 100
    if-eqz v0, :cond_1

    .line 102
    check-cast p1, Landroid/content/res/MiuiConfiguration;

    .line 104
    iget p1, p1, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 106
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->themeChanged:I

    .line 108
    :cond_1
    return-void
    .line 110
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$addCallback$1;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$addCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->runOrPost(Lkotlin/jvm/functions/Function0;)Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    const-string p1, "post add callback "

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    const-string p1, "ConfigController"

    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 11

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->appIconCleared:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->listeners:Ljava/util/List;

    .line 5
    new-instance v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$1;

    .line 7
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$1;-><init>(Landroid/content/res/Configuration;)V

    .line 9
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 12
    iget v2, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 15
    iget v3, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 17
    iget v4, p1, Landroid/content/res/Configuration;->uiMode:I

    .line 19
    and-int/lit8 v4, v4, 0x30

    .line 21
    iget v5, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 23
    const/4 v6, 0x1

    .line 25
    if-eq v4, v5, :cond_0

    .line 26
    move v5, v6

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    move v5, v0

    .line 30
    :goto_0
    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 31
    const/4 v8, 0x0

    .line 33
    if-ne v3, v7, :cond_2

    .line 34
    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 36
    cmpg-float v7, v2, v7

    .line 38
    if-nez v7, :cond_1

    .line 40
    move v7, v6

    .line 42
    goto :goto_1

    .line 43
    :cond_1
    move v7, v0

    .line 44
    :goto_1
    if-eqz v7, :cond_2

    .line 45
    iget-boolean v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->inCarMode:Z

    .line 47
    if-eqz v7, :cond_6

    .line 49
    if-eqz v5, :cond_6

    .line 51
    :cond_2
    iget-object v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->appIconsManager:Lcom/miui/systemui/graphics/AppIconsManager;

    .line 53
    if-eqz v7, :cond_3

    .line 55
    goto :goto_2

    .line 57
    :cond_3
    move-object v7, v8

    .line 58
    :goto_2
    invoke-virtual {v7}, Lcom/miui/systemui/graphics/AppIconsManager;->clearAll()V

    .line 59
    iput-boolean v6, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->appIconCleared:Z

    .line 62
    iget v7, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 64
    if-eq v3, v7, :cond_4

    .line 66
    move v7, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_4
    move v7, v0

    .line 70
    :goto_3
    iget v9, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 71
    cmpg-float v9, v2, v9

    .line 73
    if-nez v9, :cond_5

    .line 75
    move v9, v6

    .line 77
    goto :goto_4

    .line 78
    :cond_5
    move v9, v0

    .line 79
    :goto_4
    xor-int/2addr v9, v6

    .line 80
    new-instance v10, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$2;

    .line 81
    invoke-direct {v10, v7, v9}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$2;-><init>(ZZ)V

    .line 83
    invoke-virtual {p0, v1, v10}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 86
    iput v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->density:I

    .line 89
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->fontScale:F

    .line 91
    :cond_6
    iget v2, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 93
    iget v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    .line 95
    if-eq v2, v3, :cond_7

    .line 97
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->smallestScreenWidth:I

    .line 99
    sget-object v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$3;->INSTANCE:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$3;

    .line 101
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 103
    :cond_7
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 106
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 108
    move-result-object v2

    .line 111
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->maxBounds:Landroid/graphics/Rect;

    .line 112
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 114
    move-result v7

    .line 117
    if-nez v7, :cond_9

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Rect;->width()I

    .line 120
    move-result v7

    .line 123
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    .line 124
    move-result v9

    .line 127
    if-ne v7, v9, :cond_8

    .line 128
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    .line 130
    move-result v7

    .line 133
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    .line 134
    move-result v9

    .line 137
    if-ne v7, v9, :cond_8

    .line 138
    move v7, v6

    .line 140
    goto :goto_5

    .line 141
    :cond_8
    move v7, v0

    .line 142
    :goto_5
    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 143
    new-instance v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$4;

    .line 146
    invoke-direct {v2, v7}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$4;-><init>(Z)V

    .line 148
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 151
    :cond_9
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 154
    move-result-object v2

    .line 157
    iget-object v3, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 158
    invoke-static {v2, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 160
    move-result v3

    .line 163
    if-nez v3, :cond_a

    .line 164
    iput-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->localeList:Landroid/os/LocaleList;

    .line 166
    sget-object v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$5;->INSTANCE:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$5;

    .line 168
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 170
    :cond_a
    if-eqz v5, :cond_b

    .line 173
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->context:Landroid/content/Context;

    .line 175
    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 177
    move-result-object v3

    .line 180
    invoke-virtual {v2}, Landroid/content/Context;->getThemeResId()I

    .line 181
    move-result v2

    .line 184
    invoke-virtual {v3, v2, v6}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 185
    iput v4, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->uiMode:I

    .line 188
    sget-object v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$6;->INSTANCE:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$6;

    .line 190
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 192
    :cond_b
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 195
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 197
    move-result v3

    .line 200
    if-eq v2, v3, :cond_c

    .line 201
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLayoutDirection()I

    .line 203
    move-result v2

    .line 206
    iput v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->layoutDirection:I

    .line 207
    new-instance v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$7;

    .line 209
    invoke-direct {v2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$7;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;)V

    .line 211
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 214
    :cond_c
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->lastConfig:Landroid/content/res/Configuration;

    .line 217
    invoke-virtual {v2, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 219
    move-result v2

    .line 222
    const/high16 v3, -0x80000000

    .line 223
    and-int/2addr v3, v2

    .line 225
    if-eqz v3, :cond_d

    .line 226
    sget-object v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$8;->INSTANCE:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$8;

    .line 228
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 230
    :cond_d
    sget v3, Lcom/miui/systemui/util/MiBlurCompat;->CONFIG_BLUR:I

    .line 233
    and-int/2addr v2, v3

    .line 235
    if-eqz v2, :cond_e

    .line 236
    new-instance v2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$9;

    .line 238
    invoke-direct {v2, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onConfigurationChanged$9;-><init>(Landroid/content/res/Configuration;)V

    .line 240
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 243
    :cond_e
    sget-boolean v2, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 246
    new-instance v2, Ljava/io/File;

    .line 248
    const-string v3, "/data/system/theme/com.android.systemui"

    .line 250
    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 252
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    .line 255
    move-result v2

    .line 258
    xor-int/2addr v2, v6

    .line 259
    sput-boolean v2, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 260
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getExtraConfig()Landroid/content/res/IMiuiConfiguration;

    .line 262
    move-result-object v2

    .line 265
    instance-of v3, v2, Landroid/content/res/MiuiConfiguration;

    .line 266
    if-eqz v3, :cond_f

    .line 268
    check-cast v2, Landroid/content/res/MiuiConfiguration;

    .line 270
    iget v0, v2, Landroid/content/res/MiuiConfiguration;->themeChanged:I

    .line 272
    :cond_f
    iget v2, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->themeChanged:I

    .line 274
    if-eq v0, v2, :cond_12

    .line 276
    iput v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->themeChanged:I

    .line 278
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->appIconCleared:Z

    .line 280
    if-nez v0, :cond_11

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->appIconsManager:Lcom/miui/systemui/graphics/AppIconsManager;

    .line 284
    if-eqz v0, :cond_10

    .line 286
    move-object v8, v0

    .line 288
    :cond_10
    invoke-virtual {v8}, Lcom/miui/systemui/graphics/AppIconsManager;->clearAll()V

    .line 289
    :cond_11
    sget-boolean v0, Lcom/miui/utils/MiuiThemeUtils;->sDefaultSysUiTheme:Z

    .line 292
    invoke-static {}, Lcom/miui/systemui/util/CommonUtil;->isDefaultLockScreenTheme()Z

    .line 294
    move-result v2

    .line 297
    new-instance v3, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;

    .line 298
    invoke-direct {v3, v2, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onMiuiThemeChanged$1;-><init>(ZZ)V

    .line 300
    invoke-virtual {p0, v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 303
    :cond_12
    iget p1, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 306
    or-int/lit8 p1, p1, 0xf

    .line 308
    iget v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->screenLayoutSize:I

    .line 310
    if-eq p1, v0, :cond_13

    .line 312
    iput p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->screenLayoutSize:I

    .line 314
    sget-object p1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onScreenLayoutSizeChanged$1;->INSTANCE:Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$onScreenLayoutSizeChanged$1;

    .line 316
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V

    .line 318
    :cond_13
    return-void
    .line 321
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$removeCallback$1;

    .line 4
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$removeCallback$1;-><init>(Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;)V

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->runOrPost(Lkotlin/jvm/functions/Function0;)Z

    .line 9
    move-result p0

    .line 12
    if-nez p0, :cond_0

    .line 13
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    const-string p1, "post remove callback "

    .line 23
    invoke-virtual {p1, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    const-string p1, "ConfigController"

    .line 29
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final runOrPost(Lkotlin/jvm/functions/Function0;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->mainHandler:Landroid/os/Handler;

    .line 2
    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/os/Looper;->isCurrentThread()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->iterating:Z

    .line 14
    if-nez p0, :cond_0

    .line 16
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 18
    const/4 p0, 0x1

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    new-instance p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$sam$java_lang_Runnable$0;

    .line 23
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl$sam$java_lang_Runnable$0;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 25
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 28
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0
    .line 32
.end method

.method public final safeForEach(Ljava/util/Collection;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->iterating:Z

    .line 3
    check-cast p1, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p1

    .line 10
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    invoke-interface {p2, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    const/4 p1, 0x0

    .line 25
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->iterating:Z

    .line 26
    return-void
    .line 28
.end method
