.class public final synthetic Lcom/miui/blur/sdk/backdrop/BlurLayerHolder$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

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
