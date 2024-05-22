.class public abstract synthetic Lkotlinx/coroutines/flow/FlowKt__MergeKt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "kotlinx.coroutines.flow.defaultConcurrency"

    .line 2
    const/16 v1, 0x10

    .line 4
    int-to-long v1, v1

    .line 6
    const/4 v3, 0x1

    .line 7
    int-to-long v3, v3

    .line 8
    const v5, 0x7fffffff

    .line 9
    int-to-long v5, v5

    .line 12
    invoke-static/range {v0 .. v6}, Lkotlinx/coroutines/internal/SystemPropsKt;->systemProp(Ljava/lang/String;JJJ)J

    .line 13
    return-void
    .line 16
.end method
