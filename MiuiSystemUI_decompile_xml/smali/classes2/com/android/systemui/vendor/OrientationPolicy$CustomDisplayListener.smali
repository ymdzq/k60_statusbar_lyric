.class public final Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/vendor/OrientationPolicy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/vendor/OrientationPolicy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;->this$0:Lcom/android/systemui/vendor/OrientationPolicy;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onDisplayAdded(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onDisplayChanged(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/vendor/OrientationPolicy$CustomDisplayListener;->this$0:Lcom/android/systemui/vendor/OrientationPolicy;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/vendor/OrientationPolicy;->writeRotationForBsp()V

    .line 4
    return-void
    .line 7
.end method

.method public final onDisplayRemoved(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method