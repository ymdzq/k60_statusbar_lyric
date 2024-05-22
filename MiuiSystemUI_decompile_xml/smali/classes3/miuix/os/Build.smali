.class public abstract Lmiuix/os/Build;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final IS_FOLDABLE:Z

.field public static final IS_INTERNATIONAL_BUILD:Z

.field public static final IS_TABLET:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    const-string v0, "ro.product.mod_device"

    .line 2
    const-string v1, ""

    .line 4
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "_global"

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    sput-boolean v0, Lmiuix/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 16
    const-string v0, "ro.build.characteristics"

    .line 18
    invoke-static {v0}, Lmiuix/core/util/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "tablet"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 26
    move-result v0

    .line 29
    sput-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    .line 30
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 32
    const/4 v1, 0x1

    .line 34
    invoke-static {v0, v1}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 35
    move-result v0

    .line 38
    const/4 v2, 0x2

    .line 39
    const/4 v3, 0x0

    .line 40
    if-ne v0, v2, :cond_0

    .line 41
    goto :goto_0

    .line 43
    :cond_0
    move v1, v3

    .line 44
    :goto_0
    sput-boolean v1, Lmiuix/os/Build;->IS_FOLDABLE:Z

    .line 45
    const-string v0, "ro.debuggable"

    .line 47
    invoke-static {v0, v3}, Lmiuix/core/util/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 49
    return-void
    .line 52
.end method
