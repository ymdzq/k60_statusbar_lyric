.class public final Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;->this$0:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method

.method public static invalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Error: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 19
    const-string p1, "Usage: adb shell cmd statusbar notif-filter <command>"

    .line 22
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    const-string p1, "Available commands:"

    .line 27
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 29
    const-string p1, "  reset"

    .line 32
    const-string v0, "     Restore the default system behavior."

    .line 34
    const-string v1, "  allowed-pkgs <package> ..."

    .line 36
    const-string v2, "     Hide all notification except from packages listed here."

    .line 38
    invoke-static {p0, p1, v0, v1, v2}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    const-string p1, "     Providing no packages is treated as a reset."

    .line 43
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    return-void
    .line 48
.end method


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 3

    .line 1
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Ljava/lang/String;

    .line 6
    const-string/jumbo v1, "reset"

    .line 8
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 11
    move-result v1

    .line 14
    const/4 v2, 0x1

    .line 15
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;->this$0:Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    move-result p2

    .line 23
    if-le p2, v2, :cond_0

    .line 24
    const-string p0, "Unexpected arguments for \'reset\' command"

    .line 26
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;->invalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 28
    return-void

    .line 31
    :cond_0
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 32
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    const-string v1, "allowed-pkgs"

    .line 37
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_4

    .line 43
    invoke-static {p2, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->drop(Ljava/lang/Iterable;I)Ljava/util/List;

    .line 45
    move-result-object p2

    .line 48
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 49
    :goto_0
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "Updated allowedPackages: "

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object p2

    .line 66
    const-string v0, "DebugModeFilterProvider"

    .line 67
    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 72
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 74
    move-result p2

    .line 77
    if-eqz p2, :cond_2

    .line 78
    const-string p2, "Resetting allowedPackages ... "

    .line 80
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 82
    goto :goto_1

    .line 85
    :cond_2
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->allowedPackages:Ljava/util/List;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    .line 88
    const-string v1, "Updating allowedPackages: "

    .line 90
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 95
    const-string p2, " ... "

    .line 98
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 103
    move-result-object p2

    .line 106
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 107
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider;->listeners:Lcom/android/systemui/util/ListenerSet;

    .line 110
    invoke-virtual {p0}, Lcom/android/systemui/util/ListenerSet;->iterator()Ljava/util/Iterator;

    .line 112
    move-result-object p0

    .line 115
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 116
    move-result p2

    .line 119
    if-eqz p2, :cond_3

    .line 120
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 122
    move-result-object p2

    .line 125
    check-cast p2, Ljava/lang/Runnable;

    .line 126
    invoke-interface {p2}, Ljava/lang/Runnable;->run()V

    .line 128
    goto :goto_2

    .line 131
    :cond_3
    const-string p0, "DONE"

    .line 132
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 134
    return-void

    .line 137
    :cond_4
    if-nez v0, :cond_5

    .line 138
    const-string p0, "Missing command"

    .line 140
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;->invalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 142
    return-void

    .line 145
    :cond_5
    invoke-static {p2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 146
    move-result-object p0

    .line 149
    new-instance p2, Ljava/lang/StringBuilder;

    .line 150
    const-string v0, "Unknown command: "

    .line 152
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 154
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 157
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 160
    move-result-object p0

    .line 163
    invoke-static {p1, p0}, Lcom/android/systemui/statusbar/notification/collection/provider/DebugModeFilterProvider$NotifFilterCommand;->invalidCommand(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 164
    return-void
    .line 167
.end method
