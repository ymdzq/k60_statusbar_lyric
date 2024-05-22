.class public final Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final cropSubject:Ljava/lang/String;

.field private largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

.field private magicType:I

.field private supportSubject:Z


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

    invoke-direct/range {v0 .. v6}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;-><init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 4
    iput p2, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 5
    iput-boolean p3, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 6
    iput-object p4, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    const/4 v0, 0x0

    if-eqz p6, :cond_0

    move-object p1, v0

    :cond_0
    and-int/lit8 p6, p5, 0x2

    if-eqz p6, :cond_1

    const/4 p2, 0x0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    const/4 p3, 0x1

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    move-object p4, v0

    .line 7
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;-><init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;ILjava/lang/Object;)Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    and-int/lit8 p6, p5, 0x1

    .line 2
    if-eqz p6, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p6, p5, 0x2

    .line 8
    if-eqz p6, :cond_1

    .line 10
    iget p2, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 12
    :cond_1
    and-int/lit8 p6, p5, 0x4

    .line 14
    if-eqz p6, :cond_2

    .line 16
    iget-boolean p3, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 18
    :cond_2
    and-int/lit8 p5, p5, 0x8

    .line 20
    if-eqz p5, :cond_3

    .line 22
    iget-object p4, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 24
    :cond_3
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->copy(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component4()Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 2
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;-><init>(Ljava/lang/String;IZLcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)V

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
    instance-of v1, p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

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
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 25
    iget v3, p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 27
    if-eq v1, v3, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 32
    iget-boolean v3, p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 34
    if-eq v1, v3, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 39
    iget-object p1, p1, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 41
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 43
    move-result p0

    .line 46
    if-nez p0, :cond_5

    .line 47
    return v2

    .line 49
    :cond_5
    return v0
    .line 50
.end method

.method public final getCropSubject()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLargeScreenHierarchyEnable()Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getMagicType()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 2
    return p0
    .line 4
.end method

.method public final getSupportSubject()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 2
    return p0
    .line 4
.end method

.method public hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move v0, v1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 9
    move-result v0

    .line 12
    :goto_0
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget v2, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 15
    const/16 v3, 0x1f

    .line 17
    invoke-static {v2, v0, v3}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 19
    move-result v0

    .line 22
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 23
    if-eqz v2, :cond_1

    .line 25
    const/4 v2, 0x1

    .line 27
    :cond_1
    add-int/2addr v0, v2

    .line 28
    mul-int/lit8 v0, v0, 0x1f

    .line 29
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 31
    if-nez p0, :cond_2

    .line 33
    goto :goto_1

    .line 35
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;->hashCode()I

    .line 36
    move-result v1

    .line 39
    :goto_1
    add-int/2addr v0, v1

    .line 40
    return v0
    .line 41
.end method

.method public final setLargeScreenHierarchyEnable(Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 2
    return-void
    .line 4
.end method

.method public final setMagicType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 2
    return-void
    .line 4
.end method

.method public final setSupportSubject(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 2
    return-void
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->cropSubject:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->magicType:I

    .line 4
    iget-boolean v2, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->supportSubject:Z

    .line 6
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/WallpaperInfo;->largeScreenHierarchyEnable:Lcom/android/keyguard/wallpaper/entity/LargeScreenHierarchyEnable;

    .line 8
    const-string v3, "WallpaperInfo(cropSubject="

    .line 10
    const-string v4, ", magicType="

    .line 12
    const-string v5, ", supportSubject="

    .line 14
    invoke-static {v3, v0, v4, v1, v5}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    move-result-object v0

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 20
    const-string v1, ", largeScreenHierarchyEnable="

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string p0, ")"

    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 36
    move-result-object p0

    .line 39
    return-object p0
    .line 40
.end method
