.class Lmiuix/appcompat/app/AlertController$7;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field isTablet:Z

.field final synthetic this$0:Lmiuix/appcompat/app/AlertController;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/app/AlertController;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-direct {p0, p2}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 4
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onEnd(Landroid/view/WindowInsetsAnimation;)V

    .line 2
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 5
    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 8
    iget-object p1, p1, Lmiuix/appcompat/app/AlertController;->mWindow:Landroid/view/Window;

    .line 10
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 16
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 26
    move-result-object v0

    .line 29
    iget v1, v0, Landroid/graphics/Insets;->bottom:I

    .line 30
    if-gtz v1, :cond_0

    .line 32
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 34
    iget-object v1, v1, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 36
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 38
    move-result v1

    .line 41
    const/4 v2, 0x0

    .line 42
    cmpg-float v1, v1, v2

    .line 43
    if-gez v1, :cond_0

    .line 45
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 47
    const/4 v2, 0x0

    .line 49
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 50
    :cond_0
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 53
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertController;->updateParentPanelMarginByWindowInsets(Landroid/view/WindowInsets;)V

    .line 55
    iget-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 58
    if-nez p1, :cond_1

    .line 60
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 62
    iget p1, v0, Landroid/graphics/Insets;->bottom:I

    .line 64
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 66
    :cond_1
    return-void
    .line 69
.end method

.method public onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;->onPrepare(Landroid/view/WindowInsetsAnimation;)V

    .line 2
    sget-object p1, Lmiuix/appcompat/widget/DialogAnimHelper;->sDialogAnim:Lmiuix/appcompat/widget/dialoganim/IDialogAnim;

    .line 5
    if-eqz p1, :cond_0

    .line 7
    invoke-interface {p1}, Lmiuix/appcompat/widget/dialoganim/IDialogAnim;->cancelAnimator()V

    .line 9
    :cond_0
    iget-object p1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 12
    const/4 v0, 0x0

    .line 14
    iput-boolean v0, p1, Lmiuix/appcompat/app/AlertController;->mInsetsAnimationPlayed:Z

    .line 15
    sget-boolean p1, Lmiuix/os/Build;->IS_TABLET:Z

    .line 17
    iput-boolean p1, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 19
    return-void
    .line 21
.end method

.method public onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 5

    .line 1
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 2
    move-result p2

    .line 5
    invoke-virtual {p1, p2}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 6
    move-result-object p2

    .line 9
    invoke-static {}, Landroid/view/WindowInsets$Type;->navigationBars()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1, v0}, Landroid/view/WindowInsets;->getInsets(I)Landroid/graphics/Insets;

    .line 14
    move-result-object v0

    .line 17
    iget v1, p2, Landroid/graphics/Insets;->bottom:I

    .line 18
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 20
    iget v2, v2, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 22
    iget v3, v0, Landroid/graphics/Insets;->bottom:I

    .line 24
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 26
    move-result v2

    .line 29
    sub-int/2addr v1, v2

    .line 30
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 31
    move-result v2

    .line 34
    invoke-virtual {p1, v2}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 35
    move-result v2

    .line 38
    if-eqz v2, :cond_2

    .line 39
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 41
    iget-boolean v2, v2, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 43
    if-eqz v2, :cond_0

    .line 45
    new-instance v2, Ljava/lang/StringBuilder;

    .line 47
    const-string v3, "WindowInsetsAnimation onProgress mPanelAndImeMargin : "

    .line 49
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget-object v3, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 54
    iget v3, v3, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 56
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 58
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 61
    move-result-object v2

    .line 64
    const-string v3, "AlertController"

    .line 65
    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    new-instance v2, Ljava/lang/StringBuilder;

    .line 70
    const-string v4, "WindowInsetsAnimation onProgress ime : "

    .line 72
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iget p2, p2, Landroid/graphics/Insets;->bottom:I

    .line 77
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 82
    move-result-object p2

    .line 85
    invoke-static {v3, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    new-instance p2, Ljava/lang/StringBuilder;

    .line 89
    const-string v2, "WindowInsetsAnimation onProgress navigationBar : "

    .line 91
    invoke-direct {p2, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget v0, v0, Landroid/graphics/Insets;->bottom:I

    .line 96
    invoke-static {p2, v0, v3}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 98
    :cond_0
    if-gez v1, :cond_1

    .line 101
    const/4 p2, 0x0

    .line 103
    goto :goto_0

    .line 104
    :cond_1
    move p2, v1

    .line 105
    :goto_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 106
    neg-int p2, p2

    .line 108
    invoke-virtual {v0, p2}, Lmiuix/appcompat/app/AlertController;->translateDialogPanel(I)V

    .line 109
    :cond_2
    iget-boolean p2, p0, Lmiuix/appcompat/app/AlertController$7;->isTablet:Z

    .line 112
    if-nez p2, :cond_3

    .line 114
    iget-object p0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 116
    invoke-virtual {p0, v1}, Lmiuix/appcompat/app/AlertController;->updateDimBgBottomMargin(I)V

    .line 118
    :cond_3
    return-object p1
    .line 121
.end method

.method public onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 2
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertController;->getDialogPanelMargin()I

    .line 4
    move-result v1

    .line 7
    int-to-float v1, v1

    .line 8
    iget-object v2, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 9
    iget-object v2, v2, Lmiuix/appcompat/app/AlertController;->mParentPanel:Lmiuix/appcompat/internal/widget/DialogParentPanel2;

    .line 11
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getTranslationY()F

    .line 13
    move-result v2

    .line 16
    add-float/2addr v2, v1

    .line 17
    float-to-int v1, v2

    .line 18
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 19
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 21
    iget-boolean v0, v0, Lmiuix/appcompat/app/AlertController;->mIsDebugEnabled:Z

    .line 23
    if-eqz v0, :cond_0

    .line 25
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "WindowInsetsAnimation onStart mPanelAndImeMargin : "

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-object v1, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 34
    iget v1, v1, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 36
    const-string v2, "AlertController"

    .line 38
    invoke-static {v0, v1, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 40
    :cond_0
    iget-object v0, p0, Lmiuix/appcompat/app/AlertController$7;->this$0:Lmiuix/appcompat/app/AlertController;

    .line 43
    iget v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 45
    if-gtz v1, :cond_1

    .line 47
    const/4 v1, 0x0

    .line 49
    iput v1, v0, Lmiuix/appcompat/app/AlertController;->mPanelAndImeMargin:I

    .line 50
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/WindowInsetsAnimation$Callback;->onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;

    .line 52
    move-result-object p0

    .line 55
    return-object p0
    .line 56
.end method
