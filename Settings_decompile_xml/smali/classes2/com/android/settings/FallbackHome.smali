.class public Lcom/android/settings/FallbackHome;
.super Landroid/app/Activity;
.source "FallbackHome.java"


# instance fields
.field private final mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

.field private mHandler:Landroid/os/Handler;

.field private mProgressTimeout:I

.field private final mProgressTimeoutRunnable:Ljava/lang/Runnable;

.field private mProvisioned:Z

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mWallManager:Landroid/app/WallpaperManager;


# direct methods
.method public static synthetic $r8$lambda$BLF5UdLWM1qHEymcUJdRulhBU_Y(Lcom/android/settings/FallbackHome;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->lambda$new$0()V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmColorsChangedListener(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager$OnColorsChangedListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmWallManager(Lcom/android/settings/FallbackHome;)Landroid/app/WallpaperManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mmaybeFinish(Lcom/android/settings/FallbackHome;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateVisibilityFlagsFromColors(Lcom/android/settings/FallbackHome;Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/FallbackHome;->updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/FallbackHome$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    .line 73
    new-instance v0, Lcom/android/settings/FallbackHome$1;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$1;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    .line 143
    new-instance v0, Lcom/android/settings/FallbackHome$2;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$2;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 222
    new-instance v0, Lcom/android/settings/FallbackHome$4;

    invoke-direct {v0, p0}, Lcom/android/settings/FallbackHome$4;-><init>(Lcom/android/settings/FallbackHome;)V

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private isFirstEnterSecondSpace()Z
    .locals 4

    .line 231
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 234
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "second_user_id"

    const/16 v3, -0x2710

    invoke-static {v0, v2, v3, v1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v3, :cond_1

    return v1

    .line 239
    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v2, "user_setup_complete"

    .line 240
    invoke-static {p0, v2, v1, v0}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method private synthetic lambda$new$0()V
    .locals 3

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/android/settings/R$layout;->fallback_home_finishing_boot:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    const/4 v1, 0x0

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 64
    invoke-virtual {v0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v1, 0x1f4

    .line 66
    invoke-virtual {v0, v1, v2}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x10c000d    # @android:interpolator/fast_out_slow_in

    .line 67
    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 69
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    .line 70
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/16 v0, 0x80

    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method

.method private loadWallpaperColors(I)V
    .locals 1

    .line 151
    new-instance v0, Lcom/android/settings/FallbackHome$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/FallbackHome$3;-><init>(Lcom/android/settings/FallbackHome;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Object;

    .line 174
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private maybeFinish()V
    .locals 6

    .line 178
    const-class v0, Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 179
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.HOME"

    .line 180
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 182
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    const-string v3, "FallbackHome"

    if-eqz v1, :cond_0

    const-string v0, "User unlocked but no home; let\'s hope someone enables one soon?"

    .line 183
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    const-wide/16 v0, 0x1f4

    invoke-virtual {p0, v2, v0, v1}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0

    :cond_0
    const-string v1, "User unlocked and real home found; let\'s go!"

    .line 186
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 188
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 187
    invoke-virtual {v1, v4, v5, v2}, Landroid/os/PowerManager;->userActivity(JZ)V

    .line 190
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->isFirstEnterSecondSpace()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string/jumbo v0, "skip launch home for launch GuideStartActivity when first into second user"

    .line 191
    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 197
    :cond_1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    const/4 v3, 0x1

    invoke-interface {v1, v3}, Landroid/app/IActivityManager;->getTasks(I)Ljava/util/List;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 198
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 199
    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/FallbackHome;

    .line 200
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 201
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 206
    :catch_0
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateVisibilityFlagsFromColors(Landroid/app/WallpaperColors;I)I
    .locals 0

    .line 214
    invoke-virtual {p1}, Landroid/app/WallpaperColors;->getColorHints()I

    move-result p0

    and-int/lit8 p0, p0, 0x1

    if-eqz p0, :cond_0

    or-int/lit16 p0, p2, 0x2000

    or-int/lit8 p0, p0, 0x10

    return p0

    :cond_0
    and-int/lit16 p0, p2, -0x2001

    and-int/lit8 p0, p0, -0x11

    return p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x10e00e5    # @android:integer/config_screenBrightnessSettingMaximum

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeout:I

    const/4 v0, 0x0

    if-gtz p1, :cond_0

    .line 92
    iput v0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeout:I

    .line 97
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "device_provisioned"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-nez v0, :cond_2

    .line 101
    sget p1, Lcom/android/settings/R$style;->FallbackHome_SetupWizard:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    const/16 p1, 0x1006

    goto :goto_0

    :cond_2
    const/16 p1, 0x600

    .line 109
    :goto_0
    const-class v0, Landroid/app/WallpaperManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/WallpaperManager;

    iput-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-nez v0, :cond_3

    const-string v0, "FallbackHome"

    const-string v1, "Wallpaper manager isn\'t ready, can\'t listen to color changes!"

    .line 111
    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 113
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/settings/FallbackHome;->loadWallpaperColors(I)V

    .line 115
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_UNLOCKED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 118
    invoke-direct {p0}, Lcom/android/settings/FallbackHome;->maybeFinish()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 136
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mWallManager:Landroid/app/WallpaperManager;

    if-eqz v0, :cond_0

    .line 139
    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mColorsChangedListener:Landroid/app/WallpaperManager$OnColorsChangedListener;

    invoke-virtual {v0, p0}, Landroid/app/WallpaperManager;->removeOnColorsChangedListener(Landroid/app/WallpaperManager$OnColorsChangedListener;)V

    :cond_0
    return-void
.end method

.method protected onPause()V
    .locals 1

    .line 131
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 132
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 123
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 124
    iget-boolean v0, p0, Lcom/android/settings/FallbackHome;->mProvisioned:Z

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/FallbackHome;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/FallbackHome;->mProgressTimeoutRunnable:Ljava/lang/Runnable;

    iget p0, p0, Lcom/android/settings/FallbackHome;->mProgressTimeout:I

    int-to-long v2, p0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method
