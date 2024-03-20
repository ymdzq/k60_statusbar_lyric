.class public Lmiuix/appcompat/widget/DialogAnimHelper;
.super Ljava/lang/Object;
.source "DialogAnimHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;
    }
.end annotation


# static fields
.field private static sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;


# direct methods
.method public static cancelAnimator()V
    .locals 1

    .line 30
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-eqz v0, :cond_0

    .line 31
    invoke-interface {v0}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    :cond_0
    return-void
.end method

.method public static executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V
    .locals 1

    .line 36
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    .line 37
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 38
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    goto :goto_0

    .line 40
    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 43
    :cond_1
    :goto_0
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeDismissAnim(Landroid/view/View;Landroid/view/View;Lmiuix/appcompat/widget/DialogAnimHelper$OnDismiss;)V

    const/4 p0, 0x0

    .line 44
    sput-object p0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    return-void
.end method

.method public static executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V
    .locals 1

    .line 19
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    if-nez v0, :cond_1

    .line 20
    sget-boolean v0, Lmiuix/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    .line 21
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    goto :goto_0

    .line 23
    :cond_0
    new-instance v0, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    invoke-direct {v0}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    sput-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 26
    :cond_1
    :goto_0
    sget-object v0, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    invoke-interface {v0, p0, p1, p2, p3}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeShowAnim(Landroid/view/View;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    return-void
.end method
