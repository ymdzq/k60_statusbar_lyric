.class public Lcom/iqiyi/android/qigsaw/core/DefaultObtainUserConfirmationDialog;
.super Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;
.source "DefaultObtainUserConfirmationDialog.java"


# instance fields
.field private fromUserClick:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 49
    invoke-super {p0, p1}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->onCreate(Landroid/os/Bundle;)V

    .line 50
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->checkInternParametersIllegal()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 55
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, v0}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 56
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, -0x1

    const/4 v2, -0x2

    invoke-virtual {p1, v0, v2}, Landroid/view/Window;->setLayout(II)V

    .line 57
    invoke-virtual {p0, v1}, Landroid/app/Activity;->setFinishOnTouchOutside(Z)V

    .line 59
    new-instance p1, Ljava/text/DecimalFormat;

    const-string v0, "#.00"

    invoke-direct {p1, v0}, Ljava/text/DecimalFormat;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {p0}, Lcom/iqiyi/android/qigsaw/core/ObtainUserConfirmationDialog;->getRealTotalBytesNeedToDownload()J

    return-void
.end method
