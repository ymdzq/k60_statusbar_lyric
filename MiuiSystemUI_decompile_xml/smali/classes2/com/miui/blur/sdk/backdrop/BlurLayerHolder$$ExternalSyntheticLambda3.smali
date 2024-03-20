.class public final synthetic Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/function/Consumer;


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;

    .line 2
    invoke-interface {p1}, Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;->postInvalidateOnAnimation()V

    .line 4
    return-void
    .line 7
.end method
