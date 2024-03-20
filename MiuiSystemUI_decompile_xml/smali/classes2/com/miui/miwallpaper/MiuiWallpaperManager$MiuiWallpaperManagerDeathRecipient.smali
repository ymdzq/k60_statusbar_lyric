.class public final Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final mBinder:Landroid/os/IBinder;

.field public final mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;Lcom/miui/miwallpaper/MiuiWallpaperManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 5
    iput-object p2, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final binderDied()V
    .locals 2

    .line 1
    const-string v0, "MiuiWallpaperManager"

    .line 2
    const-string v1, "linkToDeath:MiuiWallpaperManagerService died, try rebind..."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;->mBinder:Landroid/os/IBinder;

    .line 9
    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 12
    iget-object p0, p0, Lcom/miui/miwallpaper/MiuiWallpaperManager$MiuiWallpaperManagerDeathRecipient;->mMiuiWallpaperManager:Lcom/miui/miwallpaper/MiuiWallpaperManager;

    .line 15
    invoke-static {p0}, Lcom/miui/miwallpaper/MiuiWallpaperManager;->access$000(Lcom/miui/miwallpaper/MiuiWallpaperManager;)V

    .line 17
    return-void
    .line 20
.end method
