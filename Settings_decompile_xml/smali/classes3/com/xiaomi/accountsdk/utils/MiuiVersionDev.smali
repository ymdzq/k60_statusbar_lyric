.class public Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;
.super Ljava/lang/Object;
.source "MiuiVersionDev.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;",
        ">;"
    }
.end annotation


# static fields
.field private static final PATTERN_DEV:Ljava/util/regex/Pattern;

.field private static volatile sVersionThisBuild:Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;


# instance fields
.field public final day:I

.field public final month:I

.field public final year:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "^(\\d)\\.(\\d{1,2})\\.(\\d{1,2})$"

    .line 17
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->PATTERN_DEV:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    iput p1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->year:I

    .line 22
    iput p2, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->month:I

    .line 23
    iput p3, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->day:I

    return-void
.end method

.method public static earlyThan(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;Z)Z
    .locals 1

    .line 27
    invoke-static {}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->parseFromBuild()Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    move-result-object v0

    if-nez v0, :cond_0

    return p1

    .line 31
    :cond_0
    invoke-virtual {v0, p0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->compareTo(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;)I

    move-result p0

    if-gez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static parseFromBuild()Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;
    .locals 5

    .line 35
    sget-object v0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->sVersionThisBuild:Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    if-eqz v0, :cond_0

    .line 36
    sget-object v0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->sVersionThisBuild:Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    return-object v0

    .line 39
    :cond_0
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return-object v1

    .line 44
    :cond_1
    sget-object v2, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->PATTERN_DEV:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 45
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_2

    return-object v1

    .line 49
    :cond_2
    new-instance v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/4 v2, 0x1

    .line 50
    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    const/4 v3, 0x2

    .line 51
    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    .line 52
    invoke-virtual {v0, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {v1, v2, v3, v0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;-><init>(III)V

    .line 55
    sput-object v1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->sVersionThisBuild:Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    return-object v1
.end method

.method private val()I
    .locals 2

    .line 89
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->day:I

    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->month:I

    mul-int/lit8 v1, v1, 0x64

    add-int/2addr v0, v1

    iget p0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->year:I

    mul-int/lit16 p0, p0, 0x2710

    add-int/2addr v0, p0

    return v0
.end method


# virtual methods
.method public compareTo(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;)I
    .locals 0

    if-eqz p1, :cond_0

    .line 85
    invoke-direct {p0}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->val()I

    move-result p0

    invoke-direct {p1}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->val()I

    move-result p1

    sub-int/2addr p0, p1

    return p0

    .line 83
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "another == null"

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 8
    check-cast p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    invoke-virtual {p0, p1}, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->compareTo(Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;)I

    move-result p0

    return p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 63
    :cond_0
    instance-of v1, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 65
    :cond_1
    check-cast p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;

    .line 67
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->year:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->year:I

    if-eq v1, v3, :cond_2

    return v2

    .line 68
    :cond_2
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->month:I

    iget v3, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->month:I

    if-eq v1, v3, :cond_3

    return v2

    .line 69
    :cond_3
    iget p0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->day:I

    iget p1, p1, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->day:I

    if-ne p0, p1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 2

    .line 74
    iget v0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->year:I

    mul-int/lit8 v0, v0, 0x1f

    .line 75
    iget v1, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->month:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 76
    iget p0, p0, Lcom/xiaomi/accountsdk/utils/MiuiVersionDev;->day:I

    add-int/2addr v0, p0

    return v0
.end method
