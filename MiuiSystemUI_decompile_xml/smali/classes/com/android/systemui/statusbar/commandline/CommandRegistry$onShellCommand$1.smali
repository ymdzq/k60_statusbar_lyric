.class public final Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $task:Ljava/util/concurrent/FutureTask;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/FutureTask;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$1;->$task:Ljava/util/concurrent/FutureTask;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/commandline/CommandRegistry$onShellCommand$1;->$task:Ljava/util/concurrent/FutureTask;

    .line 2
    invoke-virtual {p0}, Ljava/util/concurrent/FutureTask;->run()V

    .line 4
    return-void
    .line 7
.end method
