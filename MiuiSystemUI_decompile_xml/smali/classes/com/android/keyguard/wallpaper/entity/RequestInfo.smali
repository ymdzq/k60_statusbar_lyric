.class public Lcom/android/keyguard/wallpaper/entity/RequestInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public currentWallpaperInfo:Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;

.field public mode:I

.field public needLast:Z

.field public packageName:Ljava/lang/String;

.field public wallpaperInfos:Ljava/util/List;


# direct methods
.method public constructor <init>(ILcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->mode:I

    .line 5
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->currentWallpaperInfo:Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "RequestInfo [mode="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->mode:I

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ", currentWallpaperInfo="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->currentWallpaperInfo:Lcom/android/keyguard/wallpaper/entity/MiuiWallpaperInfo;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", needLast="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->needLast:Z

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", wallpaperInfos="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->wallpaperInfos:Ljava/util/List;

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", packageName="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/RequestInfo;->packageName:Ljava/lang/String;

    .line 49
    const-string v1, "]"

    .line 51
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 53
    move-result-object p0

    .line 56
    return-object p0
    .line 57
.end method
