.class public abstract Lcom/android/wm/shell/common/split/SplitScreenConstants;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CONTROLLED_ACTIVITY_TYPES:[I

.field public static final CONTROLLED_WINDOWING_MODES:[I

.field public static final CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    filled-new-array {v0}, [I

    .line 3
    move-result-object v1

    .line 6
    sput-object v1, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_ACTIVITY_TYPES:[I

    .line 7
    const/4 v1, 0x0

    .line 9
    filled-new-array {v0, v1}, [I

    .line 10
    move-result-object v2

    .line 13
    sput-object v2, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES:[I

    .line 14
    const/4 v2, 0x6

    .line 16
    filled-new-array {v0, v1, v2}, [I

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/android/wm/shell/common/split/SplitScreenConstants;->CONTROLLED_WINDOWING_MODES_WHEN_ACTIVE:[I

    .line 21
    return-void
    .line 23
.end method

.method public static final splitPositionToString(I)Ljava/lang/String;
    .locals 1

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    if-eqz p0, :cond_1

    .line 5
    const/4 v0, 0x1

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    const-string p0, "UNKNOWN"

    .line 10
    return-object p0

    .line 12
    :cond_0
    const-string p0, "SPLIT_POSITION_BOTTOM_OR_RIGHT"

    .line 13
    return-object p0

    .line 15
    :cond_1
    const-string p0, "SPLIT_POSITION_TOP_OR_LEFT"

    .line 16
    return-object p0

    .line 18
    :cond_2
    const-string p0, "SPLIT_POSITION_UNDEFINED"

    .line 19
    return-object p0
    .line 21
.end method
