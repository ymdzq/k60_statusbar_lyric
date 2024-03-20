.class public final synthetic Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final synthetic f$1:[Z

.field public final synthetic f$2:[Ljava/lang/String;

.field public final synthetic f$3:Ljava/io/PrintWriter;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;[Z[Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 5
    iput-object p2, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$1:[Z

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    .line 9
    iput-object p4, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$3:Ljava/io/PrintWriter;

    .line 11
    return-void
    .line 13
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$0:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 2
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$1:[Z

    .line 4
    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$2:[Ljava/lang/String;

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl$$ExternalSyntheticLambda2;->f$3:Ljava/io/PrintWriter;

    .line 8
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;->this$0:Lcom/android/wm/shell/sysui/ShellController;

    .line 10
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    array-length v3, v2

    .line 17
    const/4 v4, 0x0

    .line 18
    const/4 v5, 0x2

    .line 19
    if-ge v3, v5, :cond_0

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    const/4 v3, 0x1

    .line 23
    aget-object v6, v2, v3

    .line 24
    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 26
    move-result-object v7

    .line 29
    const-string v8, "help"

    .line 30
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    move-result v7

    .line 35
    iget-object v0, v0, Lcom/android/wm/shell/sysui/ShellCommandHandler;->mCommands:Ljava/util/TreeMap;

    .line 36
    if-eqz v7, :cond_2

    .line 38
    const-string v2, "Window Manager Shell commands:"

    .line 40
    invoke-virtual {p0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0}, Ljava/util/TreeMap;->keySet()Ljava/util/Set;

    .line 45
    move-result-object v2

    .line 48
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 49
    move-result-object v2

    .line 52
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 53
    move-result v5

    .line 56
    if-eqz v5, :cond_1

    .line 57
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 59
    move-result-object v5

    .line 62
    check-cast v5, Ljava/lang/String;

    .line 63
    new-instance v6, Ljava/lang/StringBuilder;

    .line 65
    const-string v7, "  "

    .line 67
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 78
    invoke-virtual {p0, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v0, v5}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    move-result-object v5

    .line 85
    check-cast v5, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;

    .line 86
    const-string v6, "    "

    .line 88
    invoke-interface {v5, p0, v6}, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;->printShellCommandHelp(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    const-string v0, "  help"

    .line 94
    const-string v2, "      Print this help text."

    .line 96
    const-string v5, "  <no arguments provided>"

    .line 98
    const-string v6, "    Dump all Window Manager Shell internal state"

    .line 100
    invoke-static {p0, v0, v2, v5, v6}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    goto :goto_2

    .line 105
    :cond_2
    invoke-virtual {v0, v6}, Ljava/util/TreeMap;->containsKey(Ljava/lang/Object;)Z

    .line 106
    move-result v6

    .line 109
    if-nez v6, :cond_3

    .line 110
    :goto_1
    move v3, v4

    .line 112
    goto :goto_2

    .line 113
    :cond_3
    aget-object v6, v2, v3

    .line 114
    invoke-virtual {v0, v6}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v0

    .line 119
    check-cast v0, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;

    .line 120
    array-length v6, v2

    .line 122
    invoke-static {v2, v5, v6}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    .line 123
    move-result-object v2

    .line 126
    check-cast v2, [Ljava/lang/String;

    .line 127
    invoke-interface {v0, v2, p0}, Lcom/android/wm/shell/sysui/ShellCommandHandler$ShellCommandActionHandler;->onShellCommand([Ljava/lang/String;Ljava/io/PrintWriter;)Z

    .line 129
    :goto_2
    aput-boolean v3, v1, v4

    .line 132
    return-void
    .line 134
.end method
