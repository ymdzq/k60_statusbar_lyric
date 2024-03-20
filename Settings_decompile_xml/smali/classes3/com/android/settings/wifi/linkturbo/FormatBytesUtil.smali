.class public Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;
.super Ljava/lang/Object;
.source "FormatBytesUtil.java"


# static fields
.field public static BString:Ljava/lang/String; = "B"

.field public static GBString:Ljava/lang/String; = "GB"

.field public static KBString:Ljava/lang/String; = "KB"

.field public static MBString:Ljava/lang/String; = "MB"


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public static formatBytes(J)Ljava/lang/String;
    .locals 6

    const-wide/32 v0, 0x40000000

    cmp-long v0, p0, v0

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    if-ltz v0, :cond_0

    long-to-double p0, p0

    mul-double/2addr p0, v1

    const-wide/high16 v0, 0x41d0000000000000L    # 1.073741824E9

    div-double/2addr p0, v0

    .line 42
    sget-object v0, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->GBString:Ljava/lang/String;

    const/4 v1, 0x2

    goto :goto_1

    :cond_0
    const-wide/32 v3, 0x100000

    cmp-long v0, p0, v3

    const/4 v3, 0x1

    if-ltz v0, :cond_1

    long-to-double p0, p0

    mul-double/2addr p0, v1

    const-wide/high16 v0, 0x4130000000000000L    # 1048576.0

    div-double/2addr p0, v0

    .line 46
    sget-object v0, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->MBString:Ljava/lang/String;

    :goto_0
    move v1, v3

    goto :goto_1

    :cond_1
    const-wide/16 v4, 0x400

    cmp-long v0, p0, v4

    if-ltz v0, :cond_2

    long-to-double p0, p0

    mul-double/2addr p0, v1

    const-wide/high16 v0, 0x4090000000000000L    # 1024.0

    div-double/2addr p0, v0

    .line 49
    sget-object v0, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->KBString:Ljava/lang/String;

    goto :goto_0

    :cond_2
    long-to-double p0, p0

    mul-double/2addr p0, v1

    .line 52
    sget-object v0, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->BString:Ljava/lang/String;

    goto :goto_0

    .line 54
    :goto_1
    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->textFormat(DLjava/lang/String;I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static textFormat(DLjava/lang/String;I)Ljava/lang/String;
    .locals 2

    const-wide v0, 0x408f3c0000000000L    # 999.5

    cmpl-double v0, p0, v0

    if-gtz v0, :cond_2

    .line 122
    sget-object v0, Lcom/android/settings/wifi/linkturbo/FormatBytesUtil;->BString:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide v0, 0x4058e00000000000L    # 99.5

    cmpl-double v0, p0, v0

    if-lez v0, :cond_1

    .line 125
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%.01f"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 127
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "%.0"

    .line 128
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p3, 0x66

    .line 130
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 131
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    invoke-static {p3, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_2
    :goto_0
    double-to-int p0, p0

    .line 123
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_1
    if-eqz p2, :cond_3

    .line 134
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_3
    return-object p0
.end method
