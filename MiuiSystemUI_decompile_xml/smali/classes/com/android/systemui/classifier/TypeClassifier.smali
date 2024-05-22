.class public final Lcom/android/systemui/classifier/TypeClassifier;
.super Lcom/android/systemui/classifier/FalsingClassifier;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public final calculateFalsingResult(I)Lcom/android/systemui/classifier/FalsingClassifier$Result;
    .locals 7

    .line 1
    const/16 v0, 0xd

    .line 2
    const-wide/16 v1, 0x0

    .line 4
    if-ne p1, v0, :cond_0

    .line 6
    invoke-static {v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 8
    move-result-object p0

    .line 11
    return-object p0

    .line 12
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingClassifier;->mDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 13
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 15
    move-result v3

    .line 18
    const/4 v4, 0x1

    .line 19
    xor-int/2addr v3, v4

    .line 20
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    .line 21
    move-result v5

    .line 24
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    .line 25
    move-result v6

    .line 28
    packed-switch p1, :pswitch_data_0

    .line 29
    :pswitch_0
    goto :goto_1

    .line 32
    :pswitch_1
    if-eqz v3, :cond_2

    .line 33
    if-nez v5, :cond_1

    .line 35
    goto :goto_1

    .line 37
    :pswitch_2
    xor-int/lit8 v1, v3, 0x1

    .line 38
    :goto_0
    move v3, v1

    .line 40
    goto :goto_2

    .line 41
    :pswitch_3
    if-nez v6, :cond_2

    .line 42
    if-nez v5, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :pswitch_4
    if-eqz v6, :cond_2

    .line 47
    if-nez v5, :cond_1

    .line 49
    goto :goto_1

    .line 51
    :pswitch_5
    if-eqz v3, :cond_2

    .line 52
    if-nez v5, :cond_1

    .line 54
    goto :goto_1

    .line 56
    :pswitch_6
    if-eqz v3, :cond_2

    .line 57
    if-eqz v5, :cond_1

    .line 59
    goto :goto_1

    .line 61
    :cond_1
    const/4 v1, 0x0

    .line 62
    goto :goto_0

    .line 63
    :cond_2
    :goto_1
    move v3, v4

    .line 64
    :goto_2
    :pswitch_7
    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 65
    :pswitch_8
    if-eqz v3, :cond_3

    .line 67
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object p1

    .line 72
    invoke-virtual {v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->isHorizontal()Z

    .line 73
    move-result v0

    .line 76
    xor-int/2addr v0, v4

    .line 77
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isUp()Z

    .line 82
    move-result v3

    .line 85
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    move-result-object v3

    .line 89
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingClassifier;->isRight()Z

    .line 90
    move-result v4

    .line 93
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v4

    .line 97
    filled-new-array {p1, v0, v3, v4}, [Ljava/lang/Object;

    .line 98
    move-result-object p1

    .line 101
    const-string/jumbo v0, "{interaction=%s, vertical=%s, up=%s, right=%s}"

    .line 102
    invoke-static {v0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 105
    move-result-object p1

    .line 108
    invoke-virtual {p0, p1, v1, v2}, Lcom/android/systemui/classifier/FalsingClassifier;->falsed(Ljava/lang/String;D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 109
    move-result-object p0

    .line 112
    goto :goto_3

    .line 113
    :cond_3
    const-wide/high16 p0, 0x3fe0000000000000L    # 0.5

    .line 114
    invoke-static {p0, p1}, Lcom/android/systemui/classifier/FalsingClassifier$Result;->passed(D)Lcom/android/systemui/classifier/FalsingClassifier$Result;

    .line 116
    move-result-object p0

    .line 119
    :goto_3
    return-object p0

    .line 120
    nop

    .line 121
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_7
        :pswitch_6
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_5
        :pswitch_6
        :pswitch_8
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_2
        :pswitch_8
    .end packed-switch
    .line 122
.end method
