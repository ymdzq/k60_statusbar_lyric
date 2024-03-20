.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p2}, Landroid/view/KeyEvent;->isMetaKey(I)Z

    .line 7
    move-result p1

    .line 10
    const/4 p3, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    const/16 p1, 0x71

    .line 14
    if-eq p2, p1, :cond_1

    .line 16
    const/16 p1, 0x72

    .line 18
    if-ne p2, p1, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move p1, p3

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 25
    :goto_1
    if-nez p1, :cond_3

    .line 26
    iget-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 28
    iget-object p1, p1, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 30
    if-nez p1, :cond_2

    .line 32
    const/4 p1, 0x0

    .line 34
    :cond_2
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 35
    move-result p1

    .line 38
    if-eqz p1, :cond_3

    .line 39
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$1$3;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 41
    invoke-static {p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 43
    :cond_3
    return p3
    .line 46
.end method
