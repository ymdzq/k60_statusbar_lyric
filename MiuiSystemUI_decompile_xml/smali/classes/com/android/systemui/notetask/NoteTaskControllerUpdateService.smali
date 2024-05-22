.class public final Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;
.super Landroidx/lifecycle/LifecycleService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final controller:Lcom/android/systemui/notetask/NoteTaskController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/notetask/NoteTaskController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/lifecycle/LifecycleService;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onCreate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroidx/lifecycle/LifecycleService;->onCreate()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskControllerUpdateService;->controller:Lcom/android/systemui/notetask/NoteTaskController;

    .line 5
    invoke-virtual {p0}, Landroid/app/Service;->getUser()Landroid/os/UserHandle;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Lcom/android/systemui/notetask/NoteTaskController;->updateNoteTaskAsUser(Landroid/os/UserHandle;)V

    .line 11
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    .line 14
    return-void
    .line 17
.end method
