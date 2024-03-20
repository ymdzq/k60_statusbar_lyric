.class public final Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;
.super Landroid/os/AsyncTask;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

.field public final synthetic val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

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
    iget-object p1, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->val$miuiKeyguardWallPaperManager:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 8
    move-result-object p0

    .line 11
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p1, p0}, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->getKeyguardWallPaperPreview(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    if-nez p1, :cond_0

    .line 4
    const/4 p1, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    check-cast p1, Landroid/graphics/drawable/BitmapDrawable;

    .line 8
    invoke-virtual {p1}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    .line 10
    move-result-object p1

    .line 13
    :goto_0
    if-eqz p1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

    .line 16
    invoke-static {v0}, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;->access$000(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;)Lcom/miui/maml/ScreenElementRoot;

    .line 18
    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getScreenWidth()I

    .line 22
    move-result v1

    .line 25
    iget-object p0, p0, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement$1;->this$0:Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;

    .line 26
    invoke-static {p0}, Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;->access$100(Lcom/android/keyguard/AwesomeLockScreenImp/WallpaperScreenElement;)Lcom/miui/maml/ScreenElementRoot;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getScreenHeight()I

    .line 32
    move-result p0

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, v1, p0, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    .line 37
    move-result-object p0

    .line 40
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ImageScreenElement;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 41
    :cond_1
    return-void
    .line 44
.end method
