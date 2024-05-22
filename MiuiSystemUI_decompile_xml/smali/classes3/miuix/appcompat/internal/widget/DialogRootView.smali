.class public Lmiuix/appcompat/internal/widget/DialogRootView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

.field public mNotifyConfigChanged:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    return-void
.end method


# virtual methods
.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 6
    return-void
    .line 8
.end method

.method public final onLayout(ZIIII)V
    .locals 10

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 2
    iget-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 5
    if-eqz p1, :cond_1

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mNotifyConfigChanged:Z

    .line 10
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 16
    move-result-object p1

    .line 19
    iget v2, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 20
    iget v3, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 22
    iget-object v4, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    .line 24
    if-eqz v4, :cond_0

    .line 26
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 32
    move-result-object v5

    .line 35
    move v6, p2

    .line 36
    move v7, p3

    .line 37
    move v8, p4

    .line 38
    move v9, p5

    .line 39
    invoke-interface/range {v4 .. v9}, Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;->onConfigurationChanged(Landroid/content/res/Configuration;IIII)V

    .line 40
    :cond_0
    new-instance p1, Lmiuix/appcompat/internal/widget/DialogRootView$1;

    .line 43
    move-object v0, p1

    .line 45
    move-object v1, p0

    .line 46
    move v4, p2

    .line 47
    move v5, p3

    .line 48
    move v6, p4

    .line 49
    move v7, p5

    .line 50
    invoke-direct/range {v0 .. v7}, Lmiuix/appcompat/internal/widget/DialogRootView$1;-><init>(Lmiuix/appcompat/internal/widget/DialogRootView;IIIIII)V

    .line 51
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    .line 54
    :cond_1
    return-void
    .line 57
.end method

.method public setConfigurationChangedCallback(Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmiuix/appcompat/internal/widget/DialogRootView;->mCallback:Lmiuix/appcompat/internal/widget/DialogRootView$ConfigurationChangedCallback;

    .line 2
    return-void
    .line 4
.end method
