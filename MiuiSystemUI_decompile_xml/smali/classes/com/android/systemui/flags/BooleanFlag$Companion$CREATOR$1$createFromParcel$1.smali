.class public final Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1$createFromParcel$1;
.super Lcom/android/systemui/flags/BooleanFlag;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 7

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    move-result v2

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, ""

    .line 10
    if-nez v0, :cond_0

    .line 12
    move-object v3, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move-object v3, v0

    .line 16
    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    move-object v6, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move-object v6, v0

    .line 25
    :goto_1
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 26
    move-result v4

    .line 29
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 30
    move-result v5

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    .line 34
    move-result p1

    .line 37
    move-object v0, p0

    .line 38
    move-object v1, v3

    .line 39
    move v3, v4

    .line 40
    move v4, v5

    .line 41
    move v5, p1

    .line 42
    invoke-direct/range {v0 .. v6}, Lcom/android/systemui/flags/BooleanFlag;-><init>(Ljava/lang/String;IZZZLjava/lang/String;)V

    .line 43
    return-void
    .line 46
.end method
