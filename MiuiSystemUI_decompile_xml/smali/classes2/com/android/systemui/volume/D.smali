.class public abstract Lcom/android/systemui/volume/D;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BUG:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string/jumbo v0, "volume"

    .line 2
    const/4 v1, 0x3

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 6
    move-result v0

    .line 9
    sput-boolean v0, Lcom/android/systemui/volume/D;->BUG:Z

    .line 10
    return-void
    .line 12
.end method
