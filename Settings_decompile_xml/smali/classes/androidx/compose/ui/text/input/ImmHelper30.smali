.class final Landroidx/compose/ui/text/input/ImmHelper30;
.super Ljava/lang/Object;
.source "InputMethodManager.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/ImmHelper;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nInputMethodManager.kt\nKotlin\n*S Kotlin\n*F\n+ 1 InputMethodManager.kt\nandroidx/compose/ui/text/input/ImmHelper30\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,169:1\n1#2:170\n*E\n"
.end annotation


# instance fields
.field private _immHelper21:Landroidx/compose/ui/text/input/ImmHelper21;

.field private final view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string/jumbo v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 123
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 124
    iput-object p1, p0, Landroidx/compose/ui/text/input/ImmHelper30;->view:Landroid/view/View;

    return-void
.end method

.method private final findWindow(Landroid/content/Context;)Landroid/view/Window;
    .locals 0

    .line 164
    :goto_0
    instance-of p0, p1, Landroid/app/Activity;

    if-eqz p0, :cond_0

    check-cast p1, Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    goto :goto_1

    .line 165
    :cond_0
    instance-of p0, p1, Landroid/content/ContextWrapper;

    if-eqz p0, :cond_1

    check-cast p1, Landroid/content/ContextWrapper;

    invoke-virtual {p1}, Landroid/content/ContextWrapper;->getBaseContext()Landroid/content/Context;

    move-result-object p1

    const-string p0, "baseContext"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_1
    return-object p0
.end method

.method private final findWindow(Landroid/view/View;)Landroid/view/Window;
    .locals 2

    .line 159
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v1, v0, Landroidx/compose/ui/window/DialogWindowProvider;

    if-eqz v1, :cond_0

    check-cast v0, Landroidx/compose/ui/window/DialogWindowProvider;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/ui/window/DialogWindowProvider;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-nez v0, :cond_2

    .line 160
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Landroidx/compose/ui/text/input/ImmHelper30;->findWindow(Landroid/content/Context;)Landroid/view/Window;

    move-result-object v0

    :cond_2
    return-object v0
.end method

.method private final getImmHelper21()Landroidx/compose/ui/text/input/ImmHelper21;
    .locals 2

    .line 140
    iget-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper30;->_immHelper21:Landroidx/compose/ui/text/input/ImmHelper21;

    if-nez v0, :cond_0

    new-instance v0, Landroidx/compose/ui/text/input/ImmHelper21;

    iget-object v1, p0, Landroidx/compose/ui/text/input/ImmHelper30;->view:Landroid/view/View;

    invoke-direct {v0, v1}, Landroidx/compose/ui/text/input/ImmHelper21;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper30;->_immHelper21:Landroidx/compose/ui/text/input/ImmHelper21;

    :cond_0
    return-object v0
.end method

.method private final getInsetsControllerCompat()Landroidx/core/view/WindowInsetsControllerCompat;
    .locals 2

    .line 133
    iget-object v0, p0, Landroidx/compose/ui/text/input/ImmHelper30;->view:Landroid/view/View;

    invoke-direct {p0, v0}, Landroidx/compose/ui/text/input/ImmHelper30;->findWindow(Landroid/view/View;)Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Landroidx/core/view/WindowInsetsControllerCompat;

    iget-object p0, p0, Landroidx/compose/ui/text/input/ImmHelper30;->view:Landroid/view/View;

    invoke-direct {v1, v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;-><init>(Landroid/view/Window;Landroid/view/View;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method


# virtual methods
.method public hideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    const-string v0, "imm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 152
    invoke-direct {p0}, Landroidx/compose/ui/text/input/ImmHelper30;->getInsetsControllerCompat()Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 153
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->hide(I)V

    goto :goto_0

    .line 154
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/input/ImmHelper30;->getImmHelper21()Landroidx/compose/ui/text/input/ImmHelper21;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/ImmHelper21;->hideSoftInput(Landroid/view/inputmethod/InputMethodManager;)V

    :goto_0
    return-void
.end method

.method public showSoftInput(Landroid/view/inputmethod/InputMethodManager;)V
    .locals 1

    const-string v0, "imm"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 145
    invoke-direct {p0}, Landroidx/compose/ui/text/input/ImmHelper30;->getInsetsControllerCompat()Landroidx/core/view/WindowInsetsControllerCompat;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 146
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->ime()I

    move-result p0

    invoke-virtual {v0, p0}, Landroidx/core/view/WindowInsetsControllerCompat;->show(I)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-direct {p0}, Landroidx/compose/ui/text/input/ImmHelper30;->getImmHelper21()Landroidx/compose/ui/text/input/ImmHelper21;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/compose/ui/text/input/ImmHelper21;->showSoftInput(Landroid/view/inputmethod/InputMethodManager;)V

    :goto_0
    return-void
.end method
