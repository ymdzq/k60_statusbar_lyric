.class public final Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 2
    check-cast p2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;

    .line 4
    iget-object p0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 6
    const/4 v0, 0x0

    .line 8
    const/4 v1, 0x1

    .line 9
    if-eqz p0, :cond_1

    .line 10
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    .line 16
    move-result p0

    .line 19
    if-eqz p0, :cond_0

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    move p0, v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    :goto_0
    move p0, v1

    .line 25
    :goto_1
    iget-object v2, p2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 26
    if-eqz v2, :cond_3

    .line 28
    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 30
    move-result-object v2

    .line 33
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    .line 34
    move-result v2

    .line 37
    if-eqz v2, :cond_2

    .line 38
    goto :goto_2

    .line 40
    :cond_2
    move v2, v0

    .line 41
    goto :goto_3

    .line 42
    :cond_3
    :goto_2
    move v2, v1

    .line 43
    :goto_3
    if-eqz p0, :cond_4

    .line 44
    if-eqz v2, :cond_4

    .line 46
    goto :goto_4

    .line 48
    :cond_4
    if-eqz p0, :cond_5

    .line 49
    move v0, v1

    .line 51
    goto :goto_4

    .line 52
    :cond_5
    if-eqz v2, :cond_6

    .line 53
    const/4 v0, -0x1

    .line 55
    goto :goto_4

    .line 56
    :cond_6
    iget-object p0, p1, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 57
    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    iget-object p1, p2, Lcom/android/systemui/statusbar/KeyboardShortcutListSearch$ShortcutMultiMappingInfo;->mLabel:Ljava/lang/CharSequence;

    .line 63
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 65
    move-result-object p1

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 69
    move-result v0

    .line 72
    :goto_4
    return v0
    .line 73
.end method
