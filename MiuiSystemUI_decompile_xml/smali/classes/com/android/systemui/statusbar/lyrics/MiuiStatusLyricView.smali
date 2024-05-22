# classes5.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;
.super Landroid/widget/TextView;
.source "MiuiStatusLyricView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "状态栏歌词"


# instance fields
.field public currentColor:I

.field public defaultTextSize:F

.field private iconPackageName:Ljava/lang/String;

.field public isScreenOn:I

.field public lyricAnimation:I

.field mHandler:Landroid/os/Handler;

.field public scaleIn:Landroid/view/animation/TranslateAnimation;

.field public scaleOut:Landroid/view/animation/TranslateAnimation;

.field public showAppIcon:I

.field public showSimpleIcon:I


# direct methods
.method static bridge synthetic -$$Nest$fgeticonPackageName(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;)Ljava/lang/String;
    .registers 1

    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msetLyricTextSize(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;F)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLyricTextSize(F)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setPackageIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5
    .param p1, "context"  # Landroid/content/Context;

    .line 88
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->defaultTextSize:F

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    .line 90
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 6
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;

    .line 98
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->defaultTextSize:F

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 99
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    .line 100
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "attrs"  # Landroid/util/AttributeSet;
    .param p3, "defStyle"  # I

    .line 93
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 48
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    .line 51
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    .line 53
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 55
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->defaultTextSize:F

    .line 58
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    .line 60
    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 235
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    .line 95
    return-void
.end method

.method private static base642Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4
    .param p0, "base64String"  # Ljava/lang/String;

    .line 268
    const/4 v0, 0x0

    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object v1

    .line 269
    .local v1, "bytes":[B
    array-length v2, v1

    invoke-static {v1, v0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method private initLyric(Landroid/content/Context;)V
    .registers 9
    .param p1, "context"  # Landroid/content/Context;

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setMarqueeRepeatLimit(I)V

    .line 144
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setFocusable(Z)V

    .line 145
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getTextSize()F

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->defaultTextSize:F

    .line 148
    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 150
    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->initMediaSessionManager(Landroid/content/Context;)V

    .line 152
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x42be0000  # 95.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 153
    const-wide/16 v4, 0x12c

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 154
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3d380000  # -100.0f

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    .line 155
    const-wide/16 v4, 0xc8

    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_statusbar_lyric_animation"

    const/4 v4, 0x0

    invoke-static {v1, v2, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/statusbar/lyrics/observer/LyricAnimationContentObserver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/systemui/statusbar/lyrics/observer/LyricAnimationContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_statusbar_lyric_textsize"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v1

    .line 165
    .local v1, "textSize":F
    cmpl-float v3, v1, v3

    if-lez v3, :cond_6d

    .line 166
    invoke-virtual {p0, v4, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setTextSize(IF)V

    .line 168
    :cond_6d
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v5, Lcom/android/systemui/statusbar/lyrics/observer/LyricTextSizeContentObserver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/systemui/statusbar/lyrics/observer/LyricTextSizeContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v3, v2, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 172
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_statusbar_lyric_app_icon"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 173
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v5, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;

    iget-object v6, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v5, p1, v6}, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v0, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "system_statusbar_lyric_simple_icon"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/statusbar/lyrics/observer/ShowSimpleIconContentObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/lyrics/observer/ShowSimpleIconContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 182
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 183
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "liming.update.lyric"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 184
    const-string v2, "liming.hide.lyric"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 185
    const-string v2, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 186
    const-string v2, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 187
    new-instance v2, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;

    iget-object v3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v0, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 189
    return-void
.end method

.method private setColor(I)V
    .registers 4
    .param p1, "i2"  # I

    .line 130
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    if-ne v0, p1, :cond_5

    .line 131
    return-void

    .line 133
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    .line 134
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDarkChanged: 颜色切换："

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "状态栏歌词"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setTextColor(I)V

    .line 137
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_42

    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_42

    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    if-ne v0, v1, :cond_42

    .line 138
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 140
    :cond_42
    return-void
.end method

.method private setLyricTextSize(F)V
    .registers 5
    .param p1, "textSize"  # F

    .line 196
    const/4 v0, 0x0

    cmpg-float v1, p1, v0

    if-gez v1, :cond_6

    .line 197
    return-void

    .line 200
    :cond_6
    cmpl-float v1, p1, v0

    const/4 v2, 0x0

    if-nez v1, :cond_11

    .line 201
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->defaultTextSize:F

    invoke-virtual {p0, v2, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setTextSize(IF)V

    goto :goto_18

    .line 202
    :cond_11
    cmpl-float v0, p1, v0

    if-lez v0, :cond_18

    .line 203
    invoke-virtual {p0, v2, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setTextSize(IF)V

    .line 206
    :cond_18
    :goto_18
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_32

    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_32

    .line 207
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 210
    :cond_32
    return-void
.end method

.method private setPackageIcon(Ljava/lang/String;Z)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mustSet"  # Z

    .line 238
    if-nez p1, :cond_3

    return-void

    .line 240
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 241
    .local v0, "isSameLast":Z
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 244
    iget v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    if-nez v1, :cond_10

    return-void

    .line 247
    :cond_10
    if-eqz v0, :cond_14

    if-eqz p2, :cond_1f

    .line 249
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    .line 251
    :cond_1f
    return-void
.end method


# virtual methods
.method public clearPackageIcon()V
    .registers 2

    .line 228
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 229
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawablePadding(I)V

    .line 230
    return-void
.end method

.method public getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 7
    .param p1, "context"  # Landroid/content/Context;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 312
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 313
    sget-object v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricConstant;->APP_ICON_MAP:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    const-string v2, "iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARzQklUCAgICHwIZIgAAAMoSURBVGiB7Zo7aBRBGMd/n1gpgkWiUaIIgo8IMSKCEosQEUFFBREFEaxSxFNsYiXkLH0QW2MhNqKdGjSYQrRREXygBB+QQkUQQfEBEbT5W9xt2Gw22b2d2b1D/FVzO7PffL+Z3ZvZvYP/NBbmO6CkdmAtsApYCLQAv4EPwE0zu++7T4DZrgEkrQe2Ad3AloTmNyPndgEbgSEze+WaSyYkrZc0qNroioqE6m5I6ixSoEnS6RoF0ogEnJY0P2+JA5LeZJRIKyJJzyXtyUui5CBQq0hAf9r8Ut3sku4BXYkN/VOWhJmdSmo4K6mBpGvURyKgLKmc1GhGkWqA/d5Syk5/ksy0ItXrOfU1WgD9kkrTVc40I40kEdAnaUlcRayIpBPU976YjqXAibiKKSKSVgJ9eWfkQEmVbdEk4mbkGNCUfz5O9EQPTBKR1AzsKyyd7PRUr5wJojOyD2guLh8ndoc/RFd2nzf4I+AhcAtYDCzwGBtgF3AmtkbSTw/7qa+SdqXJJMVeK4llQaxZ4aDAPMdRGgO2m9mQY5y0tAWF8D3S7iHwUTN77CFOWtYEBZ8it83sjmOMWmkNCmGR5Y5Bzzmen4WFQSFxG9/gNIzIIl+BwiJ/HGMtznBOh2OfE4RFPjvG6s1wzsrkJjPyKyj4FOmUtDNtY0mHiGwzMvA2KIRFnjkGBTgvaVNSI0nrgAse+nsdF7zVcbsQ8F3S3hkkSpLee+prQxDXIp08BBJHNCVjVN71jlDZMLZQeUe81VP8YTPbEVsjqc/TSBXB4XDu0RlZBowCcz2NWl58Alab2Y/gwKQF0czeAVeKzioDQ2EJiF/ZLxaUjAtTHhOmiJjZUxpb5pKZDUcPxv70JqkVuAusyDurGvkCbDazt9GK2E2jmX0ETuadVQZ64yQSkXS2zl+xYQ46DYGkkXobSBpwkgjJXK2jxFkvEiGZcsECfyQd8SoRkjku6VsBEs8kdeciEZLpkHQ9J4FxVWZ+Tq4SEaFuSZc9Sgyq8pxSHyS1VUdxNEPyTyQNKOb3jlrx+qcaSW1U3v61UXkGaWby2/1x4AXwEnhQXXj/80/yFxO3SSfTTsqKAAAAAElFTkSuQmCC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 314
    .local v0, "base64Icon":Ljava/lang/String;
    new-instance v1, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->base642Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object v1

    .line 317
    .end local v0  # "base64Icon":Ljava/lang/String;
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 318
    .local v0, "packageManager":Landroid/content/pm/PackageManager;
    const/16 v1, 0x80

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 319
    .local v1, "packageInfo":Landroid/content/pm/PackageInfo;
    iget-object v2, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_30

    return-object v2

    .line 320
    .end local v0  # "packageManager":Landroid/content/pm/PackageManager;
    .end local v1  # "packageInfo":Landroid/content/pm/PackageInfo;
    :catch_30
    move-exception v0

    .line 321
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 324
    .end local v0  # "e":Ljava/lang/Exception;
    const/4 v0, 0x0

    return-object v0
.end method

.method public isFocused()Z
    .registers 2

    .line 104
    const/4 v0, 0x1

    return v0
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .registers 8
    .param p2, "f"  # F
    .param p3, "i"  # I
    .param p4, "i2"  # I
    .param p5, "i3"  # I
    .param p6, "z"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;FIIIZ)V"
        }
    .end annotation

    .line 115
    .local p1, "arrayList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/graphics/Rect;>;"
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_15

    .line 116
    if-eqz p6, :cond_c

    .line 117
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    .line 118
    return-void

    .line 120
    :cond_c
    const/4 v0, 0x0

    cmpl-float v0, p2, v0

    if-lez v0, :cond_15

    .line 121
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    .line 122
    return-void

    .line 125
    :cond_15
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    .line 126
    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4
    .param p1, "focused"  # Z
    .param p2, "direction"  # I
    .param p3, "previouslyFocusedRect"  # Landroid/graphics/Rect;

    .line 110
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    .line 111
    return-void
.end method

.method public setAnimationText(Ljava/lang/String;)V
    .registers 4
    .param p1, "lyric"  # Ljava/lang/String;

    .line 277
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 278
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    .line 279
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    return-void

    .line 283
    :cond_11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_20

    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_20

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    .line 287
    :cond_20
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    if-eqz v0, :cond_39

    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    if-nez v0, :cond_29

    goto :goto_39

    .line 292
    :cond_29
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 307
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 308
    return-void

    .line 288
    :cond_39
    :goto_39
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setText(Ljava/lang/CharSequence;)V

    .line 289
    return-void
.end method

.method setLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5
    .param p1, "drawable"  # Landroid/graphics/drawable/Drawable;

    .line 254
    if-eqz p1, :cond_24

    .line 255
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 256
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 260
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 261
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 262
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawablePadding(I)V

    .line 264
    :cond_24
    return-void
.end method

.method setScreenOn(I)V
    .registers 4
    .param p1, "screenOn"  # I

    .line 213
    iput p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    .line 214
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setScreenOn: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "状态栏歌词"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->isScreenOn:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2e

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2e

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    goto :goto_33

    .line 218
    :cond_2e
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    .line 220
    :goto_33
    return-void
.end method
