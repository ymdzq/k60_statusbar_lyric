.class public final Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final clockInfo:Lcom/miui/clock/module/ClockBean;

.field private final wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;


# direct methods
.method public constructor <init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const/4 p2, 0x0

    .line 4
    :cond_0
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;-><init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;ILjava/lang/Object;)Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;
    .locals 0

    .line 1
    and-int/lit8 p4, p3, 0x1

    .line 2
    if-eqz p4, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 6
    :cond_0
    and-int/lit8 p3, p3, 0x2

    .line 8
    if-eqz p3, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 12
    :cond_1
    invoke-virtual {p0, p1, p2}, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->copy(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method


# virtual methods
.method public final component1()Lcom/miui/clock/module/ClockBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;-><init>(Lcom/miui/clock/module/ClockBean;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 16
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 18
    move-result v1

    .line 21
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 25
    iget-object p1, p1, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 27
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    if-nez p0, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    return v0
    .line 36
.end method

.method public final getClockInfo()Lcom/miui/clock/module/ClockBean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWallpaperInfo()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockBean;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 10
    if-nez p0, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->hashCode()I

    .line 16
    move-result p0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
    .line 21
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->clockInfo:Lcom/miui/clock/module/ClockBean;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/OtaDefaultLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 6
    const-string v2, "OtaDefaultLockscreenInfo(clockInfo="

    .line 8
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    const-string v0, ", wallpaperInfo="

    .line 16
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string p0, ")"

    .line 24
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method
