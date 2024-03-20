.class public final Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# instance fields
.field public final onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;


# direct methods
.method public constructor <init>(Landroid/window/OnBackInvokedCallback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    const/4 p1, 0x4

    .line 2
    if-eq p2, p1, :cond_0

    .line 3
    const/4 p0, 0x0

    .line 5
    return p0

    .line 6
    :cond_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    .line 7
    move-result p1

    .line 10
    const/4 p2, 0x1

    .line 11
    if-ne p1, p2, :cond_1

    .line 12
    iget-object p0, p0, Lcom/android/systemui/biometrics/ui/binder/OnBackButtonListener;->onBackInvokedCallback:Landroid/window/OnBackInvokedCallback;

    .line 14
    invoke-interface {p0}, Landroid/window/OnBackInvokedCallback;->onBackInvoked()V

    .line 16
    :cond_1
    return p2
    .line 19
.end method
