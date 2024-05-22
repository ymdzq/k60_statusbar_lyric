.class public abstract Lcom/google/android/setupcompat/util/BuildCompatUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isAtLeastU()Z
    .locals 4

    .line 1
    sget-object v0, Landroid/os/Build$VERSION;->CODENAME:Ljava/lang/String;

    .line 2
    const-string v1, "REL"

    .line 4
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v2

    .line 9
    const/4 v3, 0x1

    .line 10
    if-eqz v2, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v1

    .line 17
    const/4 v2, 0x0

    .line 18
    if-eqz v1, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    const-string v1, "UpsideDownCake"

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    .line 24
    move-result v0

    .line 27
    if-ltz v0, :cond_2

    .line 28
    move v0, v3

    .line 30
    goto :goto_1

    .line 31
    :cond_2
    :goto_0
    move v0, v2

    .line 32
    :goto_1
    if-eqz v0, :cond_3

    .line 33
    goto :goto_2

    .line 35
    :cond_3
    move v3, v2

    .line 36
    :goto_2
    return v3
    .line 37
.end method
