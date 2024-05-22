.class public final synthetic Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/ProtoLogController;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/ProtoLogController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ProtoLogController;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/ProtoLogController$$ExternalSyntheticLambda0;->f$0:Lcom/android/wm/shell/ProtoLogController;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/ProtoLogController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 4
    const-string v1, "protolog"

    .line 6
    invoke-virtual {v0, v1, p0, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler;->addCommandCallback(Ljava/lang/String;Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;Ljava/lang/Object;)V

    .line 8
    return-void
    .line 11
.end method
