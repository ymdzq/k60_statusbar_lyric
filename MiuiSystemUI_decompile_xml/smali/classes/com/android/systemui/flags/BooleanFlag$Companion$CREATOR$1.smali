.class public final Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1$createFromParcel$1;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/flags/BooleanFlag$Companion$CREATOR$1$createFromParcel$1;-><init>(Landroid/os/Parcel;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/systemui/flags/BooleanFlag;

    .line 2
    return-object p0
    .line 4
.end method
