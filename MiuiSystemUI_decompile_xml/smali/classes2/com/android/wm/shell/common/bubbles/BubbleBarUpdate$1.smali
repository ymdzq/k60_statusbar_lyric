.class public final Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# virtual methods
.method public final createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;-><init>(Landroid/os/Parcel;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public final newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    new-array p0, p1, [Lcom/android/wm/shell/common/bubbles/BubbleBarUpdate;

    .line 2
    return-object p0
    .line 4
.end method