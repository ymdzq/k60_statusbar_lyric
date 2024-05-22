.class public abstract Lcom/google/gson/internal/JavaVersion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final majorJavaVersion:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "java.version"

    .line 2
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, -0x1

    .line 9
    :try_start_0
    const-string v3, "[._]"

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 12
    move-result-object v3

    .line 15
    aget-object v4, v3, v1

    .line 16
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 18
    move-result v4

    .line 21
    const/4 v5, 0x1

    .line 22
    if-ne v4, v5, :cond_0

    .line 23
    array-length v6, v3

    .line 25
    if-le v6, v5, :cond_0

    .line 26
    aget-object v3, v3, v5

    .line 28
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 30
    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 34
    :catch_0
    move v4, v2

    .line 35
    :cond_0
    :goto_0
    if-ne v4, v2, :cond_2

    .line 36
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    .line 38
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 40
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 43
    move-result v4

    .line 46
    if-ge v1, v4, :cond_1

    .line 47
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 49
    move-result v4

    .line 52
    invoke-static {v4}, Ljava/lang/Character;->isDigit(C)Z

    .line 53
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 59
    add-int/lit8 v1, v1, 0x1

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 65
    move-result-object v0

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 69
    move-result v4
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    goto :goto_2

    .line 73
    :catch_1
    move v4, v2

    .line 74
    :cond_2
    :goto_2
    if-ne v4, v2, :cond_3

    .line 75
    const/4 v4, 0x6

    .line 77
    :cond_3
    sput v4, Lcom/google/gson/internal/JavaVersion;->majorJavaVersion:I

    .line 78
    return-void
    .line 80
.end method
