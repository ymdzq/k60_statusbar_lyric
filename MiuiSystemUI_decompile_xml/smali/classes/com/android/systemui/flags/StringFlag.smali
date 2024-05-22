.class public final Lcom/android/systemui/flags/StringFlag;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/flags/Flag;
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field public final default:Ljava/lang/String;

.field public final id:I

.field public final name:Ljava/lang/String;

.field public final namespace:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/flags/StringFlag$Companion$CREATOR$1;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/flags/StringFlag$Companion$CREATOR$1;-><init>()V

    .line 4
    sput-object v0, Lcom/android/systemui/flags/StringFlag;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    const-string v2, ""

    .line 10
    if-nez v1, :cond_0

    .line 12
    move-object v1, v2

    .line 14
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    if-nez v3, :cond_1

    .line 19
    move-object v3, v2

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    if-nez p1, :cond_2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    move-object v2, p1

    .line 29
    :goto_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput v0, p0, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 33
    iput-object v1, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 35
    iput-object v3, p0, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 37
    iput-object v2, p0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public final describeContents()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

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
    instance-of v1, p1, Lcom/android/systemui/flags/StringFlag;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/android/systemui/flags/StringFlag;

    .line 12
    iget v1, p0, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 14
    iget v3, p1, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 21
    iget-object v3, p1, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 23
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 32
    iget-object v3, p1, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 34
    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 36
    move-result v1

    .line 39
    if-nez v1, :cond_4

    .line 40
    return v2

    .line 42
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 43
    iget-object p1, p1, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 45
    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    move-result p0

    .line 50
    if-nez p0, :cond_5

    .line 51
    return v2

    .line 53
    :cond_5
    return v0
    .line 54
.end method

.method public final getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->hashCode(I)I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object v1, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 10
    const/16 v2, 0x1f

    .line 12
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 18
    invoke-static {v1, v0, v2}, Landroidx/room/util/TableInfo$ForeignKey$$ExternalSyntheticOutline0;->m(Ljava/lang/String;II)I

    .line 20
    move-result v0

    .line 23
    iget-object p0, p0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 24
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 26
    move-result p0

    .line 29
    add-int/2addr p0, v0

    .line 30
    mul-int/lit8 p0, p0, 0x1f

    .line 31
    add-int/lit8 p0, p0, 0x0

    .line 33
    mul-int/lit8 p0, p0, 0x1f

    .line 35
    add-int/lit8 p0, p0, 0x0

    .line 37
    return p0
    .line 39
.end method

.method public final toString()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    .line 10
    const-string v4, "StringFlag(id="

    .line 12
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 17
    const-string v0, ", name="

    .line 20
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    const-string v0, ", namespace="

    .line 28
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ", default="

    .line 36
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    const-string p0, ", teamfood=false, overridden=false)"

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

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    iget p2, p0, Lcom/android/systemui/flags/StringFlag;->id:I

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/flags/StringFlag;->name:Ljava/lang/String;

    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 9
    iget-object p2, p0, Lcom/android/systemui/flags/StringFlag;->namespace:Ljava/lang/String;

    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/flags/StringFlag;->default:Ljava/lang/String;

    .line 17
    invoke-virtual {p1, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    return-void
    .line 22
.end method
