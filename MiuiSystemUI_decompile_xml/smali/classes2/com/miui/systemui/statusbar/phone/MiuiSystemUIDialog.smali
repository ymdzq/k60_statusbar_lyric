.class public abstract Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# direct methods
.method public static applyFlags(Lmiuix/appcompat/app/AlertDialog;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    const/16 v1, 0x7e1

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->setType(I)V

    .line 8
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 11
    move-result-object p0

    .line 14
    const/high16 v0, 0xa0000

    .line 15
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    .line 17
    return-void
    .line 20
.end method
