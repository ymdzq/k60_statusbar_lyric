.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationShadeDepthController$DepthListener;


# instance fields
.field public final synthetic f$0:F

.field public final synthetic f$1:Lcom/android/systemui/statusbar/BackDropView;


# direct methods
.method public synthetic constructor <init>(FLcom/android/systemui/statusbar/BackDropView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;->f$0:F

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;->f$1:Lcom/android/systemui/statusbar/BackDropView;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onWallpaperZoomOutChanged(F)V
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    iget v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;->f$0:F

    .line 4
    invoke-static {v1, v0, p1}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 6
    move-result p1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda18;->f$1:Lcom/android/systemui/statusbar/BackDropView;

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getWidth()I

    .line 12
    move-result v0

    .line 15
    int-to-float v0, v0

    .line 16
    const/high16 v1, 0x40000000    # 2.0f

    .line 17
    div-float/2addr v0, v1

    .line 19
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotX(F)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

    .line 23
    move-result v0

    .line 26
    int-to-float v0, v0

    .line 27
    div-float/2addr v0, v1

    .line 28
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setPivotY(F)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 35
    return-void
    .line 38
.end method
