.class public final Lcom/android/systemui/notetask/NoteTaskController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FORCE_WORK_NOTE_APPS_ENTRY_POINTS_ON_COPE_DEVICES:Ljava/util/List;

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final activityManager:Landroid/app/ActivityManager;

.field public final context:Landroid/content/Context;

.field public final devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field public final eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

.field public final infoReference:Ljava/util/concurrent/atomic/AtomicReference;

.field public final isEnabled:Z

.field public final keyguardManager:Landroid/app/KeyguardManager;

.field public final optionalBubbles:Ljava/util/Optional;

.field public final resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

.field public final roleManager:Landroid/app/role/RoleManager;

.field public final shortcutManager:Landroid/content/pm/ShortcutManager;

.field public final userManager:Landroid/os/UserManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-class v0, Lcom/android/systemui/notetask/NoteTaskController;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    const-string v0, ""

    .line 14
    :cond_0
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskController;->TAG:Ljava/lang/String;

    .line 16
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->TAIL_BUTTON:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 18
    sget-object v1, Lcom/android/systemui/notetask/NoteTaskEntryPoint;->QUICK_AFFORDANCE:Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 20
    filled-new-array {v0, v1}, [Lcom/android/systemui/notetask/NoteTaskEntryPoint;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    .line 26
    move-result-object v0

    .line 29
    sput-object v0, Lcom/android/systemui/notetask/NoteTaskController;->FORCE_WORK_NOTE_APPS_ENTRY_POINTS_ON_COPE_DEVICES:Ljava/util/List;

    .line 30
    return-void
    .line 32
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/role/RoleManager;Landroid/content/pm/ShortcutManager;Lcom/android/systemui/notetask/NoteTaskInfoResolver;Lcom/android/systemui/notetask/NoteTaskEventLogger;Ljava/util/Optional;Landroid/os/UserManager;Landroid/app/KeyguardManager;Landroid/app/ActivityManager;ZLandroid/app/admin/DevicePolicyManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/notetask/NoteTaskController;->roleManager:Landroid/app/role/RoleManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/notetask/NoteTaskController;->resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/notetask/NoteTaskController;->optionalBubbles:Ljava/util/Optional;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    .line 17
    iput-object p8, p0, Lcom/android/systemui/notetask/NoteTaskController;->keyguardManager:Landroid/app/KeyguardManager;

    .line 19
    iput-object p9, p0, Lcom/android/systemui/notetask/NoteTaskController;->activityManager:Landroid/app/ActivityManager;

    .line 21
    iput-boolean p10, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 23
    iput-object p11, p0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 25
    iput-object p12, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 27
    new-instance p1, Ljava/util/concurrent/atomic/AtomicReference;

    .line 29
    invoke-direct {p1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 34
    return-void
    .line 36
.end method

.method public static synthetic getInfoReference$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final getUserForHandlingNotesTaking(Lcom/android/systemui/notetask/NoteTaskEntryPoint;)Landroid/os/UserHandle;
    .locals 5

    .line 1
    sget-object v0, Lcom/android/systemui/notetask/NoteTaskController;->FORCE_WORK_NOTE_APPS_ENTRY_POINTS_ON_COPE_DEVICES:Ljava/util/List;

    .line 2
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 8
    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 12
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->isOrganizationOwnedDeviceWithManagedProfile()Z

    .line 14
    move-result p1

    .line 17
    if-eqz p1, :cond_3

    .line 18
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 20
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserProfiles()Ljava/util/List;

    .line 22
    move-result-object p1

    .line 25
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 26
    move-result-object p1

    .line 29
    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 30
    move-result v1

    .line 33
    const/4 v2, 0x0

    .line 34
    if-eqz v1, :cond_1

    .line 35
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    move-object v3, v1

    .line 41
    check-cast v3, Landroid/content/pm/UserInfo;

    .line 42
    iget-object v4, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    .line 44
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 46
    invoke-virtual {v4, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    .line 48
    move-result v3

    .line 51
    if-eqz v3, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    move-object v1, v2

    .line 55
    :goto_0
    check-cast v1, Landroid/content/pm/UserInfo;

    .line 56
    if-eqz v1, :cond_2

    .line 58
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    .line 60
    move-result-object v2

    .line 63
    :cond_2
    if-nez v2, :cond_4

    .line 64
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 66
    move-result-object v2

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 71
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 73
    move-result-object v2

    .line 76
    :cond_4
    :goto_1
    return-object v2
    .line 77
.end method

.method public final setNoteTaskShortcutEnabled(Landroid/os/UserHandle;Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    .line 2
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    .line 4
    move-result v0

    .line 7
    const-class v1, Lcom/android/systemui/notetask/NoteTaskController;

    .line 8
    if-nez v0, :cond_0

    .line 10
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 12
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 18
    return-void

    .line 21
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    .line 22
    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 24
    const-class v3, Lcom/android/systemui/notetask/shortcut/CreateNoteTaskShortcutActivity;

    .line 26
    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 28
    const/4 v3, 0x1

    .line 31
    if-eqz p2, :cond_1

    .line 32
    move p2, v3

    .line 34
    goto :goto_0

    .line 35
    :cond_1
    const/4 p2, 0x2

    .line 36
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 37
    check-cast p0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 39
    invoke-virtual {p0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserHandle()Landroid/os/UserHandle;

    .line 41
    move-result-object p0

    .line 44
    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_2

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    const/4 p0, 0x0

    .line 52
    invoke-virtual {v2, p1, p0}, Landroid/content/Context;->createContextAsUser(Landroid/os/UserHandle;I)Landroid/content/Context;

    .line 53
    move-result-object v2

    .line 56
    :goto_1
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 57
    move-result-object p0

    .line 60
    invoke-virtual {p0, v0, p2, v3}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 61
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 64
    invoke-static {v1}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 66
    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 70
    return-void
    .line 73
.end method

.method public final showNoDefaultNotesAppToast()V
    .locals 2

    .line 1
    const v0, 0x7f130acb    # @string/set_default_notes_app_toast_content 'Set default notes app in Settings'

    .line 2
    const/4 v1, 0x0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 6
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 12
    return-void
    .line 15
.end method

.method public final showNoteTaskAsUser(Lcom/android/systemui/notetask/NoteTaskEntryPoint;Landroid/os/UserHandle;)V
    .locals 8

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/notetask/NoteTaskController;->optionalBubbles:Ljava/util/Optional;

    .line 7
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/wm/shell/bubbles/Bubbles;

    .line 14
    if-nez v0, :cond_1

    .line 16
    return-void

    .line 18
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->userManager:Landroid/os/UserManager;

    .line 19
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    .line 21
    move-result v2

    .line 24
    if-nez v2, :cond_2

    .line 25
    return-void

    .line 27
    :cond_2
    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->keyguardManager:Landroid/app/KeyguardManager;

    .line 28
    invoke-virtual {v2}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 30
    move-result v2

    .line 33
    const/4 v3, 0x0

    .line 34
    const/4 v4, 0x1

    .line 35
    const-class v5, Lcom/android/systemui/notetask/NoteTaskController;

    .line 36
    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 40
    move-result v6

    .line 43
    iget-object v7, p0, Lcom/android/systemui/notetask/NoteTaskController;->devicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 44
    invoke-virtual {v7, v1, v6}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    .line 46
    move-result v1

    .line 49
    and-int/lit16 v6, v1, 0x200

    .line 50
    const/16 v7, 0x200

    .line 52
    if-eq v6, v7, :cond_4

    .line 54
    const v6, 0x7fffffff

    .line 56
    and-int/2addr v1, v6

    .line 59
    if-ne v1, v6, :cond_3

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    move v1, v3

    .line 63
    goto :goto_1

    .line 64
    :cond_4
    :goto_0
    move v1, v4

    .line 65
    :goto_1
    if-eqz v1, :cond_5

    .line 66
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 68
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 70
    move-result-object p0

    .line 73
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 74
    return-void

    .line 77
    :cond_5
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController;->resolver:Lcom/android/systemui/notetask/NoteTaskInfoResolver;

    .line 78
    invoke-virtual {v1, p1, v2, p2}, Lcom/android/systemui/notetask/NoteTaskInfoResolver;->resolveInfo(Lcom/android/systemui/notetask/NoteTaskEntryPoint;ZLandroid/os/UserHandle;)Lcom/android/systemui/notetask/NoteTaskInfo;

    .line 80
    move-result-object p1

    .line 83
    if-nez p1, :cond_6

    .line 84
    sget-boolean p1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 86
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 88
    move-result-object p1

    .line 91
    invoke-virtual {p1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 92
    invoke-virtual {p0}, Lcom/android/systemui/notetask/NoteTaskController;->showNoDefaultNotesAppToast()V

    .line 95
    return-void

    .line 98
    :cond_6
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController;->infoReference:Ljava/util/concurrent/atomic/AtomicReference;

    .line 99
    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 101
    :try_start_0
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 104
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 106
    move-result-object v1

    .line 109
    invoke-virtual {v1}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 110
    iget-object v1, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->launchMode:Lcom/android/systemui/notetask/NoteTaskLaunchMode;

    .line 113
    instance-of v2, v1, Lcom/android/systemui/notetask/NoteTaskLaunchMode$AppBubble;
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    iget-object v6, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 117
    if-eqz v2, :cond_7

    .line 119
    :try_start_1
    invoke-static {p1}, Lcom/android/systemui/notetask/NoteTaskControllerKt;->access$createNoteTaskIntent(Lcom/android/systemui/notetask/NoteTaskInfo;)Landroid/content/Intent;

    .line 121
    move-result-object p0

    .line 124
    const p1, 0x7f08110a    # @drawable/ic_note_task_shortcut_widget 'res/drawable/ic_note_task_shortcut_widget.xml'

    .line 125
    invoke-static {v6, p1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 128
    move-result-object p1

    .line 131
    check-cast v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;

    .line 132
    iget-object v1, v0, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;->this$0:Lcom/android/wm/shell/bubbles/BubbleController;

    .line 134
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 136
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;

    .line 138
    invoke-direct {v2, v0, p0, p2, p1}, Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/bubbles/BubbleController$BubblesImpl;Landroid/content/Intent;Landroid/os/UserHandle;Landroid/graphics/drawable/Icon;)V

    .line 140
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 143
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 145
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 148
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 150
    move-result-object p0

    .line 153
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 154
    goto :goto_2

    .line 157
    :cond_7
    instance-of v0, v1, Lcom/android/systemui/notetask/NoteTaskLaunchMode$Activity;

    .line 158
    if-eqz v0, :cond_a

    .line 160
    iget-boolean v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->isKeyguardLocked:Z
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 162
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController;->eventLogger:Lcom/android/systemui/notetask/NoteTaskEventLogger;

    .line 164
    if-eqz v0, :cond_9

    .line 166
    :try_start_2
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->activityManager:Landroid/app/ActivityManager;

    .line 168
    iget-object v0, p1, Lcom/android/systemui/notetask/NoteTaskInfo;->packageName:Ljava/lang/String;

    .line 170
    invoke-virtual {p0, v4}, Landroid/app/ActivityManager;->getRunningTasks(I)Ljava/util/List;

    .line 172
    move-result-object p0

    .line 175
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 176
    move-result v2

    .line 179
    xor-int/2addr v2, v4

    .line 180
    if-eqz v2, :cond_8

    .line 181
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 183
    move-result-object p0

    .line 186
    check-cast p0, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 187
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 189
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 191
    move-result-object p0

    .line 194
    invoke-static {v0, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 195
    move-result p0

    .line 198
    if-eqz p0, :cond_8

    .line 199
    move v3, v4

    .line 201
    :cond_8
    if-eqz v3, :cond_9

    .line 202
    new-instance p0, Landroid/content/Intent;

    .line 204
    const-string v0, "android.intent.action.MAIN"

    .line 206
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 208
    const-string v0, "android.intent.category.HOME"

    .line 211
    invoke-virtual {p0, v0}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 213
    const/high16 v0, 0x10000000

    .line 216
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 218
    invoke-virtual {v6, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 221
    invoke-virtual {v1, p1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskClosed(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    .line 224
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 227
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 229
    move-result-object p0

    .line 232
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 233
    goto :goto_2

    .line 236
    :cond_9
    invoke-static {p1}, Lcom/android/systemui/notetask/NoteTaskControllerKt;->access$createNoteTaskIntent(Lcom/android/systemui/notetask/NoteTaskInfo;)Landroid/content/Intent;

    .line 237
    move-result-object p0

    .line 240
    invoke-virtual {v6, p0, p2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 241
    invoke-virtual {v1, p1}, Lcom/android/systemui/notetask/NoteTaskEventLogger;->logNoteTaskOpened(Lcom/android/systemui/notetask/NoteTaskInfo;)V

    .line 244
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 247
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 249
    move-result-object p0

    .line 252
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 253
    :cond_a
    :goto_2
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 256
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 258
    move-result-object p0

    .line 261
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;
    :try_end_2
    .catch Landroid/content/ActivityNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 262
    goto :goto_3

    .line 265
    :catch_0
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 266
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 268
    move-result-object p0

    .line 271
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 272
    :goto_3
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 275
    invoke-static {v5}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 277
    move-result-object p0

    .line 280
    invoke-virtual {p0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 281
    return-void
    .line 284
.end method

.method public final updateNoteTaskAsUser(Landroid/os/UserHandle;)V
    .locals 4

    .line 1
    const-string v0, "android.app.role.NOTES"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/notetask/NoteTaskController;->roleManager:Landroid/app/role/RoleManager;

    .line 4
    invoke-virtual {v1, v0, p1}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 6
    move-result-object v0

    .line 9
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Ljava/lang/String;

    .line 14
    iget-boolean v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->isEnabled:Z

    .line 16
    const/4 v3, 0x0

    .line 18
    if-eqz v2, :cond_2

    .line 19
    const/4 v2, 0x1

    .line 21
    if-eqz v0, :cond_1

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_0

    .line 28
    goto :goto_0

    .line 30
    :cond_0
    move v0, v3

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    :goto_0
    move v0, v2

    .line 33
    :goto_1
    if-nez v0, :cond_2

    .line 34
    move v3, v2

    .line 36
    :cond_2
    invoke-virtual {p0, p1, v3}, Lcom/android/systemui/notetask/NoteTaskController;->setNoteTaskShortcutEnabled(Landroid/os/UserHandle;Z)V

    .line 37
    const-string v0, "note_task_shortcut_id"

    .line 40
    iget-object v2, p0, Lcom/android/systemui/notetask/NoteTaskController;->shortcutManager:Landroid/content/pm/ShortcutManager;

    .line 42
    if-eqz v3, :cond_3

    .line 44
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 46
    move-result-object v0

    .line 49
    invoke-virtual {v2, v0}, Landroid/content/pm/ShortcutManager;->enableShortcuts(Ljava/util/List;)V

    .line 50
    iget-object p0, p0, Lcom/android/systemui/notetask/NoteTaskController;->context:Landroid/content/Context;

    .line 53
    invoke-static {v1, p0, p1}, Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;->createNoteShortcutInfoAsUser(Landroid/app/role/RoleManager;Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;

    .line 55
    move-result-object p0

    .line 58
    invoke-static {p0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {v2, p0}, Landroid/content/pm/ShortcutManager;->updateShortcuts(Ljava/util/List;)Z

    .line 63
    goto :goto_2

    .line 66
    :cond_3
    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    .line 67
    move-result-object p0

    .line 70
    invoke-virtual {v2, p0}, Landroid/content/pm/ShortcutManager;->disableShortcuts(Ljava/util/List;)V

    .line 71
    :goto_2
    return-void
    .line 74
.end method
