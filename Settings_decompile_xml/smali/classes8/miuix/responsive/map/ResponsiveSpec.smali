.class public Lmiuix/responsive/map/ResponsiveSpec;
.super Ljava/lang/Object;
.source "ResponsiveSpec.java"


# direct methods
.method public static isScreenOrientationMatch(II)Z
    .locals 2

    .line 0
    const/4 v0, 0x3

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    return v1

    :cond_0
    if-ne p0, p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
