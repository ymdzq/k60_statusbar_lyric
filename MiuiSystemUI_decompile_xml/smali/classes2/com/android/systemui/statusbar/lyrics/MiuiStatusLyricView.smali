# classes.dex

.class public Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;
.super Landroid/widget/TextView;
.source "MiuiStatusLyricView.java"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "状态栏歌词"


# instance fields
.field public currentColor:I

.field private iconPackageName:Ljava/lang/String;

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

.method static bridge synthetic -$$Nest$msetPackageIcon(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setPackageIcon(Ljava/lang/String;Z)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 5

    .line 83
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 47
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    const/4 v1, -0x1

    .line 50
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    const/4 v1, 0x0

    .line 52
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 53
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 54
    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 84
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 5

    .line 93
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    const/4 v0, -0x1

    .line 50
    iput v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    const/4 v0, 0x0

    .line 52
    iput v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 53
    iput v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 54
    iput v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 94
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .registers 5

    .line 88
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x0

    .line 46
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    .line 47
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    const/4 p3, -0x1

    .line 50
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    const/4 p3, 0x0

    .line 52
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 53
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 54
    iput p3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 56
    new-instance p3, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p3, p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$1;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Landroid/os/Looper;)V

    iput-object p3, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    .line 182
    iput-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 89
    invoke-direct {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->initLyric(Landroid/content/Context;)V

    return-void
.end method

.method private static base642Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 3

    const/4 v0, 0x0

    .line 215
    invoke-static {p0, v0}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    move-result-object p0

    .line 216
    array-length v1, p0

    invoke-static {p0, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private initLyric(Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x1

    .line 138
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setMarqueeRepeatLimit(I)V

    .line 139
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setFocusable(Z)V

    .line 140
    sget-object v1, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    const-class v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-static {v1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/plugins/DarkIconDispatcher;

    invoke-interface {v1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->addDarkReceiver(Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;)V

    .line 145
    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusBarLyricManager;->initMediaSessionManager(Landroid/content/Context;)V

    .line 147
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, 0x42be0000  # 95.0f

    const/4 v3, 0x0

    invoke-direct {v1, v3, v3, v2, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleIn:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v4, 0x12c

    .line 148
    invoke-virtual {v1, v4, v5}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 149
    new-instance v1, Landroid/view/animation/TranslateAnimation;

    const/high16 v2, -0x3d380000  # -100.0f

    invoke-direct {v1, v3, v3, v3, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    iput-object v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    const-wide/16 v2, 0xc8

    .line 150
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V

    .line 153
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_statusbar_lyric_animation"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    .line 154
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/statusbar/lyrics/observer/LyricAnimationContentObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/lyrics/observer/LyricAnimationContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 158
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_statusbar_lyric_app_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    .line 159
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v4, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;

    iget-object v5, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v4, p1, v5}, Lcom/android/systemui/statusbar/lyrics/observer/ShowAppIconContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "system_statusbar_lyric_simple_icon"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-static {v2}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Lcom/android/systemui/statusbar/lyrics/observer/ShowSimpleIconContentObserver;

    iget-object v4, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v3, p1, v4}, Lcom/android/systemui/statusbar/lyrics/observer/ShowSimpleIconContentObserver;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 167
    new-instance v0, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;

    iget-object p0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/lyrics/MiuiLyricBroadcastReceiver;-><init>(Landroid/os/Handler;)V

    new-instance p0, Landroid/content/IntentFilter;

    const-string v1, "liming.lyric"

    invoke-direct {p0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v0, p0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private setColor(I)V
    .registers 4

    .line 125
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    if-ne v0, p1, :cond_5

    return-void

    .line 128
    :cond_5
    iput p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    .line 129
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onDarkChanged: 颜色切换："

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "状态栏歌词"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setTextColor(I)V

    .line 132
    iget p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_3f

    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3f

    iget p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    if-ne p1, v0, :cond_3f

    .line 133
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_3f
    return-void
.end method

.method private setPackageIcon(Ljava/lang/String;Z)V
    .registers 5

    if-nez p1, :cond_3

    return-void

    .line 187
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    iput-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    .line 191
    iget v1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showAppIcon:I

    if-nez v1, :cond_10

    return-void

    :cond_10
    if-eqz v0, :cond_14

    if-eqz p2, :cond_1f

    .line 196
    :cond_14
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setLeftIcon(Landroid/graphics/drawable/Drawable;)V

    :cond_1f
    return-void
.end method


# virtual methods
.method public clearPackageIcon()V
    .registers 2

    const/4 v0, 0x0

    .line 175
    invoke-virtual {p0, v0, v0, v0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    .line 176
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawablePadding(I)V

    return-void
.end method

.method public getAppIcon(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .registers 5

    .line 258
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1f

    .line 259
    sget-object p1, Lcom/android/systemui/statusbar/lyrics/MiuiLyricConstant;->APP_ICON_MAP:Ljava/util/Map;

    iget-object p2, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->iconPackageName:Ljava/lang/String;

    const-string v0, "iVBORw0KGgoAAAANSUhEUgAAADIAAAAyCAYAAAAeP4ixAAAAAXNSR0IArs4c6QAAAARzQklUCAgICHwIZIgAAAMoSURBVGiB7Zo7aBRBGMd/n1gpgkWiUaIIgo8IMSKCEosQEUFFBREFEaxSxFNsYiXkLH0QW2MhNqKdGjSYQrRREXygBB+QQkUQQfEBEbT5W9xt2Gw22b2d2b1D/FVzO7PffL+Z3ZvZvYP/NBbmO6CkdmAtsApYCLQAv4EPwE0zu++7T4DZrgEkrQe2Ad3AloTmNyPndgEbgSEze+WaSyYkrZc0qNroioqE6m5I6ixSoEnS6RoF0ogEnJY0P2+JA5LeZJRIKyJJzyXtyUui5CBQq0hAf9r8Ut3sku4BXYkN/VOWhJmdSmo4K6mBpGvURyKgLKmc1GhGkWqA/d5Syk5/ksy0ItXrOfU1WgD9kkrTVc40I40kEdAnaUlcRayIpBPU976YjqXAibiKKSKSVgJ9eWfkQEmVbdEk4mbkGNCUfz5O9EQPTBKR1AzsKyyd7PRUr5wJojOyD2guLh8ndoc/RFd2nzf4I+AhcAtYDCzwGBtgF3AmtkbSTw/7qa+SdqXJJMVeK4llQaxZ4aDAPMdRGgO2m9mQY5y0tAWF8D3S7iHwUTN77CFOWtYEBZ8it83sjmOMWmkNCmGR5Y5Bzzmen4WFQSFxG9/gNIzIIl+BwiJ/HGMtznBOh2OfE4RFPjvG6s1wzsrkJjPyKyj4FOmUtDNtY0mHiGwzMvA2KIRFnjkGBTgvaVNSI0nrgAse+nsdF7zVcbsQ8F3S3hkkSpLee+prQxDXIp08BBJHNCVjVN71jlDZMLZQeUe81VP8YTPbEVsjqc/TSBXB4XDu0RlZBowCcz2NWl58Alab2Y/gwKQF0czeAVeKzioDQ2EJiF/ZLxaUjAtTHhOmiJjZUxpb5pKZDUcPxv70JqkVuAusyDurGvkCbDazt9GK2E2jmX0ETuadVQZ64yQSkXS2zl+xYQ46DYGkkXobSBpwkgjJXK2jxFkvEiGZcsECfyQd8SoRkjku6VsBEs8kdeciEZLpkHQ9J4FxVWZ+Tq4SEaFuSZc9Sgyq8pxSHyS1VUdxNEPyTyQNKOb3jlrx+qcaSW1U3v61UXkGaWby2/1x4AXwEnhQXXj/80/yFxO3SSfTTsqKAAAAAElFTkSuQmCC"

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 260
    new-instance p2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->base642Bitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p1

    invoke-direct {p2, p0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    return-object p2

    .line 263
    :cond_1f
    :try_start_1f
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 p1, 0x80

    .line 264
    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1

    .line 265
    iget-object p1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_2f
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2f} :catch_30

    return-object p0

    :catch_30
    move-exception p0

    .line 267
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p0, 0x0

    return-object p0
.end method

.method public isFocused()Z
    .registers 1

    const/4 p0, 0x1

    return p0
.end method

.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;FIIIZ)V"
        }
    .end annotation

    .line 110
    invoke-static {p1, p0}, Lcom/android/systemui/plugins/DarkIconDispatcher;->isInAreas(Ljava/util/ArrayList;Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_15

    if-eqz p6, :cond_c

    .line 112
    invoke-direct {p0, p3}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    return-void

    :cond_c
    const/4 p1, 0x0

    cmpl-float p1, p2, p1

    if-lez p1, :cond_15

    .line 116
    invoke-direct {p0, p5}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    return-void

    .line 120
    :cond_15
    invoke-direct {p0, p4}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setColor(I)V

    return-void
.end method

.method protected onFocusChanged(ZILandroid/graphics/Rect;)V
    .registers 4

    .line 105
    invoke-super {p0, p1, p2, p3}, Landroid/widget/TextView;->onFocusChanged(ZILandroid/graphics/Rect;)V

    return-void
.end method

.method public setAnimationText(Ljava/lang/String;)V
    .registers 4

    .line 224
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 p1, 0x8

    .line 225
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    return-void

    .line 229
    :cond_c
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_16

    const/4 v0, 0x0

    .line 230
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setVisibility(I)V

    .line 233
    :cond_16
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->lyricAnimation:I

    if-nez v0, :cond_1e

    .line 234
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setText(Ljava/lang/CharSequence;)V

    return-void

    .line 238
    :cond_1e
    iget-object v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    new-instance v1, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView$2;-><init>(Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 253
    iget-object p1, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->scaleOut:Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method

.method setLeftIcon(Landroid/graphics/drawable/Drawable;)V
    .registers 5

    if-eqz p1, :cond_24

    .line 202
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->showSimpleIcon:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_e

    .line 203
    iget v0, p0, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->currentColor:I

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 207
    :cond_e
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getTextSize()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->getTextSize()F

    move-result v1

    float-to-int v1, v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    const/4 v0, 0x0

    .line 208
    invoke-virtual {p0, p1, v0, v0, v0}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    const/4 p1, 0x6

    .line 209
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/lyrics/MiuiStatusLyricView;->setCompoundDrawablePadding(I)V

    :cond_24
    return-void
.end method
