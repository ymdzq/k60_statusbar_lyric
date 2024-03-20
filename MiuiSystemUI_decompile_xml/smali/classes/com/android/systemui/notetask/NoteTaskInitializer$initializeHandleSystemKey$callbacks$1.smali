.class public final Lcom/android/systemui/notetask/NoteTaskInitializer$initializeHandleSystemKey$callbacks$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeHandleSystemKey$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleSystemKey(Landroid/view/KeyEvent;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x137

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    .line 13
    move-result v0

    .line 16
    const/16 v1, 0x2a

    .line 17
    if-ne v0, v1, :cond_1

    .line 19
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isMetaPressed()Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    invoke-virtual {p1}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->KEYBOARD_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/4 p1, 0x0

    .line 36
    :goto_0
    if-eqz p1, :cond_3

    .line 37
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$initializeHandleSystemKey$callbacks$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    .line 39
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 41
    iget-boolean v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 43
    if-nez v0, :cond_2

    .line 45
    goto :goto_1

    .line 47
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    .line 48
    move-result-object v0

    .line 51
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    .line 52
    :cond_3
    :goto_1
    return-void
    .line 55
.end method
