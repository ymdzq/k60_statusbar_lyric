.class public final Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

.field public final synthetic $expandable:Lcom/android/systemui/animation/Expandable;

.field public final synthetic this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/animation/Expandable;Lcom/android/systemui/qs/FgsManagerControllerImpl;Lcom/android/systemui/statusbar/phone/SystemUIDialog;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$expandable:Lcom/android/systemui/animation/Expandable;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$expandable:Lcom/android/systemui/animation/Expandable;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    new-instance v2, Lcom/android/systemui/animation/DialogCuj;

    .line 7
    const/16 v3, 0x3a

    .line 9
    const-string v4, "active_background_apps"

    .line 11
    invoke-direct {v2, v3, v4}, Lcom/android/systemui/animation/DialogCuj;-><init>(ILjava/lang/String;)V

    .line 13
    check-cast v0, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;

    .line 16
    invoke-virtual {v0, v2}, Lcom/android/systemui/animation/Expandable$Companion$fromView$1;->dialogLaunchController(Lcom/android/systemui/animation/DialogCuj;)Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;

    .line 18
    move-result-object v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    move-object v0, v1

    .line 23
    :goto_0
    if-eqz v0, :cond_1

    .line 24
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 26
    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->dialogLaunchAnimator:Lcom/android/systemui/animation/DialogLaunchAnimator;

    .line 28
    iget-object v3, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 30
    sget-object v4, Lcom/android/systemui/animation/DialogLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 32
    const/4 v4, 0x0

    .line 34
    invoke-virtual {v2, v3, v0, v4}, Lcom/android/systemui/animation/DialogLaunchAnimator;->show(Landroid/app/Dialog;Lcom/android/systemui/animation/ViewDialogLaunchAnimatorController;Z)V

    .line 35
    goto :goto_1

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 39
    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 41
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 44
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 46
    move-result-object v0

    .line 49
    if-eqz v0, :cond_2

    .line 50
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 52
    move-result-object v1

    .line 55
    :cond_2
    if-nez v1, :cond_3

    .line 56
    goto :goto_2

    .line 58
    :cond_3
    const/16 v0, 0x51

    .line 59
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 61
    :goto_2
    if-nez v1, :cond_4

    .line 63
    goto :goto_3

    .line 65
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 66
    iget-object v0, v0, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    .line 68
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 70
    move-result-object v0

    .line 73
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 74
    move-result-object v0

    .line 77
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 78
    iget-object v2, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->this$0:Lcom/android/systemui/qs/FgsManagerControllerImpl;

    .line 80
    iget-object v2, v2, Lcom/android/systemui/qs/FgsManagerControllerImpl;->context:Landroid/content/Context;

    .line 82
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 84
    move-result-object v2

    .line 87
    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 88
    move-result-object v2

    .line 91
    iget v2, v2, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 92
    int-to-float v2, v2

    .line 94
    const/16 v3, 0xa0

    .line 95
    int-to-float v3, v3

    .line 97
    div-float/2addr v2, v3

    .line 98
    const/high16 v3, 0x41f00000    # 30.0f

    .line 99
    mul-float/2addr v2, v3

    .line 101
    invoke-static {v2}, Lkotlin/math/MathKt__MathJVMKt;->roundToInt(F)I

    .line 102
    move-result v2

    .line 105
    sub-int/2addr v0, v2

    .line 106
    iput v0, v1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 107
    :goto_3
    iget-object p0, p0, Lcom/android/systemui/qs/FgsManagerControllerImpl$showDialog$1$3;->$dialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 109
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 111
    move-result-object p0

    .line 114
    if-nez p0, :cond_5

    .line 115
    goto :goto_4

    .line 117
    :cond_5
    invoke-virtual {p0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 118
    :goto_4
    return-void
    .line 121
.end method
