.class public final Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/shared/navigationbar/RegionSamplingHelper$SamplingCallback;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/MiuiLightBarController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/MiuiLightBarController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getSampledRegion(Landroid/view/View;)Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 2
    if-eqz p1, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSamplingBounds:Landroid/graphics/Rect;

    .line 11
    return-object p0
    .line 13
.end method

.method public final onRegionDarknessChanged(Z)V
    .locals 0

    .line 1
    xor-int/lit8 p1, p1, 0x1

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController$1;->this$0:Lcom/android/systemui/statusbar/phone/MiuiLightBarController;

    .line 4
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->mSmartDarkLight:Z

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/LightBarController;->mAppearanceRegions:[Lcom/android/internal/view/AppearanceRegion;

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/phone/MiuiLightBarController;->updateStatus([Lcom/android/internal/view/AppearanceRegion;)V

    .line 10
    return-void
    .line 13
.end method
