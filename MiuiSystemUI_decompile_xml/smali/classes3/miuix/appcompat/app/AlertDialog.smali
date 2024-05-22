.class public Lmiuix/appcompat/app/AlertDialog;
.super Landroidx/appcompat/app/AppCompatDialog;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field public final mAlert:Lmiuix/appcompat/app/AlertController;

.field public final mOnDismiss:Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 2

    .line 1
    invoke-static {p2, p1}, Lmiuix/appcompat/app/AlertDialog;->resolveDialogTheme(ILandroid/content/Context;)I

    .line 2
    move-result p2

    .line 5
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/app/AppCompatDialog;-><init>(Landroid/content/Context;I)V

    .line 6
    new-instance p2, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 9
    invoke-direct {p2, p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    .line 11
    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 14
    new-instance p2, Lmiuix/appcompat/app/AlertController;

    .line 16
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    move-result-object v0

    .line 21
    const-class v1, Landroid/view/ContextThemeWrapper;

    .line 22
    if-ne v0, v1, :cond_0

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 27
    move-result-object p1

    .line 30
    :goto_0
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 31
    move-result-object v0

    .line 34
    invoke-direct {p2, p1, p0, v0}, Lmiuix/appcompat/app/AlertController;-><init>(Landroid/content/Context;Landroidx/appcompat/app/AppCompatDialog;Landroid/view/Window;)V

    .line 35
    iput-object p2, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 38
    return-void
    .line 40
.end method

.method public static isSystemSpecialUiThread()Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    const-string v1, "android.ui"

    .line 10
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_1

    .line 16
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 18
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "android.imms"

    .line 26
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 28
    move-result v0

    .line 31
    if-nez v0, :cond_1

    .line 32
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 38
    move-result-object v0

    .line 41
    const-string v1, "system_server"

    .line 42
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 44
    move-result v0

    .line 47
    if-eqz v0, :cond_0

    .line 48
    goto :goto_0

    .line 50
    :cond_0
    const/4 v0, 0x0

    .line 51
    goto :goto_1

    .line 52
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 53
    :goto_1
    return v0
    .line 54
.end method

.method public static resolveDialogTheme(ILandroid/content/Context;)I
    .locals 2

    .line 1
    ushr-int/lit8 v0, p0, 0x18

    .line 2
    and-int/lit16 v0, v0, 0xff

    .line 4
    const/4 v1, 0x1

    .line 6
    if-lt v0, v1, :cond_0

    .line 7
    return p0

    .line 9
    :cond_0
    new-instance p0, Landroid/util/TypedValue;

    .line 10
    invoke-direct {p0}, Landroid/util/TypedValue;-><init>()V

    .line 12
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    .line 15
    move-result-object p1

    .line 18
    const v0, 0x7f040509    # @attr/miuiAlertDialogTheme

    .line 19
    invoke-virtual {p1, v0, p0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 22
    iget p0, p0, Landroid/util/TypedValue;->resourceId:I

    .line 25
    return p0
    .line 27
.end method


# virtual methods
.method public final dismiss()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 10
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_6

    .line 16
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 18
    move-result-object v1

    .line 21
    if-eqz v1, :cond_1

    .line 22
    invoke-virtual {v1}, Landroid/app/Activity;->isFinishing()Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_1

    .line 28
    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 32
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    if-eqz v0, :cond_5

    .line 43
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 45
    move-result-object v1

    .line 48
    if-eqz v1, :cond_3

    .line 49
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    .line 51
    move-result-object v1

    .line 54
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    .line 59
    move-result-object v2

    .line 62
    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    .line 63
    move-result-object v2

    .line 66
    if-ne v1, v2, :cond_2

    .line 67
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 69
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mOnDismiss:Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;

    .line 71
    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/AlertController;->dismiss(Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda1;)V

    .line 73
    goto :goto_0

    .line 76
    :cond_2
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;

    .line 77
    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$$ExternalSyntheticLambda0;-><init>(Lmiuix/appcompat/app/AlertDialog;)V

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 82
    goto :goto_0

    .line 85
    :cond_3
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 86
    move-result v0

    .line 89
    if-nez v0, :cond_4

    .line 90
    goto :goto_0

    .line 92
    :cond_4
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 93
    goto :goto_0

    .line 96
    :cond_5
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 97
    goto :goto_0

    .line 100
    :cond_6
    if-eqz v0, :cond_7

    .line 101
    invoke-virtual {v0}, Landroid/view/View;->isAttachedToWindow()Z

    .line 103
    move-result v0

    .line 106
    if-nez v0, :cond_7

    .line 107
    goto :goto_0

    .line 109
    :cond_7
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 110
    :goto_0
    return-void
    .line 113
.end method

.method public final dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 7
    move-result v0

    .line 10
    const/16 v1, 0x52

    .line 11
    const/4 v2, 0x1

    .line 13
    if-ne v0, v1, :cond_0

    .line 14
    move v0, v2

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    const/4 v0, 0x0

    .line 18
    :goto_0
    if-eqz v0, :cond_1

    .line 19
    return v2

    .line 21
    :cond_1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public final getAssociatedActivity()Landroid/app/Activity;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/app/Dialog;->getOwnerActivity()Landroid/app/Activity;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    if-nez v0, :cond_2

    .line 10
    if-eqz p0, :cond_2

    .line 12
    instance-of v1, p0, Landroid/app/Activity;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    move-object v0, p0

    .line 18
    check-cast v0, Landroid/app/Activity;

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    instance-of v1, p0, Landroid/content/ContextWrapper;

    .line 22
    if-eqz v1, :cond_1

    .line 24
    check-cast p0, Landroid/content/ContextWrapper;

    .line 26
    invoke-virtual {p0}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    .line 28
    move-result-object p0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p0, 0x0

    .line 33
    goto :goto_0

    .line 34
    :cond_2
    return-object v0
    .line 35
.end method

.method public final getButton(I)Landroid/widget/Button;
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 2
    const/4 v0, -0x3

    .line 4
    if-eq p1, v0, :cond_4

    .line 5
    const/4 v0, -0x2

    .line 7
    if-eq p1, v0, :cond_3

    .line 8
    const/4 v0, -0x1

    .line 10
    if-eq p1, v0, :cond_2

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 13
    if-eqz v0, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 17
    move-result v0

    .line 20
    if-nez v0, :cond_1

    .line 21
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mExtraButtonList:Ljava/util/List;

    .line 23
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object p0

    .line 28
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v0

    .line 32
    if-eqz v0, :cond_1

    .line 33
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 35
    move-result-object v0

    .line 38
    check-cast v0, Lmiuix/appcompat/app/AlertController$ButtonInfo;

    .line 39
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$900(Lmiuix/appcompat/app/AlertController$ButtonInfo;)I

    .line 41
    move-result v1

    .line 44
    if-ne v1, p1, :cond_0

    .line 45
    invoke-static {v0}, Lmiuix/appcompat/app/AlertController$ButtonInfo;->access$400(Lmiuix/appcompat/app/AlertController$ButtonInfo;)Lmiuix/internal/widget/GroupButton;

    .line 47
    move-result-object p0

    .line 50
    goto :goto_0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    goto :goto_0

    .line 53
    :cond_2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonPositive:Landroid/widget/Button;

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNegative:Landroid/widget/Button;

    .line 57
    goto :goto_0

    .line 59
    :cond_4
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mButtonNeutral:Landroid/widget/Button;

    .line 60
    :goto_0
    return-object p0
    .line 62
.end method

.method public final isChecked()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 2
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 4
    const v1, 0x1020001    # @android:id/checkbox

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/widget/CheckBox;

    .line 13
    if-nez v0, :cond_0

    .line 15
    const/4 p0, 0x0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 19
    move-result v0

    .line 22
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsChecked:Z

    .line 23
    move p0, v0

    .line 25
    :goto_0
    return p0
    .line 26
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 15
    iget-boolean v1, v1, Lmiuix/appcompat/app/AlertController;->mHapticFeedbackEnabled:Z

    .line 17
    if-eqz v1, :cond_0

    .line 19
    sget v1, Lmiuix/view/HapticFeedbackConstants;->MIUI_ALERT:I

    .line 21
    sget v2, Lmiuix/view/HapticFeedbackConstants;->MIUI_POPUP_NORMAL:I

    .line 23
    invoke-static {v0, v1, v2}, Lmiuix/view/HapticCompat;->performHapticFeedbackAsync(Landroid/view/View;II)V

    .line 25
    :cond_0
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 28
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 30
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 33
    move-result v0

    .line 36
    if-nez v0, :cond_1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 40
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 42
    move-result-object v1

    .line 45
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    .line 46
    and-int/lit8 v1, v1, 0xf

    .line 48
    or-int/lit8 v1, v1, 0x30

    .line 50
    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 52
    new-instance v1, Lmiuix/appcompat/app/AlertController$7;

    .line 55
    const/4 v2, 0x1

    .line 57
    invoke-direct {v1, p0, v2}, Lmiuix/appcompat/app/AlertController$7;-><init>(Lmiuix/appcompat/app/AlertController;I)V

    .line 58
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v3, v1}, Landroid/view/View;->setWindowInsetsAnimationCallback(Landroid/view/WindowInsetsAnimation$Callback;)V

    .line 65
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    new-instance v1, Lmiuix/appcompat/app/AlertController$8;

    .line 72
    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertController$8;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 74
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnApplyWindowInsetsListener(Landroid/view/View$OnApplyWindowInsetsListener;)V

    .line 77
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mSetupWindowInsetsAnimation:Z

    .line 80
    :goto_0
    return-void
    .line 82
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 9

    .line 1
    invoke-static {}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 8
    move-result-object v0

    .line 11
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$1;

    .line 12
    invoke-direct {v1}, Lmiuix/appcompat/app/AlertDialog$1;-><init>()V

    .line 14
    iput-object v1, v0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 17
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 19
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x0

    .line 25
    if-nez v0, :cond_1

    .line 26
    iget-object v0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 28
    iget-boolean v0, v0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 30
    if-nez v0, :cond_2

    .line 32
    :cond_1
    invoke-virtual {p0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    .line 34
    move-result-object v0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 38
    :cond_2
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->onCreate(Landroid/os/Bundle;)V

    .line 41
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 44
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    const/4 v0, 0x1

    .line 49
    if-eqz p1, :cond_3

    .line 50
    move p1, v0

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    move p1, v1

    .line 54
    :goto_0
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 55
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mContext:Landroid/content/Context;

    .line 57
    invoke-static {p1}, Lmiuix/core/util/MiuixUIUtils;->isFreeformMode(Landroid/content/Context;)Z

    .line 59
    move-result v2

    .line 62
    iput-boolean v2, p0, Lmiuix/appcompat/app/AlertController;->mIsInFreeForm:Z

    .line 63
    iget v2, p0, Lmiuix/appcompat/app/AlertController;->mAlertDialogLayout:I

    .line 65
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mDialog:Landroidx/appcompat/app/AppCompatDialog;

    .line 67
    invoke-virtual {v3, v2}, Landroidx/appcompat/app/AppCompatDialog;->setContentView(I)V

    .line 69
    const v2, 0x7f0a02cc    # @id/dialog_root_view

    .line 72
    iget-object v4, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 75
    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 77
    move-result-object v2

    .line 80
    check-cast v2, Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 81
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 83
    const v2, 0x7f0a02c9    # @id/dialog_dim_bg

    .line 85
    invoke-virtual {v4, v2}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    .line 88
    move-result-object v2

    .line 91
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 92
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 94
    new-instance v5, Lmiuix/appcompat/app/AlertController$4;

    .line 96
    invoke-direct {v5, p0}, Lmiuix/appcompat/app/AlertController$4;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 98
    invoke-virtual {v2, v5}, Lmiuix/appcompat/internal/widget/DialogRootView;->setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 104
    move-result-object v2

    .line 107
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 108
    move-result-object v2

    .line 111
    invoke-virtual {p0, v2}, Lmiuix/appcompat/app/AlertController;->updateRootViewSize(Landroid/content/res/Configuration;)V

    .line 112
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 115
    move-result v5

    .line 118
    const/4 v6, 0x2

    .line 119
    if-eqz v5, :cond_8

    .line 120
    const/4 v5, -0x1

    .line 122
    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setLayout(II)V

    .line 123
    const v5, 0x7f0605ef    # @color/miuix_appcompat_transparent '#00000000'

    .line 126
    invoke-virtual {v4, v5}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 129
    const/4 v5, 0x0

    .line 132
    invoke-virtual {v4, v5}, Landroid/view/Window;->setDimAmount(F)V

    .line 133
    const v5, 0x7f140017    # @style/Animation.Dialog.NoAnimation

    .line 136
    invoke-virtual {v4, v5}, Landroid/view/Window;->setWindowAnimations(I)V

    .line 139
    const v5, -0x7ffff700

    .line 142
    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 145
    check-cast v3, Lmiuix/appcompat/app/AlertDialog;

    .line 148
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 150
    move-result-object v5

    .line 153
    if-eqz v5, :cond_6

    .line 154
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 156
    move-result-object v7

    .line 159
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 160
    move-result v8

    .line 163
    invoke-virtual {v5}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 164
    move-result-object v5

    .line 167
    invoke-virtual {v5}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 168
    move-result-object v5

    .line 171
    iget v5, v5, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 172
    if-nez v5, :cond_5

    .line 174
    if-ne v8, v6, :cond_4

    .line 176
    move v5, v6

    .line 178
    goto :goto_1

    .line 179
    :cond_4
    move v5, v0

    .line 180
    :cond_5
    :goto_1
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 181
    goto :goto_3

    .line 183
    :cond_6
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->getScreenOrientation()I

    .line 184
    move-result v5

    .line 187
    if-ne v5, v6, :cond_7

    .line 188
    move v5, v6

    .line 190
    goto :goto_2

    .line 191
    :cond_7
    move v5, v0

    .line 192
    :goto_2
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 193
    move-result-object v7

    .line 196
    iput v5, v7, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 197
    :goto_3
    invoke-virtual {v4}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 199
    move-result-object v5

    .line 202
    invoke-static {v5}, Lmiuix/appcompat/app/AlertController;->clearFitSystemWindow(Landroid/view/View;)V

    .line 203
    invoke-virtual {v4}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 206
    move-result-object v5

    .line 209
    invoke-virtual {v5, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsSides(I)V

    .line 210
    invoke-virtual {v3}, Lmiuix/appcompat/app/AlertDialog;->getAssociatedActivity()Landroid/app/Activity;

    .line 213
    move-result-object v1

    .line 216
    if-eqz v1, :cond_9

    .line 217
    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 219
    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 223
    move-result-object v1

    .line 226
    iget v1, v1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 227
    const/16 v3, 0x400

    .line 229
    and-int/2addr v1, v3

    .line 231
    if-nez v1, :cond_9

    .line 232
    invoke-virtual {v4, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 234
    goto :goto_4

    .line 237
    :cond_8
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->setupNonImmersiveWindow()V

    .line 238
    :cond_9
    :goto_4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 241
    invoke-virtual {p0, v1, v0}, Lmiuix/appcompat/app/AlertController;->setupView(FZ)V

    .line 243
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object p1

    .line 249
    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 250
    move-result-object p1

    .line 253
    iget v1, p1, Landroid/util/DisplayMetrics;->scaledDensity:F

    .line 254
    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    .line 256
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleView:Landroid/view/View;

    .line 258
    if-eqz v3, :cond_a

    .line 260
    const v4, 0x1020016    # @android:id/title

    .line 262
    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 265
    move-result-object v3

    .line 268
    check-cast v3, Landroid/widget/TextView;

    .line 269
    iput-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 271
    :cond_a
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 273
    if-eqz v3, :cond_c

    .line 275
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSize()F

    .line 277
    move-result v3

    .line 280
    iput v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 281
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextView:Landroid/widget/TextView;

    .line 283
    invoke-virtual {v3}, Landroid/widget/TextView;->getTextSizeUnit()I

    .line 285
    move-result v3

    .line 288
    if-ne v3, v0, :cond_b

    .line 289
    iget v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 291
    div-float/2addr v1, p1

    .line 293
    iput v1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 294
    goto :goto_5

    .line 296
    :cond_b
    if-ne v3, v6, :cond_c

    .line 297
    iget p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 299
    div-float/2addr p1, v1

    .line 301
    iput p1, p0, Lmiuix/appcompat/app/AlertController;->mCustomTitleTextSize:F

    .line 302
    :cond_c
    :goto_5
    iput-object v2, p0, Lmiuix/appcompat/app/AlertController;->configurationAfterInstalled:Landroid/content/res/Configuration;

    .line 304
    iput-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->buildJustNow:Z

    .line 306
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController;->mDialogRootView:Lmiuix/appcompat/internal/widget/DialogRootView;

    .line 308
    new-instance v0, Lmiuix/appcompat/app/AlertController$5;

    .line 310
    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertController$5;-><init>(Lmiuix/appcompat/app/AlertController;)V

    .line 312
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 315
    return-void
    .line 318
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Dialog;->onDetachedFromWindow()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 7
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 9
    filled-new-array {v0, v1}, [Landroid/view/View;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {v0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V

    .line 15
    const/4 v0, 0x0

    .line 18
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 19
    return-void
    .line 22
.end method

.method public final onStart()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroidx/activity/ComponentDialog;->onStart()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_4

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    const/4 v0, 0x0

    .line 17
    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 18
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->reInitLandConfig()V

    .line 21
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->updateWindowCutoutMode()V

    .line 24
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mIsFromRebuild:Z

    .line 27
    if-nez v0, :cond_3

    .line 29
    iget-boolean v0, p0, Lmiuix/appcompat/app/AlertController;->mEnableEnterAnim:Z

    .line 31
    if-eqz v0, :cond_3

    .line 33
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 35
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 37
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isLandscape()Z

    .line 39
    move-result v2

    .line 42
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController;->mShowAnimListenerWrapper:Lmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;

    .line 43
    sget-object v4, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 45
    if-nez v4, :cond_2

    .line 47
    sget-boolean v4, Lmiuix/os/Build;->IS_TABLET:Z

    .line 49
    if-eqz v4, :cond_1

    .line 51
    new-instance v4, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;

    .line 53
    invoke-direct {v4}, Lmiuix/appcompat/widget/dialoganim/PadDialogAnim;-><init>()V

    .line 55
    sput-object v4, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 58
    goto :goto_0

    .line 60
    :cond_1
    new-instance v4, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;

    .line 61
    invoke-direct {v4}, Lmiuix/appcompat/widget/dialoganim/PhoneDialogAnim;-><init>()V

    .line 63
    sput-object v4, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 66
    :cond_2
    :goto_0
    sget-object v4, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 68
    invoke-interface {v4, v0, v1, v2, v3}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->executeShowAnim(Lmiuix/appcompat/internal/widget/DialogParentPanel2;Landroid/view/View;ZLmiuix/appcompat/app/AlertDialog$OnDialogShowAnimListener;)V

    .line 70
    goto :goto_1

    .line 73
    :cond_3
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 74
    const/4 v1, 0x0

    .line 76
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 77
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mDimBg:Landroid/view/View;

    .line 80
    const v1, 0x3e99999a    # 0.3f

    .line 82
    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 85
    :goto_1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 88
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 94
    invoke-virtual {v0, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 96
    :cond_4
    return-void
    .line 99
.end method

.method public final onStop()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->onStop()V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertController;->isDialogImmersive()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 13
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mLayoutChangeListener:Lmiuix/appcompat/app/AlertController$LayoutChangeListener;

    .line 19
    invoke-virtual {v0, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final realDismiss()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatDialog;->dismiss()V

    .line 2
    invoke-static {}, Lmiuix/appcompat/app/AlertDialog;->isSystemSpecialUiThread()Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    invoke-static {}, Landroidx/arch/core/executor/ArchTaskExecutor;->getInstance()Landroidx/arch/core/executor/ArchTaskExecutor;

    .line 11
    move-result-object p0

    .line 14
    iget-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDefaultTaskExecutor:Landroidx/arch/core/executor/DefaultTaskExecutor;

    .line 15
    iput-object v0, p0, Landroidx/arch/core/executor/ArchTaskExecutor;->mDelegate:Landroidx/arch/core/executor/TaskExecutor;

    .line 17
    :cond_0
    return-void
    .line 19
.end method

.method public final setCancelable(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCancelable(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCancelable:Z

    .line 7
    return-void
    .line 9
.end method

.method public final setCanceledOnTouchOutside(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController;->mCanceledOnTouchOutside:Z

    .line 7
    return-void
    .line 9
.end method

.method public final setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p0, p0, Lmiuix/appcompat/app/AlertDialog;->mAlert:Lmiuix/appcompat/app/AlertController;

    .line 5
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController;->mTitle:Ljava/lang/CharSequence;

    .line 7
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController;->mTitleView:Landroid/widget/TextView;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
