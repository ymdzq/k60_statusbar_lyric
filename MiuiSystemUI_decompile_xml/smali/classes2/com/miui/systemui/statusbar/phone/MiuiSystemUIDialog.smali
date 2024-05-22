.class public abstract Lcom/miui/systemui/statusbar/phone/MiuiSystemUIDialog;
.super Lmiuix/appcompat/app/AlertDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
