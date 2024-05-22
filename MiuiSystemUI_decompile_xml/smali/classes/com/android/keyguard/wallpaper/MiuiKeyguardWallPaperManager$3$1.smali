.class public final Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$1:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

.field public final synthetic val$blurColor:I

.field public final synthetic val$type:Ljava/lang/String;

.field public final synthetic val$wallpaperColors:Landroid/app/WallpaperColors;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;Ljava/lang/String;ILandroid/app/WallpaperColors;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->this$1:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$type:Ljava/lang/String;

    .line 4
    iput p3, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$blurColor:I

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$wallpaperColors:Landroid/app/WallpaperColors;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->this$1:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 2
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 4
    const/4 v1, 0x1

    .line 6
    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mNeedUpdateKeyguardWallpaperBlurPreview:Z

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$type:Ljava/lang/String;

    .line 9
    iput-object v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mKeyguardWallpaperType:Ljava/lang/String;

    .line 11
    sput-object v2, Lcom/miui/systemui/util/CommonUtil;->sKeyguardWallpaperType:Ljava/lang/String;

    .line 13
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->this$1:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 15
    iget-object v0, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 17
    iget v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$blurColor:I

    .line 19
    iput v2, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mWallpaperBlurColor:I

    .line 21
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->val$wallpaperColors:Landroid/app/WallpaperColors;

    .line 23
    if-eqz v2, :cond_1

    .line 25
    invoke-virtual {v2}, Landroid/app/WallpaperColors;->getColorHints()I

    .line 27
    move-result v2

    .line 30
    and-int/2addr v2, v1

    .line 31
    if-ne v2, v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x0

    .line 35
    :goto_0
    iput-boolean v1, v0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mIsLightLockWallpaper:Z

    .line 36
    :cond_1
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 38
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 44
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3$1;->this$1:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager$3;->this$0:Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 48
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mIsLightLockWallpaper:Z

    .line 50
    invoke-virtual {v0, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->handleLockWallpaperChanged(Z)V

    .line 52
    return-void
    .line 55
.end method
