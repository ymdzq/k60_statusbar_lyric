.class public final Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

.field private final doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

.field private final smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

.field private final wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 1
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xf

    const/4 v6, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;-><init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 5
    iput-object p3, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 8

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 7
    new-instance p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    const-string v1, "classic"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x1e

    const/4 v7, 0x0

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;-><init>(Ljava/lang/String;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 8
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;-><init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;ILjava/lang/Object;)Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    if-eqz p6, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    if-eqz p6, :cond_1

    .line 10
    iget-object p2, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    if-eqz p6, :cond_2

    .line 16
    iget-object p3, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    if-eqz p5, :cond_3

    .line 22
    iget-object p4, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->copy(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final component1()Lcom/android/keyguard/wallpaper/entity/ClockInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component3()Lcom/android/keyguard/wallpaper/entity/DoodleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component4()Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;-><init>(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Lcom/android/keyguard/wallpaper/entity/DoodleInfo;Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;)V

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
    instance-of v1, p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

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
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 25
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 27
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 29
    move-result v1

    .line 32
    if-nez v1, :cond_3

    .line 33
    return v2

    .line 35
    :cond_3
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 36
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 38
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_4

    .line 44
    return v2

    .line 46
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 47
    iget-object p1, p1, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 49
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 51
    move-result p0

    .line 54
    if-nez p0, :cond_5

    .line 55
    return v2

    .line 57
    :cond_5
    return v0
    .line 58
.end method

.method public final getClockInfo()Lcom/android/keyguard/wallpaper/entity/ClockInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDoodle()Lcom/android/keyguard/wallpaper/entity/DoodleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getSmartFrame()Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getWallpaperInfo()Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 2
    invoke-virtual {v0}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 10
    const/4 v2, 0x0

    .line 12
    if-nez v1, :cond_0

    .line 13
    move v1, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->hashCode()I

    .line 17
    move-result v1

    .line 20
    :goto_0
    add-int/2addr v0, v1

    .line 21
    mul-int/lit8 v0, v0, 0x1f

    .line 22
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 24
    if-nez v1, :cond_1

    .line 26
    move v1, v2

    .line 28
    goto :goto_1

    .line 29
    :cond_1
    invoke-virtual {v1}, Lcom/android/keyguard/wallpaper/entity/DoodleInfo;->hashCode()I

    .line 30
    move-result v1

    .line 33
    :goto_1
    add-int/2addr v0, v1

    .line 34
    mul-int/lit8 v0, v0, 0x1f

    .line 35
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 37
    if-nez p0, :cond_2

    .line 39
    goto :goto_2

    .line 41
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;->hashCode()I

    .line 42
    move-result v2

    .line 45
    :goto_2
    add-int/2addr v0, v2

    .line 46
    return v0
    .line 47
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->clockInfo:Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->wallpaperInfo:Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->doodle:Lcom/android/keyguard/wallpaper/entity/DoodleInfo;

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ConstantLockscreenInfo;->smartFrame:Lcom/android/keyguard/wallpaper/entity/SmartFrameInfo;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    const-string v4, "ConstantLockscreenInfo(clockInfo="

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ", wallpaperInfo="

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ", doodle="

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ", smartFrame="

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ")"

    .line 44
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
