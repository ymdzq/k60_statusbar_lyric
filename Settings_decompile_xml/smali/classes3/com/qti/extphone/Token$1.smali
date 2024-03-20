.class Lcom/qti/extphone/Token$1;
.super Ljava/lang/Object;
.source "Token.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qti/extphone/Token;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/Token;
    .locals 0

    .line 72
    new-instance p0, Lcom/qti/extphone/Token;

    invoke-direct {p0, p1}, Lcom/qti/extphone/Token;-><init>(Landroid/os/Parcel;)V

    return-object p0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/qti/extphone/Token$1;->createFromParcel(Landroid/os/Parcel;)Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method

.method public newArray(I)[Lcom/qti/extphone/Token;
    .locals 0

    .line 76
    new-array p0, p1, [Lcom/qti/extphone/Token;

    return-object p0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 70
    invoke-virtual {p0, p1}, Lcom/qti/extphone/Token$1;->newArray(I)[Lcom/qti/extphone/Token;

    move-result-object p0

    return-object p0
.end method
