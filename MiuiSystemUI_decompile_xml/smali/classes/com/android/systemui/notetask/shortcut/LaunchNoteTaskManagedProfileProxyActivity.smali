.class public final Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;
.super Landroidx/activity/ComponentActivity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/systemui/notetask/NoteTaskController;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userManager:Landroid/os/UserManager;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 5
    check-cast p1, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 9
    move-result-object p1

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 13
    move-result-object p1

    .line 16
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    move-object v1, v0

    .line 27
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 28
    iget-object v2, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->userManager:Landroid/os/UserManager;

    .line 30
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 32
    invoke-virtual {v2, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_0

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    const/4 v0, 0x0

    .line 41
    :goto_0
    check-cast v0, Landroid/content/pm/UserInfo;

    .line 42
    if-nez v0, :cond_2

    .line 44
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 46
    if-eqz p1, :cond_3

    .line 48
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    .line 50
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    .line 52
    const-string v0, "Fail to find the work profile user."

    .line 54
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    goto :goto_1

    .line 59
    :cond_2
    sget-object p1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->WIDGET_PICKER_SHORTCUT:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 60
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 62
    move-result-object v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskManagedProfileProxyActivity;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 66
    invoke-virtual {v1, p1, v0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V

    .line 68
    :cond_3
    :goto_1
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 71
    return-void
    .line 74
.end method
