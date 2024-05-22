.class public abstract Lcom/miui/miwallpaper/material/hct/Cam16;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final XYZ_TO_CAM16RGB:[[D


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x3

    .line 2
    new-array v1, v0, [D

    .line 3
    fill-array-data v1, :array_0

    .line 5
    new-array v2, v0, [D

    .line 8
    fill-array-data v2, :array_1

    .line 10
    new-array v0, v0, [D

    .line 13
    fill-array-data v0, :array_2

    .line 15
    filled-new-array {v1, v2, v0}, [[D

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/miui/miwallpaper/material/hct/Cam16;->XYZ_TO_CAM16RGB:[[D

    .line 22
    return-void

    .line 24
    nop

    .line 25
    :array_0
    .array-data 8
        0x3fd9aeb3dd11be6eL    # 0.401288
        0x3fe4ce379b77c02bL    # 0.650173
        -0x4055a6e75ff609ddL    # -0.051461
    .end array-data

    .line 26
    :array_1
    .array-data 8
        -0x402ffb9bed30f063L    # -0.250268
        0x3ff345479d4d8341L    # 1.204414
        0x3fa77a2cecc814d7L    # 0.045854
    .end array-data

    :array_2
    .array-data 8
        -0x409ef8055fbb517aL    # -0.002079
        0x3fa9103c8e25c811L    # 0.048952
        0x3fee800431bde82dL    # 0.953127
    .end array-data
.end method
