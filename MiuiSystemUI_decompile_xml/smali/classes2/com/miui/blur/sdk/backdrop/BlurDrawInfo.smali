.class public interface abstract Lcom/miui/blur/sdk/backdrop/BlurDrawInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


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
