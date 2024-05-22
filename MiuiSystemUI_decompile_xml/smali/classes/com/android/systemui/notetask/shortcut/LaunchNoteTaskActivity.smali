.class public final Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final userManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/systemui/notetask/NoteTaskController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 5
    iput-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->userManager:Landroid/os/UserManager;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->userManager:Landroid/os/UserManager;

    .line 5
    invoke-virtual {p1}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {p1}, Landroid/os/UserManager;->isManagedProfile()Z

    .line 11
    move-result p1

    .line 14
    iget-object v1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    if-nez v0, :cond_0

    .line 19
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 21
    const-class p1, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 29
    goto :goto_1

    .line 32
    :cond_0
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    new-instance p1, Landroid/content/Intent;

    .line 36
    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 38
    new-instance v2, Landroid/content/ComponentName;

    .line 41
    const-class v3, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;

    .line 43
    iget-object v1, v1, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 45
    invoke-direct {v2, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 47
    invoke-virtual {p1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 50
    const/high16 v2, 0x10000000

    .line 53
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 55
    invoke-virtual {v1, p1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 58
    goto :goto_1

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->isInMultiWindowMode()Z

    .line 62
    move-result p1

    .line 65
    if-eqz p1, :cond_2

    .line 66
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT_IN_MULTI_WINDOW_MODE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 68
    goto :goto_0

    .line 70
    :cond_2
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 71
    :goto_0
    iget-boolean v0, v1, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 73
    if-nez v0, :cond_3

    .line 75
    goto :goto_1

    .line 77
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/systemui/notetask/NoteTaskController;->getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    .line 82
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 85
    return-void
    .line 88
.end method
