.class public Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;


# static fields
.field private static final TAG:Ljava/lang/String; = "SoScSplitScreenShellCommandHandler"


# instance fields
.field private final mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/sosc/SoScSplitScreenController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 5
    return-void
    .line 7
.end method

.method private runDragDropIntentToSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: intent should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 13
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 15
    const/4 v0, 0x1

    .line 18
    aget-object v1, p1, v0

    .line 19
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    array-length v1, p1

    .line 28
    const/4 v2, 0x2

    .line 29
    if-le v1, v2, :cond_1

    .line 30
    new-instance v1, Ljava/lang/Integer;

    .line 32
    aget-object p1, p1, v2

    .line 34
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p1, v0

    .line 44
    :goto_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 45
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 47
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 50
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 52
    move-result-object v2

    .line 55
    invoke-virtual {v2}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    .line 56
    move-result-object v2

    .line 59
    const/high16 v3, 0x2000000

    .line 60
    const/4 v4, -0x1

    .line 62
    invoke-static {v2, v4, p2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 63
    move-result-object p2

    .line 66
    invoke-virtual {p0, v1, p2, p1, v4}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropIntentToSoSc(Landroid/window/WindowContainerTransaction;Landroid/app/PendingIntent;II)V

    .line 67
    return v0
    .line 70
.end method

.method private runDragDropTaskToSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: intent should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object v1, p1, v0

    .line 16
    invoke-direct {p2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p2

    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-le v1, v2, :cond_1

    .line 27
    new-instance v1, Ljava/lang/Integer;

    .line 29
    aget-object p1, p1, v2

    .line 31
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p1, v0

    .line 41
    :goto_0
    new-instance v1, Landroid/window/WindowContainerTransaction;

    .line 42
    invoke-direct {v1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 44
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 47
    const/4 v2, -0x1

    .line 49
    invoke-virtual {p0, v1, p2, p1, v2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareDragDropTaskToSoSc(Landroid/window/WindowContainerTransaction;III)V

    .line 50
    return v0
    .line 53
.end method

.method private runExitSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x1

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: intent should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    aget-object p1, p1, v1

    .line 15
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 23
    new-instance p2, Landroid/window/WindowContainerTransaction;

    .line 24
    invoke-direct {p2}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 29
    const/4 v0, -0x1

    .line 31
    invoke-virtual {p0, p2, p1, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->prepareExitSoSc(Landroid/window/WindowContainerTransaction;II)V

    .line 32
    return v1
    .line 35
.end method

.method private runExitSoScSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    const/4 p2, -0x1

    .line 27
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->exitSplitScreen(II)V

    .line 28
    return v0
    .line 31
.end method

.method private runMoveToSoScSplitStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x3

    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Ljava/lang/Integer;

    .line 13
    const/4 p2, 0x1

    .line 15
    aget-object v0, p1, p2

    .line 16
    invoke-direct {p0, v0}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 21
    array-length p0, p1

    .line 24
    const/4 v0, 0x2

    .line 25
    if-le p0, v0, :cond_1

    .line 26
    new-instance p0, Ljava/lang/Integer;

    .line 28
    aget-object p1, p1, v0

    .line 30
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 35
    :cond_1
    return p2
    .line 38
.end method

.method private runRemoveFromSoScSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->removeTaskFromSplit(I)Z

    .line 27
    return v0
    .line 30
.end method

.method private runResetSoScDividerFixed([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length p1, p1

    .line 2
    const/4 v0, 0x0

    .line 3
    const/4 v1, 0x1

    .line 4
    if-ge p1, v1, :cond_0

    .line 5
    const-string p0, "Error: task id should be provided as arguments"

    .line 7
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    return v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 13
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->updateDividerFixedState(Z)V

    .line 15
    return v1
    .line 18
.end method

.method private runResetSoScMinimized([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    array-length p1, p1

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 13
    invoke-virtual {p0}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->resetSoScMinimized()V

    .line 15
    return v0
    .line 18
.end method

.method private runSetSoScDividerFixed([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Boolean;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->updateDividerFixedState(Z)V

    .line 27
    return v0
    .line 30
.end method

.method private runSetSoScMinimized([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->setSoScMinimized(I)V

    .line 27
    return v0
    .line 30
.end method

.method private runSetSoScSplitSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: side stage position should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    aget-object p1, p1, v1

    .line 15
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 17
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 20
    move-result p1

    .line 23
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->setSideStagePosition(I)V

    .line 26
    const/4 p0, 0x1

    .line 29
    return p0
    .line 30
.end method

.method private runSetSplitRatio([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Float;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Float;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->setSplitRatio(F)V

    .line 27
    return v0
    .line 30
.end method

.method private runSnapSplitToNextRatio([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 2

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object p1, p1, v0

    .line 16
    invoke-direct {p2, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p1

    .line 24
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 25
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->snapSplitToNextRatio(I)V

    .line 27
    return v0
    .line 30
.end method

.method private runSoScStartIntent([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    array-length p0, p1

    .line 2
    const/4 v0, 0x3

    .line 3
    if-ge p0, v0, :cond_0

    .line 4
    const-string p0, "Error: intent should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p0, Landroid/content/Intent;

    .line 13
    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    .line 15
    const/4 p2, 0x1

    .line 18
    aget-object v0, p1, p2

    .line 19
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    array-length p0, p1

    .line 28
    const/4 v0, 0x2

    .line 29
    if-le p0, v0, :cond_1

    .line 30
    new-instance p0, Ljava/lang/Integer;

    .line 32
    aget-object p1, p1, v0

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 39
    :cond_1
    return p2
    .line 42
.end method

.method private runSoScStartIntentFor3rd([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    const/4 v2, 0x0

    .line 4
    if-ge v0, v1, :cond_0

    .line 5
    const-string p0, "Error: intent should be provided as arguments"

    .line 7
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    return v2

    .line 12
    :cond_0
    new-instance p2, Landroid/content/Intent;

    .line 13
    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 15
    const/4 v0, 0x1

    .line 18
    aget-object v1, p1, v0

    .line 19
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p2, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 25
    array-length v1, p1

    .line 28
    const/4 v3, 0x2

    .line 29
    if-le v1, v3, :cond_1

    .line 30
    new-instance v1, Ljava/lang/Integer;

    .line 32
    aget-object p1, p1, v3

    .line 34
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    move-result p1

    .line 42
    goto :goto_0

    .line 43
    :cond_1
    move p1, v0

    .line 44
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 45
    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    .line 47
    move-result-object v1

    .line 50
    invoke-virtual {v1}, Landroid/app/Application;->getBaseContext()Landroid/content/Context;

    .line 51
    move-result-object v1

    .line 54
    const/4 v3, -0x1

    .line 55
    const/high16 v4, 0x2000000

    .line 56
    invoke-static {v1, v3, p2, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 58
    move-result-object p2

    .line 61
    invoke-virtual {p0, p2, v2, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startIntentInSoSc(Landroid/app/PendingIntent;II)V

    .line 62
    return v0
    .line 65
.end method

.method private runSoScStartTask([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 3

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x3

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object v1, p1, v0

    .line 16
    invoke-direct {p2, v1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p2

    .line 24
    array-length v1, p1

    .line 25
    const/4 v2, 0x2

    .line 26
    if-le v1, v2, :cond_1

    .line 27
    new-instance v1, Ljava/lang/Integer;

    .line 29
    aget-object p1, p1, v2

    .line 31
    invoke-direct {v1, p1}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move p1, v0

    .line 41
    :goto_0
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 42
    const/4 v1, 0x0

    .line 44
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->startTask(IILandroid/os/Bundle;)V

    .line 45
    return v0
    .line 48
.end method

.method private runSwapSplitTasks([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 1

    .line 1
    array-length p1, p1

    .line 2
    const/4 v0, 0x1

    .line 3
    if-ge p1, v0, :cond_0

    .line 4
    const-string p0, "Error: task id should be provided as arguments"

    .line 6
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 8
    const/4 p0, 0x0

    .line 11
    return p0

    .line 12
    :cond_0
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 13
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 15
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->swapSplitTasks(Landroid/window/WindowContainerTransaction;)V

    .line 20
    return v0
    .line 23
.end method

.method private runUpdateSplitSnapTarget([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 4

    .line 1
    array-length v0, p1

    .line 2
    const/4 v1, 0x0

    .line 3
    const/4 v2, 0x2

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    const-string p0, "Error: intent should be provided as arguments"

    .line 7
    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9
    return v1

    .line 12
    :cond_0
    new-instance p2, Ljava/lang/Integer;

    .line 13
    const/4 v0, 0x1

    .line 15
    aget-object v3, p1, v0

    .line 16
    invoke-direct {p2, v3}, Ljava/lang/Integer;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 21
    move-result p2

    .line 24
    array-length v3, p1

    .line 25
    if-le v3, v2, :cond_1

    .line 26
    new-instance v1, Ljava/lang/Boolean;

    .line 28
    aget-object p1, p1, v2

    .line 30
    invoke-direct {v1, p1}, Ljava/lang/Boolean;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 35
    move-result v1

    .line 38
    :cond_1
    new-instance p1, Landroid/window/WindowContainerTransaction;

    .line 39
    invoke-direct {p1}, Landroid/window/WindowContainerTransaction;-><init>()V

    .line 41
    iget-object p0, p0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->mController:Lcom/android/wm/shell/sosc/SoScSplitScreenController;

    .line 44
    const/4 p1, -0x1

    .line 46
    invoke-virtual {p0, p2, p1, v1}, Lcom/android/wm/shell/sosc/SoScSplitScreenController;->updateSplitSnapTarget(IIZ)V

    .line 47
    return v0
    .line 50
.end method


# virtual methods
.method public onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z
    .locals 5

    .line 1
    sget-object v0, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->TAG:Ljava/lang/String;

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 4
    const-string v2, "onShellCommand "

    .line 6
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    const/4 v2, 0x0

    .line 11
    aget-object v3, p1, v2

    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v1

    .line 20
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    aget-object v0, p1, v2

    .line 24
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 29
    const/4 v1, 0x1

    .line 32
    const/4 v3, -0x1

    .line 33
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 34
    move-result v4

    .line 37
    sparse-switch v4, :sswitch_data_0

    .line 38
    goto/16 :goto_0

    .line 41
    :sswitch_0
    const-string/jumbo v4, "soScStartIntent"

    .line 43
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v0

    .line 49
    if-nez v0, :cond_0

    .line 50
    goto/16 :goto_0

    .line 52
    :cond_0
    const/16 v3, 0x11

    .line 54
    goto/16 :goto_0

    .line 56
    :sswitch_1
    const-string v4, "exitSoScSplit"

    .line 58
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 60
    move-result v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    goto/16 :goto_0

    .line 66
    :cond_1
    const/16 v3, 0x10

    .line 68
    goto/16 :goto_0

    .line 70
    :sswitch_2
    const-string/jumbo v4, "soScStartIntentFor3rd"

    .line 72
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 75
    move-result v0

    .line 78
    if-nez v0, :cond_2

    .line 79
    goto/16 :goto_0

    .line 81
    :cond_2
    const/16 v3, 0xf

    .line 83
    goto/16 :goto_0

    .line 85
    :sswitch_3
    const-string v4, "moveToSoScSplitStage"

    .line 87
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result v0

    .line 92
    if-nez v0, :cond_3

    .line 93
    goto/16 :goto_0

    .line 95
    :cond_3
    const/16 v3, 0xe

    .line 97
    goto/16 :goto_0

    .line 99
    :sswitch_4
    const-string/jumbo v4, "setSoScSplitSideStagePosition"

    .line 101
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 104
    move-result v0

    .line 107
    if-nez v0, :cond_4

    .line 108
    goto/16 :goto_0

    .line 110
    :cond_4
    const/16 v3, 0xd

    .line 112
    goto/16 :goto_0

    .line 114
    :sswitch_5
    const-string/jumbo v4, "soScStartTask"

    .line 116
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 119
    move-result v0

    .line 122
    if-nez v0, :cond_5

    .line 123
    goto/16 :goto_0

    .line 125
    :cond_5
    const/16 v3, 0xc

    .line 127
    goto/16 :goto_0

    .line 129
    :sswitch_6
    const-string/jumbo v4, "setSoScMinimized"

    .line 131
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 134
    move-result v0

    .line 137
    if-nez v0, :cond_6

    .line 138
    goto/16 :goto_0

    .line 140
    :cond_6
    const/16 v3, 0xb

    .line 142
    goto/16 :goto_0

    .line 144
    :sswitch_7
    const-string/jumbo v4, "setSplitRatio"

    .line 146
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 149
    move-result v0

    .line 152
    if-nez v0, :cond_7

    .line 153
    goto/16 :goto_0

    .line 155
    :cond_7
    const/16 v3, 0xa

    .line 157
    goto/16 :goto_0

    .line 159
    :sswitch_8
    const-string v4, "removeFromSoScSplit"

    .line 161
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 163
    move-result v0

    .line 166
    if-nez v0, :cond_8

    .line 167
    goto/16 :goto_0

    .line 169
    :cond_8
    const/16 v3, 0x9

    .line 171
    goto/16 :goto_0

    .line 173
    :sswitch_9
    const-string/jumbo v4, "setSoScDividerFixed"

    .line 175
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 178
    move-result v0

    .line 181
    if-nez v0, :cond_9

    .line 182
    goto/16 :goto_0

    .line 184
    :cond_9
    const/16 v3, 0x8

    .line 186
    goto/16 :goto_0

    .line 188
    :sswitch_a
    const-string v4, "resetSoScDividerFixed"

    .line 190
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result v0

    .line 195
    if-nez v0, :cond_a

    .line 196
    goto :goto_0

    .line 198
    :cond_a
    const/4 v3, 0x7

    .line 199
    goto :goto_0

    .line 200
    :sswitch_b
    const-string/jumbo v4, "swapSplitTasks"

    .line 201
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 204
    move-result v0

    .line 207
    if-nez v0, :cond_b

    .line 208
    goto :goto_0

    .line 210
    :cond_b
    const/4 v3, 0x6

    .line 211
    goto :goto_0

    .line 212
    :sswitch_c
    const-string/jumbo v4, "snapSplitToNextRatio"

    .line 213
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 216
    move-result v0

    .line 219
    if-nez v0, :cond_c

    .line 220
    goto :goto_0

    .line 222
    :cond_c
    const/4 v3, 0x5

    .line 223
    goto :goto_0

    .line 224
    :sswitch_d
    const-string v4, "dragDropIntentToSoSc"

    .line 225
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 227
    move-result v0

    .line 230
    if-nez v0, :cond_d

    .line 231
    goto :goto_0

    .line 233
    :cond_d
    const/4 v3, 0x4

    .line 234
    goto :goto_0

    .line 235
    :sswitch_e
    const-string v4, "dragDropTaskToSoSc"

    .line 236
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 238
    move-result v0

    .line 241
    if-nez v0, :cond_e

    .line 242
    goto :goto_0

    .line 244
    :cond_e
    const/4 v3, 0x3

    .line 245
    goto :goto_0

    .line 246
    :sswitch_f
    const-string/jumbo v4, "updateSplitSnapTarget"

    .line 247
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 250
    move-result v0

    .line 253
    if-nez v0, :cond_f

    .line 254
    goto :goto_0

    .line 256
    :cond_f
    const/4 v3, 0x2

    .line 257
    goto :goto_0

    .line 258
    :sswitch_10
    const-string v4, "resetSoScMinimized"

    .line 259
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 261
    move-result v0

    .line 264
    if-nez v0, :cond_10

    .line 265
    goto :goto_0

    .line 267
    :cond_10
    const/4 v3, 0x1

    .line 268
    goto :goto_0

    .line 269
    :sswitch_11
    const-string v4, "exitSoSc"

    .line 270
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 272
    move-result v0

    .line 275
    if-nez v0, :cond_11

    .line 276
    goto :goto_0

    .line 278
    :cond_11
    const/4 v3, 0x0

    .line 279
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 280
    new-instance p0, Ljava/lang/StringBuilder;

    .line 283
    const-string v0, "Invalid command: "

    .line 285
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 287
    aget-object p1, p1, v1

    .line 290
    invoke-static {p0, p1, p2}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 292
    return v2

    .line 295
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSoScStartIntent([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 296
    move-result p0

    .line 299
    return p0

    .line 300
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runExitSoScSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 301
    move-result p0

    .line 304
    return p0

    .line 305
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSoScStartIntentFor3rd([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 306
    move-result p0

    .line 309
    return p0

    .line 310
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runMoveToSoScSplitStage([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 311
    move-result p0

    .line 314
    return p0

    .line 315
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSetSoScSplitSideStagePosition([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 316
    move-result p0

    .line 319
    return p0

    .line 320
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSoScStartTask([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 321
    move-result p0

    .line 324
    return p0

    .line 325
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSetSoScMinimized([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 326
    move-result p0

    .line 329
    return p0

    .line 330
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSetSplitRatio([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 331
    move-result p0

    .line 334
    return p0

    .line 335
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runRemoveFromSoScSplit([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 336
    move-result p0

    .line 339
    return p0

    .line 340
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSetSoScDividerFixed([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 341
    move-result p0

    .line 344
    return p0

    .line 345
    :pswitch_a
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runResetSoScDividerFixed([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 346
    move-result p0

    .line 349
    return p0

    .line 350
    :pswitch_b
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSwapSplitTasks([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 351
    move-result p0

    .line 354
    return p0

    .line 355
    :pswitch_c
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runSnapSplitToNextRatio([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 356
    move-result p0

    .line 359
    return p0

    .line 360
    :pswitch_d
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runDragDropIntentToSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 361
    move-result p0

    .line 364
    return p0

    .line 365
    :pswitch_e
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runDragDropTaskToSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 366
    move-result p0

    .line 369
    return p0

    .line 370
    :pswitch_f
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runUpdateSplitSnapTarget([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 371
    move-result p0

    .line 374
    return p0

    .line 375
    :pswitch_10
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runResetSoScMinimized([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 376
    move-result p0

    .line 379
    return p0

    .line 380
    :pswitch_11
    invoke-direct {p0, p1, p2}, Lcom/android/wm/shell/sosc/SoScSplitScreenShellCommandHandler;->runExitSoSc([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 381
    move-result p0

    .line 384
    return p0

    .line 385
    :sswitch_data_0
    .sparse-switch
        -0x7e869ff6 -> :sswitch_11
        -0x722293f5 -> :sswitch_10
        -0x58d91f54 -> :sswitch_f
        -0x4a76dc91 -> :sswitch_e
        -0x3b75657a -> :sswitch_d
        -0x3b4546f3 -> :sswitch_c
        -0x3a2b5d79 -> :sswitch_b
        -0x32ae3cca -> :sswitch_a
        -0x31a523b7 -> :sswitch_9
        -0x5d05200 -> :sswitch_8
        0x7642b13 -> :sswitch_7
        0x31e223d8 -> :sswitch_6
        0x31f6e09b -> :sswitch_5
        0x36701524 -> :sswitch_4
        0x4fb4bc3c -> :sswitch_3
        0x5108130e -> :sswitch_2
        0x69394130 -> :sswitch_1
        0x7db37432 -> :sswitch_0
    .end sparse-switch

    .line 386
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 460
.end method

.method public printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string p0, "    moveToSoScSplitStage <taskId> <position>"

    .line 2
    const-string p2, "      Move a task with given id in split-screen mode."

    .line 4
    const-string v0, "    removeFromSoScSplit <taskId>"

    .line 6
    const-string v1, "      Remove a task with given id in split-screen mode."

    .line 8
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string p0, "    setSoScSplitSideStagePosition <SideStagePosition>"

    .line 13
    const-string p2, "      Sets the position of the sosc split side-stage."

    .line 15
    const-string v0, "    soScStartTask <taskId> <Position>"

    .line 17
    const-string v1, "      Starts a task in a sosc-split stage."

    .line 19
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string p0, "    soScStartIntent <intent> <Position>"

    .line 24
    const-string p2, "      Starts a intent in a sosc-split stage."

    .line 26
    const-string v0, "    dragDropIntentToSoSc <intent> <Position>"

    .line 28
    const-string v1, "      dragDrop a intent in a sosc-split stage."

    .line 30
    invoke-static {p1, p0, p2, v0, v1}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 32
    const-string p0, "    dragDropTaskToSoSc <taskid> <Position>"

    .line 35
    const-string v0, "      dragDrop a task in a sosc-split stage."

    .line 37
    const-string v1, "    exitSoSc <taskid> <exitSideToFull>"

    .line 39
    const-string v2, "      ext sosc-split."

    .line 41
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string p0, "    swapSplitTasks"

    .line 46
    const-string v0, "      Swap sosc tasks"

    .line 48
    const-string v1, "    setSoScMinimized <Position>"

    .line 50
    const-string v2, "      Set sosc-split to minimized mode."

    .line 52
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const-string p0, "    resetSoScMinimized"

    .line 57
    const-string v0, "      Reset sosc-split minimized mode"

    .line 59
    const-string v1, "    setSoScDividerFixed"

    .line 61
    const-string v2, "      Set sosc-divider to fixed mode."

    .line 63
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    const-string p0, "    resetSoScDividerFixed"

    .line 68
    const-string v0, "      Reset sosc-divider fixed mode"

    .line 70
    const-string v1, "    exitSoScSplit <topTaskId>"

    .line 72
    const-string v2, "      Removes the sosc-split screen stages and leaving indicated task to top."

    .line 74
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    const-string p0, "    snapSplitToNextRatio <direction>"

    .line 79
    const-string v0, "      Move the split to next target."

    .line 81
    const-string v1, "    setSplitRatio <ratio>"

    .line 83
    const-string v2, "      Update the split snap by ratio."

    .line 85
    invoke-static {p1, p0, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    const-string p0, "    soScStartIntentFor3rd <intent> <Position>"

    .line 90
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 95
    return-void
    .line 98
.end method
