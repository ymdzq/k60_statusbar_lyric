.class public final Lcom/android/keyguard/wallpaper/entity/ClockInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private final enableDiffusion:Z

.field private final isAutoPrimaryColor:Z

.field private final primaryColor:I

.field private final style:I

.field private final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;IIZZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 3
    iput p2, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 4
    iput p3, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 5
    iput-boolean p4, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 6
    iput-boolean p5, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIZZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 6

    and-int/lit8 p7, p6, 0x2

    if-eqz p7, :cond_0

    const/4 p2, 0x1

    :cond_0
    move v2, p2

    and-int/lit8 p2, p6, 0x4

    if-eqz p2, :cond_1

    const/4 p3, -0x1

    :cond_1
    move v3, p3

    and-int/lit8 p2, p6, 0x8

    const/4 p3, 0x0

    if-eqz p2, :cond_2

    move v4, p3

    goto :goto_0

    :cond_2
    move v4, p4

    :goto_0
    and-int/lit8 p2, p6, 0x10

    if-eqz p2, :cond_3

    move v5, p3

    goto :goto_1

    :cond_3
    move v5, p5

    :goto_1
    move-object v0, p0

    move-object v1, p1

    .line 7
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;-><init>(Ljava/lang/String;IIZZ)V

    return-void
.end method

.method public static synthetic copy$default(Lcom/android/keyguard/wallpaper/entity/ClockInfo;Ljava/lang/String;IIZZILjava/lang/Object;)Lcom/android/keyguard/wallpaper/entity/ClockInfo;
    .locals 3

    .line 1
    and-int/lit8 p7, p6, 0x1

    .line 2
    if-eqz p7, :cond_0

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 6
    :cond_0
    and-int/lit8 p7, p6, 0x2

    .line 8
    if-eqz p7, :cond_1

    .line 10
    iget p2, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 12
    :cond_1
    move p7, p2

    .line 14
    and-int/lit8 p2, p6, 0x4

    .line 15
    if-eqz p2, :cond_2

    .line 17
    iget p3, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 19
    :cond_2
    move v0, p3

    .line 21
    and-int/lit8 p2, p6, 0x8

    .line 22
    if-eqz p2, :cond_3

    .line 24
    iget-boolean p4, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 26
    :cond_3
    move v1, p4

    .line 28
    and-int/lit8 p2, p6, 0x10

    .line 29
    if-eqz p2, :cond_4

    .line 31
    iget-boolean p5, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 33
    :cond_4
    move v2, p5

    .line 35
    move-object p2, p0

    .line 36
    move-object p3, p1

    .line 37
    move p4, p7

    .line 38
    move p5, v0

    .line 39
    move p6, v1

    .line 40
    move p7, v2

    .line 41
    invoke-virtual/range {p2 .. p7}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->copy(Ljava/lang/String;IIZZ)Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 42
    move-result-object p0

    .line 45
    return-object p0
    .line 46
.end method


# virtual methods
.method public final component1()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final component2()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 2
    return p0
    .line 4
.end method

.method public final component3()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 2
    return p0
    .line 4
.end method

.method public final component4()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 2
    return p0
    .line 4
.end method

.method public final component5()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 2
    return p0
    .line 4
.end method

.method public final copy(Ljava/lang/String;IIZZ)Lcom/android/keyguard/wallpaper/entity/ClockInfo;
    .locals 6

    .line 1
    new-instance p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 2
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move v2, p2

    .line 6
    move v3, p3

    .line 7
    move v4, p4

    .line 8
    move v5, p5

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/keyguard/wallpaper/entity/ClockInfo;-><init>(Ljava/lang/String;IIZZ)V

    .line 10
    return-object p0
    .line 13
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
    instance-of v1, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 14
    iget-object v3, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

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
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 25
    iget v3, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 27
    if-eq v1, v3, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 32
    iget v3, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 34
    if-eq v1, v3, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 39
    iget-boolean v3, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 41
    if-eq v1, v3, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 46
    iget-boolean p1, p1, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 48
    if-eq p0, p1, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    return v0
    .line 53
.end method

.method public final getEnableDiffusion()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 2
    return p0
    .line 4
.end method

.method public final getPrimaryColor()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 2
    return p0
    .line 4
.end method

.method public final getStyle()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 2
    return p0
    .line 4
.end method

.method public final getTemplateId()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 18
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 20
    move-result v0

    .line 23
    iget-boolean v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 24
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_0

    .line 27
    move v1, v2

    .line 29
    :cond_0
    add-int/2addr v0, v1

    .line 30
    mul-int/lit8 v0, v0, 0x1f

    .line 31
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 33
    if-eqz p0, :cond_1

    .line 35
    goto :goto_0

    .line 37
    :cond_1
    move v2, p0

    .line 38
    :goto_0
    add-int/2addr v0, v2

    .line 39
    return v0
    .line 40
.end method

.method public final isAutoPrimaryColor()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 2
    return p0
    .line 4
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->templateId:Ljava/lang/String;

    .line 2
    iget v1, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->style:I

    .line 4
    iget v2, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->primaryColor:I

    .line 6
    iget-boolean v3, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->isAutoPrimaryColor:Z

    .line 8
    iget-boolean p0, p0, Lcom/android/keyguard/wallpaper/entity/ClockInfo;->enableDiffusion:Z

    .line 10
    const-string v4, "ClockInfo(templateId="

    .line 12
    const-string v5, ", style="

    .line 14
    const-string v6, ", primaryColor="

    .line 16
    invoke-static {v4, v0, v5, v1, v6}, Lcom/android/keyguard/wallpaper/entity/ClockInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 22
    const-string v1, ", isAutoPrimaryColor="

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 30
    const-string v1, ", enableDiffusion="

    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    const-string v1, ")"

    .line 38
    invoke-static {v0, p0, v1}, Landroidx/appcompat/app/AppCompatDelegateImpl$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    return-object p0
    .line 44
.end method
