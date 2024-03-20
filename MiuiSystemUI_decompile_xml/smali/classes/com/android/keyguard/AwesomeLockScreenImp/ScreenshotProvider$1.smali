.class public final Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;

.field public final synthetic val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;

    .line 6
    invoke-static {p0}, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;->access$000(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;)Lcom/miui/maml/ScreenElementRoot;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 12
    move-result-object p0

    .line 15
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->getKeyguardWallPaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    instance-of v0, p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;

    .line 8
    invoke-static {p0}, Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;->access$100(Lcom/android/keyguard/AwesomeLockScreenImp/ScreenshotProvider;)Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 10
    move-result-object p0

    .line 13
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 14
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 20
    :cond_0
    return-void
    .line 23
.end method
