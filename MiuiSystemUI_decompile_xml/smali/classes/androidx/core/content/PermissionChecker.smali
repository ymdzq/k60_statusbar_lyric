.class public abstract Landroidx/core/content/PermissionChecker;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Process;->myPid()I

    .line 2
    move-result v0

    .line 5
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 10
    move-result-object v2

    .line 13
    invoke-virtual {p0, p1, v0, v1}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    .line 14
    move-result v0

    .line 17
    const/4 v3, -0x1

    .line 18
    if-ne v0, v3, :cond_0

    .line 19
    goto/16 :goto_5

    .line 21
    :cond_0
    invoke-static {p1}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    const/4 v0, 0x0

    .line 27
    if-nez p1, :cond_1

    .line 28
    goto :goto_4

    .line 30
    :cond_1
    if-nez v2, :cond_3

    .line 31
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 33
    move-result-object v2

    .line 36
    invoke-virtual {v2, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 40
    if-eqz v2, :cond_a

    .line 41
    array-length v4, v2

    .line 43
    if-gtz v4, :cond_2

    .line 44
    goto :goto_5

    .line 46
    :cond_2
    aget-object v2, v2, v0

    .line 47
    :cond_3
    invoke-static {}, Landroid/os/Process;->myUid()I

    .line 49
    move-result v3

    .line 52
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 53
    move-result-object v4

    .line 56
    const/4 v5, 0x1

    .line 57
    if-ne v3, v1, :cond_4

    .line 58
    invoke-static {v4, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    move-result v3

    .line 63
    if-eqz v3, :cond_4

    .line 64
    move v3, v5

    .line 66
    goto :goto_0

    .line 67
    :cond_4
    move v3, v0

    .line 68
    :goto_0
    if-eqz v3, :cond_8

    .line 69
    const-class v3, Landroid/app/AppOpsManager;

    .line 71
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 73
    move-result-object v3

    .line 76
    check-cast v3, Landroid/app/AppOpsManager;

    .line 77
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 79
    move-result v4

    .line 82
    if-nez v3, :cond_5

    .line 83
    move v2, v5

    .line 85
    goto :goto_1

    .line 86
    :cond_5
    invoke-virtual {v3, p1, v4, v2}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 87
    move-result v2

    .line 90
    :goto_1
    if-eqz v2, :cond_6

    .line 91
    goto :goto_3

    .line 93
    :cond_6
    invoke-virtual {p0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    .line 94
    move-result-object p0

    .line 97
    if-nez v3, :cond_7

    .line 98
    goto :goto_2

    .line 100
    :cond_7
    invoke-virtual {v3, p1, v1, p0}, Landroid/app/AppOpsManager;->checkOpNoThrow(Ljava/lang/String;ILjava/lang/String;)I

    .line 101
    move-result v5

    .line 104
    :goto_2
    move v2, v5

    .line 105
    goto :goto_3

    .line 106
    :cond_8
    const-class v1, Landroid/app/AppOpsManager;

    .line 107
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    move-result-object p0

    .line 112
    check-cast p0, Landroid/app/AppOpsManager;

    .line 113
    invoke-virtual {p0, p1, v2}, Landroid/app/AppOpsManager;->noteProxyOpNoThrow(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    move-result v2

    .line 118
    :goto_3
    if-nez v2, :cond_9

    .line 119
    :goto_4
    move v3, v0

    .line 121
    goto :goto_5

    .line 122
    :cond_9
    const/4 v3, -0x2

    .line 123
    :cond_a
    :goto_5
    return v3
    .line 124
.end method
