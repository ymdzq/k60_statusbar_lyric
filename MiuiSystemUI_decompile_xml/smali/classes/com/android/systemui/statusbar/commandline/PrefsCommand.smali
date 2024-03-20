.class public final Lcom/android/systemui/statusbar/commandline/PrefsCommand;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/commandline/Command;


# virtual methods
.method public final execute(Ljava/io/PrintWriter;Ljava/util/List;)V
    .locals 5

    .line 1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    .line 2
    move-result p0

    .line 5
    const-string v0, "  set-pref <pref name> <value>"

    .line 6
    const-string v1, "  list-prefs"

    .line 8
    const-string v2, "Available commands:"

    .line 10
    const-string/jumbo v3, "usage: prefs <command> [args]"

    .line 12
    if-eqz p0, :cond_0

    .line 15
    invoke-static {p1, v3, v2, v1, v0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    return-void

    .line 20
    :cond_0
    const/4 p0, 0x0

    .line 21
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object p2

    .line 25
    check-cast p2, Ljava/lang/String;

    .line 26
    const-string v4, "list-prefs"

    .line 28
    invoke-static {p2, v4}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result p2

    .line 33
    if-eqz p2, :cond_1

    .line 34
    const-string p2, "Available keys:"

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 38
    const-class p2, Lcom/android/systemui/Prefs$Key;

    .line 41
    invoke-virtual {p2}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    .line 43
    move-result-object p2

    .line 46
    array-length v0, p2

    .line 47
    :goto_0
    if-ge p0, v0, :cond_2

    .line 48
    aget-object v1, p2, p0

    .line 50
    const-string v2, "  "

    .line 52
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 54
    const-class v2, Lcom/android/systemui/Prefs$Key;

    .line 57
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    move-result-object v1

    .line 62
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 63
    add-int/lit8 p0, p0, 0x1

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    invoke-static {p1, v3, v2, v1, v0}, Lcom/android/systemui/biometrics/UdfpsHapticsSimulator$$ExternalSyntheticOutline0;->m(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    :cond_2
    return-void
    .line 72
.end method
