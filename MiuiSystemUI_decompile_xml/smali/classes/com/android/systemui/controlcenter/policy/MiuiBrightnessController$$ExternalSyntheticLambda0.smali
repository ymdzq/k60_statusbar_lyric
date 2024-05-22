.class public final synthetic Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(FLcom/android/systemui/controlcenter/policy/MiuiBrightnessController;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 5
    iput-boolean p3, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$1:Z

    .line 7
    iput p1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$2:F

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$1:Z

    .line 4
    iget p0, p0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    if-eqz v1, :cond_0

    .line 8
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 10
    iget v0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayId:I

    .line 12
    invoke-virtual {v1, v0, p0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 18
    iget v2, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayId:I

    .line 20
    invoke-virtual {v1, v2}, Landroid/hardware/display/DisplayManager;->getBrightness(I)F

    .line 22
    move-result v3

    .line 25
    cmpl-float v3, p0, v3

    .line 26
    if-nez v3, :cond_1

    .line 28
    iget-object p0, v0, Lcom/android/systemui/controlcenter/policy/MiuiBrightnessController;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 30
    const/high16 v0, 0x7fc00000    # Float.NaN

    .line 32
    invoke-virtual {p0, v2, v0}, Landroid/hardware/display/DisplayManager;->setTemporaryBrightness(IF)V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    invoke-virtual {v1, v2, p0}, Landroid/hardware/display/DisplayManager;->setBrightness(IF)V

    .line 38
    :goto_0
    return-void
    .line 41
.end method
