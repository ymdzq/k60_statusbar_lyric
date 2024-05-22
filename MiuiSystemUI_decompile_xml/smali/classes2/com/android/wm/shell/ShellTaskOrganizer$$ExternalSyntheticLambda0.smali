.class public final synthetic Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ShellTaskOrganizer;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ShellTaskOrganizer;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 4
    new-instance v1, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda2;

    .line 6
    invoke-direct {v1, p0}, Lcom/android/wm/shell/ShellTaskOrganizer$$ExternalSyntheticLambda2;-><init>(Lcom/android/wm/shell/ShellTaskOrganizer;)V

    .line 8
    invoke-virtual {v0, v1, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addDumpCallback(Ljava/util/function/BiConsumer;Ljava/lang/Object;)V

    .line 11
    iget-object v0, p0, Lcom/android/wm/shell/ShellTaskOrganizer;->mCompatUI:Lcom/android/wm/shell/compatui/CompatUIController;

    .line 14
    if-eqz v0, :cond_0

    .line 16
    iput-object p0, v0, Lcom/android/wm/shell/compatui/CompatUIController;->mCallback:Lcom/android/wm/shell/compatui/CompatUIController$CompatUICallback;

    .line 18
    :cond_0
    invoke-virtual {p0}, Lcom/android/wm/shell/ShellTaskOrganizer;->registerOrganizer()Ljava/util/List;

    .line 20
    return-void
    .line 23
.end method
