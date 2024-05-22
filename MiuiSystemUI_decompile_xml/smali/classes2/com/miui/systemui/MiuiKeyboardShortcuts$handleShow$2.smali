.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 2
    iget-object p1, p1, Lcom/miui/systemui/MiuiKeyboardShortcuts;->keyboardShortcutsDialog:Landroid/app/Dialog;

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    :cond_0
    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    .line 9
    move-result p1

    .line 12
    if-eqz p1, :cond_1

    .line 13
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$handleShow$2;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 15
    invoke-static {p0}, Lcom/miui/systemui/MiuiKeyboardShortcuts;->access$dismissDialog(Lcom/miui/systemui/MiuiKeyboardShortcuts;)V

    .line 17
    :cond_1
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method
