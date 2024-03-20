.class public Lmiuix/os/Build;
.super Ljava/lang/Object;
.source "Build.java"


# static fields
.field public static final IS_DEBUGGABLE:Z

.field public static final IS_FOLDABLE:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_TABLET:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const-string v0, "ro.product.mod_device"

    const-string v1, ""

    .line 9
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 14
    invoke-static {}, Lmiuix/os/Build;->isTablet()Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 19
    invoke-static {}, Lmiuix/os/Build;->isFoldable()Z

    move-result v0

    sput-boolean v0, Lmiuix/os/Build;->IS_FOLDABLE:Z

    const-string v0, "ro.debuggable"

    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    move v1, v2

    :cond_0
    sput-boolean v1, Lmiuix/os/Build;->IS_DEBUGGABLE:Z

    return-void
.end method

.method private static isFoldable()Z
    .locals 3

    const-string v0, "persist.sys.muiltdisplay_type"

    const/4 v1, 0x1

    .line 29
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private static isTablet()Z
    .locals 2

    const-string v0, "ro.build.characteristics"

    .line 25
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "tablet"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method
