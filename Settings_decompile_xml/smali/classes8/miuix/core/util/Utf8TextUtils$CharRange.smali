.class Lmiuix/core/util/Utf8TextUtils$CharRange;
.super Ljava/lang/Object;
.source "Utf8TextUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/core/util/Utf8TextUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CharRange"
.end annotation


# instance fields
.field length:I

.field start:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 26
    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 27
    iput v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method

.method constructor <init>(II)V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput p1, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    .line 33
    iput p2, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    return-void
.end method


# virtual methods
.method getEndIndex()I
    .locals 1

    .line 41
    iget v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    iget p0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    add-int/2addr v0, p0

    return v0
.end method

.method isValid()Z
    .locals 1

    .line 37
    iget v0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->start:I

    if-ltz v0, :cond_0

    iget p0, p0, Lmiuix/core/util/Utf8TextUtils$CharRange;->length:I

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
