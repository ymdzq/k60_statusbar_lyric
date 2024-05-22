.class public final synthetic Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

.field public final synthetic f$1:Z

.field public final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;ZLjava/lang/String;I)V
    .locals 0

    .line 1
    iput p4, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 4
    iput-boolean p2, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$1:Z

    .line 6
    iput-object p3, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$2:Ljava/lang/String;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$1:Z

    .line 10
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$2:Ljava/lang/String;

    .line 12
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 14
    check-cast v0, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 16
    invoke-virtual {v0, p0, v1}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setRequestTopUi(Ljava/lang/String;Z)V

    .line 18
    return-void

    .line 21
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$0:Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 22
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl$$ExternalSyntheticLambda23;->f$1:Z

    .line 24
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->updateScrimController()V

    .line 26
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->mNoteTaskControllerLazy:Ldagger/Lazy;

    .line 29
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/android/systemui/notetask/NoteTaskController;

    .line 35
    iget-boolean v1, v0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 37
    if-nez v1, :cond_0

    .line 39
    goto :goto_1

    .line 41
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 42
    const/4 v2, 0x0

    .line 44
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Lcom/android/systemui/notetask/NoteTaskInfo;

    .line 49
    if-nez v1, :cond_1

    .line 51
    goto :goto_1

    .line 53
    :cond_1
    sget-object v2, Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;->INSTANCE:Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;

    .line 54
    iget-object v3, v1, Lcom/android/systemui/notetask/NoteTaskInfo;->launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

    .line 56
    invoke-static {v3, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 58
    move-result v2

    .line 61
    if-nez v2, :cond_2

    .line 62
    goto :goto_1

    .line 64
    :cond_2
    iget-object v0, v0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    .line 65
    const-class v2, Lcom/android/systemui/notetask/NoteTaskController;

    .line 67
    if-eqz p0, :cond_3

    .line 69
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 71
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 77
    invoke-virtual {v0, v1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskOpened(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    .line 80
    goto :goto_1

    .line 83
    :cond_3
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 84
    invoke-static {v2}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 86
    move-result-object p0

    .line 89
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 90
    invoke-virtual {v0, v1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskClosed(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    .line 93
    :goto_1
    return-void

    .line 96
    nop

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 98
.end method
