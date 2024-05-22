.class public abstract Lcom/miui/miwallpaper/material/MiuiColorScheme;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static a2:[D

.field public static a3:[D

.field public static final mAccentAndNeutral:Ljava/util/Map;

.field public static n1:[D

.field public static n2:[D

.field public static final tones:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/miwallpaper/material/MiuiColorScheme;->mAccentAndNeutral:Ljava/util/Map;

    .line 7
    const/16 v0, 0x16

    .line 9
    new-array v0, v0, [I

    .line 11
    fill-array-data v0, :array_0

    .line 13
    sput-object v0, Lcom/miui/miwallpaper/material/MiuiColorScheme;->tones:[I

    .line 16
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 4
        0x0
        0x4
        0x7
        0xa
        0xc
        0xf
        0x12
        0x14
        0x1e
        0x28
        0x32
        0x3c
        0x46
        0x50
        0x55
        0x5a
        0x5d
        0x5f
        0x61
        0x62
        0x63
        0x64
    .end array-data
    .line 20
.end method
