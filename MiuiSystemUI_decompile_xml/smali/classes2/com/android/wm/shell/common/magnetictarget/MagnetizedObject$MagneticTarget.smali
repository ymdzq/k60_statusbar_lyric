.class public final Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final centerOnScreen:Landroid/graphics/PointF;

.field public magneticFieldRadiusPx:I

.field public final targetView:Landroid/view/View;

.field public final tempLoc:[I


# direct methods
.method public constructor <init>(ILcom/android/wm/shell/common/DismissCircleView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->targetView:Landroid/view/View;

    .line 5
    iput p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->magneticFieldRadiusPx:I

    .line 7
    new-instance p1, Landroid/graphics/PointF;

    .line 9
    invoke-direct {p1}, Landroid/graphics/PointF;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->centerOnScreen:Landroid/graphics/PointF;

    .line 14
    const/4 p1, 0x2

    .line 16
    new-array p1, p1, [I

    .line 17
    iput-object p1, p0, Lcom/android/wm/shell/common/magnetictarget/MagnetizedObject$MagneticTarget;->tempLoc:[I

    .line 19
    return-void
    .line 21
.end method
