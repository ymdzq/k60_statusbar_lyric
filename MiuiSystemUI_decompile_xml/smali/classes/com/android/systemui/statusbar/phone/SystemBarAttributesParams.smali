.class public final Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final appearance:I

.field public final appearanceRegions:Ljava/util/List;

.field public final appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

.field public final behavior:I

.field public final displayId:I

.field public final letterboxes:Ljava/util/List;

.field public final letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

.field public final navbarColorManagedByIme:Z

.field public final packageName:Ljava/lang/String;

.field public final requestedVisibleTypes:I


# direct methods
.method public constructor <init>(IILjava/util/List;ZIILjava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 9
    iput-boolean p4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 11
    iput p5, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 13
    iput p6, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 15
    iput-object p7, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 19
    const/4 p1, 0x0

    .line 21
    new-array p2, p1, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 22
    invoke-interface {p8, p2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 24
    move-result-object p2

    .line 27
    check-cast p2, [Lcom/android/internal/statusbar/LetterboxDetails;

    .line 28
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 30
    new-array p1, p1, [Lcom/android/internal/view/AppearanceRegion;

    .line 32
    invoke-interface {p3, p1}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 34
    move-result-object p1

    .line 37
    check-cast p1, [Lcom/android/internal/view/AppearanceRegion;

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 40
    return-void
    .line 42
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;

    .line 12
    iget v1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 14
    iget v3, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 16
    if-eq v3, v1, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 21
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 23
    if-eq v1, v3, :cond_3

    .line 25
    return v2

    .line 27
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 28
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 30
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 32
    move-result v1

    .line 35
    if-nez v1, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 39
    iget-boolean v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 41
    if-eq v1, v3, :cond_5

    .line 43
    return v2

    .line 45
    :cond_5
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 46
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 48
    if-eq v1, v3, :cond_6

    .line 50
    return v2

    .line 52
    :cond_6
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 53
    iget v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 55
    if-eq v1, v3, :cond_7

    .line 57
    return v2

    .line 59
    :cond_7
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 60
    iget-object v3, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 62
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result v1

    .line 67
    if-nez v1, :cond_8

    .line 68
    return v2

    .line 70
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 71
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 73
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 75
    move-result p0

    .line 78
    if-nez p0, :cond_9

    .line 79
    return v2

    .line 81
    :cond_9
    return v0
    .line 82
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 18
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    .line 20
    move-result v1

    .line 23
    add-int/2addr v1, v0

    .line 24
    mul-int/lit8 v1, v1, 0x1f

    .line 25
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 27
    if-eqz v0, :cond_0

    .line 29
    const/4 v0, 0x1

    .line 31
    :cond_0
    add-int/2addr v1, v0

    .line 32
    mul-int/lit8 v1, v1, 0x1f

    .line 33
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 35
    const/16 v2, 0x1f

    .line 37
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 39
    move-result v0

    .line 42
    iget v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 43
    invoke-static {v1, v0, v2}, Lcom/android/keyguard/KeyguardActiveUnlockModel$$ExternalSyntheticOutline0;->m(III)I

    .line 45
    move-result v0

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 49
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 51
    move-result v0

    .line 54
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 57
    move-result p0

    .line 60
    add-int/2addr p0, v0

    .line 61
    return p0
    .line 62
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    const-class v0, Landroid/view/InsetsFlags;

    .line 2
    const-string v1, "appearance"

    .line 4
    iget v2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearance:I

    .line 6
    invoke-static {v0, v1, v2}, Landroid/view/ViewDebug;->flagsToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxesArray:[Lcom/android/internal/statusbar/LetterboxDetails;

    .line 12
    invoke-static {v1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    iget-object v2, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegionsArray:[Lcom/android/internal/view/AppearanceRegion;

    .line 18
    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 20
    move-result-object v2

    .line 23
    new-instance v3, Ljava/lang/StringBuilder;

    .line 24
    const-string v4, "SystemBarAttributesParams(\n            displayId="

    .line 26
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    iget v4, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->displayId:I

    .line 31
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 33
    const-string v4, ",\n            appearance="

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string v0, ",\n            appearanceRegions="

    .line 44
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->appearanceRegions:Ljava/util/List;

    .line 49
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    const-string v0, ",\n            navbarColorManagedByIme="

    .line 54
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->navbarColorManagedByIme:Z

    .line 59
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 61
    const-string v0, ",\n            behavior="

    .line 64
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->behavior:I

    .line 69
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string v0, ",\n            requestedVisibleTypes="

    .line 74
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    iget v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->requestedVisibleTypes:I

    .line 79
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    const-string v0, ",\n            packageName=\'"

    .line 84
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->packageName:Ljava/lang/String;

    .line 89
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    const-string v0, "\',\n            letterboxes="

    .line 94
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/SystemBarAttributesParams;->letterboxes:Ljava/util/List;

    .line 99
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 101
    const-string p0, ",\n            letterboxesArray="

    .line 104
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    const-string p0, ",\n            appearanceRegionsArray="

    .line 112
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    const-string p0, "\n            )"

    .line 120
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p0

    .line 128
    invoke-static {p0}, Lkotlin/text/StringsKt__IndentKt;->trimMargin$default(Ljava/lang/String;)Ljava/lang/String;

    .line 129
    move-result-object p0

    .line 132
    return-object p0
    .line 133
.end method
