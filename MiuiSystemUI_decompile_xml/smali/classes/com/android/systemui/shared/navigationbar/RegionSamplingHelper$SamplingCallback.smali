.class public interface abstract Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public abstract getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
.end method

.method public isSamplingEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public abstract onRegionDarknessChanged(Z)V
.end method
