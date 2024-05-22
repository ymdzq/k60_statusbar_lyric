.class public final Lcom/android/systemui/notetask/NoteTaskInitializer$onUserUnlockedCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskInitializer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$onUserUnlockedCallback$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onUserUnlocked()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskInitializer$onUserUnlockedCallback$1;->this$0:Lcom/android/systemui/notetask/NoteTaskInitializer;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 4
    iget-object v2, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 6
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 10
    move-result-object v2

    .line 13
    const/4 v3, 0x1

    .line 14
    invoke-virtual {v1, v2, v3}, Lcom/android/systemui/notetask/NoteTaskController;->setNoteTaskShortcutEnabled(Landroid/os/UserHandle;Z)V

    .line 15
    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskInitializer;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 20
    return-void
    .line 23
.end method
