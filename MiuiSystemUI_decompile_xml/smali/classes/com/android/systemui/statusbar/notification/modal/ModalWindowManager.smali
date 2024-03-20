.class public final Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public added:Z

.field public final mBlurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

.field public mLp:Landroid/view/WindowManager$LayoutParams;

.field public mLpChanged:Landroid/view/WindowManager$LayoutParams;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public mWindowView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/BlurUtilsExt;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->added:Z

    .line 6
    const-string/jumbo v0, "window"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 11
    move-result-object p1

    .line 14
    check-cast p1, Landroid/view/WindowManager;

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 17
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mBlurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final apply()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLpChanged:Landroid/view/WindowManager$LayoutParams;

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->copyFrom(Landroid/view/WindowManager$LayoutParams;)I

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mLp:Landroid/view/WindowManager$LayoutParams;

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowManager:Landroid/view/WindowManager;

    .line 16
    invoke-interface {p0, v0, v1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final setBlurRatio(F)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->added:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string/jumbo v1, "setBlurRatio: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 11
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "ModalWindowManager"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mWindowView:Landroid/view/View;

    .line 31
    const/4 v1, 0x0

    .line 33
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/modal/ModalWindowManager;->mBlurUtils:Lcom/android/systemui/statusbar/policy/BlurUtilsExt;

    .line 34
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/systemui/statusbar/policy/BlurUtilsExt;->applyBlur(Landroid/view/View;FZ)V

    .line 36
    :cond_0
    return-void
    .line 39
.end method
