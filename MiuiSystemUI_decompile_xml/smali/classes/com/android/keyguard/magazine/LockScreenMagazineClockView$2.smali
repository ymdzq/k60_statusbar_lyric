.class public final Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 2
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    new-instance p1, Landroid/content/Intent;

    .line 4
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 6
    const-string v0, "android.intent.action.VIEW"

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 11
    const/high16 v0, 0x10000000

    .line 14
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 16
    const/high16 v0, 0x4000000

    .line 19
    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 21
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 24
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 26
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->carouselDeeplink:Ljava/lang/String;

    .line 28
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 30
    move-result v0

    .line 33
    if-nez v0, :cond_0

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 36
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 38
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->carouselDeeplink:Ljava/lang/String;

    .line 40
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 42
    move-result-object v0

    .line 45
    const-string v1, "deeplinkUri"

    .line 46
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 51
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mMagazineWallpaperInfo:Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;

    .line 53
    iget-object v0, v0, Lcom/android/keyguard/magazine/entity/LockScreenMagazineWallpaperInfo;->titleClickUri:Ljava/lang/String;

    .line 55
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 57
    move-result-object v0

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 61
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 64
    invoke-static {p0}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->access$000(Lcom/android/keyguard/magazine/LockScreenMagazineClockView;)Landroid/content/Context;

    .line 66
    move-result-object p0

    .line 69
    const/4 v0, 0x0

    .line 70
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    move-result-object p0

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 75
    move-result v1

    .line 78
    const/4 v2, 0x0

    .line 79
    invoke-virtual {p0, p1, v2, v1}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    .line 80
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    goto :goto_0

    .line 84
    :catch_0
    move-exception p0

    .line 85
    new-instance v1, Ljava/lang/StringBuilder;

    .line 86
    const-string/jumbo v2, "resolveIntent exception"

    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 91
    const-string v2, "PackageUtils"

    .line 94
    invoke-static {p0, v1, v2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 96
    move-object p0, v0

    .line 99
    :goto_0
    if-eqz p0, :cond_1

    .line 100
    goto :goto_1

    .line 102
    :cond_1
    move-object p1, v0

    .line 103
    :goto_1
    return-object p1
    .line 104
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 6
    iget-object p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    const/4 p1, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 16
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mTitle:Landroid/widget/TextView;

    .line 18
    new-instance v1, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;

    .line 20
    invoke-direct {v1, p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2$1;-><init>(Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;Landroid/content/Intent;)V

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    const/4 p1, 0x1

    .line 28
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView$2;->this$0:Lcom/android/keyguard/magazine/LockScreenMagazineClockView;

    .line 29
    sget v0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->$r8$clinit:I

    .line 31
    iget-boolean v0, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 33
    if-eq p1, v0, :cond_1

    .line 35
    iput-boolean p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mHasTitleClick:Z

    .line 37
    iget p1, p0, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->mColor:I

    .line 39
    invoke-virtual {p0, p1}, Lcom/android/keyguard/magazine/LockScreenMagazineClockView;->updateColor(I)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method
