.class public final Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;
.super Lcom/android/systemui/statusbar/SignalIcon$IconGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final dataContentDescription:I

.field public final miuiDataType:I

.field public final qsDataType:I


# direct methods
.method public constructor <init>(Ljava/lang/String;[IIIII)V
    .locals 11

    .line 1
    move-object v10, p0

    .line 2
    const/4 v2, 0x0

    .line 3
    const/4 v3, 0x0

    .line 4
    const/4 v5, 0x0

    .line 5
    const/4 v6, 0x0

    .line 6
    const/4 v7, 0x0

    .line 7
    const/4 v8, 0x0

    .line 8
    move-object v0, p0

    .line 9
    move-object v1, p1

    .line 10
    move-object v4, p2

    .line 11
    move v9, p3

    .line 12
    invoke-direct/range {v0 .. v9}, Lcom/android/systemui/statusbar/SignalIcon$IconGroup;-><init>(Ljava/lang/String;[[I[[I[IIIIII)V

    .line 13
    move v0, p4

    .line 16
    iput v0, v10, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;->dataContentDescription:I

    .line 17
    move/from16 v0, p5

    .line 19
    iput v0, v10, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;->qsDataType:I

    .line 21
    move/from16 v0, p6

    .line 23
    iput v0, v10, Lcom/android/systemui/statusbar/SignalIcon$MobileIconGroup;->miuiDataType:I

    .line 25
    return-void
    .line 27
.end method
