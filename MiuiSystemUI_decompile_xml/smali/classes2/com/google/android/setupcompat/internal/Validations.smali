.class public abstract Lcom/google/android/setupcompat/internal/Validations;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static assertLengthInRange(Ljava/lang/String;IILjava/lang/String;)V
    .locals 2

    .line 1
    const-string v0, "%s cannot be null."

    .line 2
    filled-new-array {p3}, [Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-eqz p0, :cond_1

    .line 12
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result p0

    .line 17
    if-gt p0, p2, :cond_0

    .line 18
    if-lt p0, p1, :cond_0

    .line 20
    const/4 p0, 0x1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const/4 p0, 0x0

    .line 24
    :goto_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p2

    .line 32
    filled-new-array {p3, p1, p2}, [Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    const-string p2, "Length of %s should be in the range [%s-%s]"

    .line 37
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    invoke-static {p1, p0}, Lcom/google/android/setupcompat/internal/Preconditions;->checkArgument(Ljava/lang/String;Z)V

    .line 43
    return-void

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/NullPointerException;

    .line 47
    invoke-direct {p0, v0}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    .line 52
.end method
