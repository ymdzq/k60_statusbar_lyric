.class public abstract Lcom/miui/miwallpaper/material/utils/MathUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static matrixMultiply([D[[D)[D
    .locals 17

    .line 1
    const/4 v0, 0x0

    .line 2
    aget-wide v1, p0, v0

    .line 3
    aget-object v3, p1, v0

    .line 5
    aget-wide v4, v3, v0

    .line 7
    mul-double/2addr v4, v1

    .line 9
    const/4 v6, 0x1

    .line 10
    aget-wide v7, p0, v6

    .line 11
    aget-wide v9, v3, v6

    .line 13
    mul-double/2addr v9, v7

    .line 15
    add-double/2addr v9, v4

    .line 16
    const/4 v4, 0x2

    .line 17
    aget-wide v11, p0, v4

    .line 18
    aget-wide v13, v3, v4

    .line 20
    mul-double/2addr v13, v11

    .line 22
    add-double/2addr v13, v9

    .line 23
    aget-object v3, p1, v6

    .line 24
    aget-wide v9, v3, v0

    .line 26
    mul-double/2addr v9, v1

    .line 28
    aget-wide v15, v3, v6

    .line 29
    mul-double/2addr v15, v7

    .line 31
    add-double/2addr v15, v9

    .line 32
    aget-wide v9, v3, v4

    .line 33
    mul-double/2addr v9, v11

    .line 35
    add-double/2addr v9, v15

    .line 36
    aget-object v3, p1, v4

    .line 37
    aget-wide v15, v3, v0

    .line 39
    mul-double/2addr v1, v15

    .line 41
    aget-wide v15, v3, v6

    .line 42
    mul-double/2addr v7, v15

    .line 44
    add-double/2addr v7, v1

    .line 45
    aget-wide v1, v3, v4

    .line 46
    mul-double/2addr v11, v1

    .line 48
    add-double/2addr v11, v7

    .line 49
    const/4 v1, 0x3

    .line 50
    new-array v1, v1, [D

    .line 51
    aput-wide v13, v1, v0

    .line 53
    aput-wide v9, v1, v6

    .line 55
    aput-wide v11, v1, v4

    .line 57
    return-object v1
    .line 59
.end method
