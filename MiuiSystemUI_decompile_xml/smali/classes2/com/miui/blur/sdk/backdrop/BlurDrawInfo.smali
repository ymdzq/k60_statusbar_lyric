.class public interface abstract Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final DEFAULT_SAMPLING_PERIOD_NS:I = 0x1312d00


# virtual methods
.method public abstract getBlurOutline(Landroid/graphics/Outline;)V
.end method

.method public getBlurStyle()Lcom/miui/blur/sdk/backdrop/BlurStyle;
    .locals 0

    .line 1
    sget-object p0, Lcom/miui/blur/sdk/backdrop/BlurStyle;->DEFAULT_LIGHT:Lcom/miui/blur/sdk/backdrop/BlurStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract getBlurViewRootImpl()Landroid/view/ViewRootImpl;
.end method

.method public abstract getHeight()I
.end method

.method public abstract getLocationOnScreen([I)V
.end method

.method public getRequestedSamplingPeriodNs()I
    .locals 0

    .line 1
    const p0, 0x1312d00

    .line 2
    return p0
    .line 5
.end method

.method public abstract getWidth()I
.end method

.method public abstract postInvalidateOnAnimation()V
.end method
