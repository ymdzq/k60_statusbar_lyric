.class public abstract Lcom/android/systemui/statusbar/phone/KeyOrderObserver$Companion;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isReversed(Landroid/content/Context;)Z
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 2
    move-result-object p0

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    const-string/jumbo v1, "screen_key_order"

    .line 11
    const/4 v2, -0x2

    .line 14
    invoke-static {p0, v1, v2}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v1

    .line 22
    if-nez v1, :cond_1

    .line 23
    const-string v1, " "

    .line 25
    filled-new-array {v1}, [Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {p0, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 31
    move-result-object p0

    .line 34
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 38
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v1

    .line 42
    if-eqz v1, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v1

    .line 48
    check-cast v1, Ljava/lang/String;

    .line 49
    :try_start_0
    invoke-static {v1}, Lkotlin/text/StringsKt__StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 51
    move-result-object v2

    .line 54
    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 55
    move-result-object v2

    .line 58
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 59
    move-result v2

    .line 62
    if-nez v2, :cond_0

    .line 63
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    .line 65
    move-result-object v1

    .line 68
    sget-object v2, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    .line 69
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 71
    move-result v2

    .line 74
    if-eqz v2, :cond_0

    .line 75
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_0

    .line 80
    :catch_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    :cond_1
    sget-object p0, Landroid/provider/MiuiSettings$System;->screenKeys:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 86
    move-result-object p0

    .line 89
    :cond_2
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 90
    move-result v1

    .line 93
    if-eqz v1, :cond_3

    .line 94
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 96
    move-result-object v1

    .line 99
    check-cast v1, Ljava/lang/Integer;

    .line 100
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v2

    .line 105
    if-nez v2, :cond_2

    .line 106
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_1

    .line 111
    :cond_3
    const/4 p0, 0x0

    .line 112
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 113
    move-result-object v0

    .line 116
    check-cast v0, Ljava/lang/Number;

    .line 117
    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 119
    move-result v0

    .line 122
    const/4 v1, 0x3

    .line 123
    if-ne v0, v1, :cond_4

    .line 124
    const/4 p0, 0x1

    .line 126
    :cond_4
    return p0
    .line 127
.end method
