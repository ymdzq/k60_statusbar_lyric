.class public final synthetic Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

.field public final synthetic f$1:I

.field public final synthetic f$2:F


# direct methods
.method public synthetic constructor <init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 5
    iput p2, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$1:I

    .line 7
    const/high16 p1, 0x3f800000    # 1.0f

    .line 9
    iput p1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$2:F

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$0:Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;

    .line 2
    iget v1, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$1:I

    .line 4
    iget p0, p0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda0;->f$2:F

    .line 6
    const/4 v2, 0x0

    .line 8
    invoke-virtual {v0, v1, v2}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->decodeBitmap(IZ)Landroid/graphics/Bitmap;

    .line 9
    move-result-object v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    new-instance v2, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda2;

    .line 15
    invoke-direct {v2, v0, v1, p0}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation$$ExternalSyntheticLambda2;-><init>(Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;Landroid/graphics/Bitmap;F)V

    .line 17
    iget-object p0, v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwFrameAnimation;->mMainHandler:Landroid/os/Handler;

    .line 20
    invoke-virtual {p0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 22
    :cond_0
    return-void
    .line 25
.end method
