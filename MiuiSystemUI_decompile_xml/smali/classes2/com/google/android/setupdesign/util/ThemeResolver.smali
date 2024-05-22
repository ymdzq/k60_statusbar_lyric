.class public final Lcom/google/android/setupdesign/util/ThemeResolver;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static defaultResolver:Lcom/google/android/setupdesign/util/ThemeResolver;


# instance fields
.field public final defaultTheme:I

.field public final oldestSupportedTheme:Ljava/lang/String;

.field public final useDayNight:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->defaultTheme:I

    .line 5
    iput-object p2, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->oldestSupportedTheme:Ljava/lang/String;

    .line 7
    iput-boolean p3, p0, Lcom/google/android/setupdesign/util/ThemeResolver;->useDayNight:Z

    .line 9
    return-void
    .line 11
.end method

.method public static getDayNightThemeRes(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    goto/16 :goto_0

    .line 13
    :sswitch_0
    const-string v1, "glif_light"

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    goto/16 :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x9

    .line 25
    goto/16 :goto_0

    .line 27
    :sswitch_1
    const-string v1, "material"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    goto/16 :goto_0

    .line 37
    :cond_1
    const/16 v2, 0x8

    .line 39
    goto/16 :goto_0

    .line 41
    :sswitch_2
    const-string v1, "glif_v4"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x7

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v1, "glif_v3"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    const/4 v2, 0x6

    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    const-string v1, "glif_v2"

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 70
    if-nez p0, :cond_4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x5

    .line 74
    goto :goto_0

    .line 75
    :sswitch_5
    const-string v1, "glif"

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 81
    if-nez p0, :cond_5

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    const/4 v2, 0x4

    .line 85
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v1, "glif_v4_light"

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 92
    if-nez p0, :cond_6

    .line 93
    goto :goto_0

    .line 95
    :cond_6
    const/4 v2, 0x3

    .line 96
    goto :goto_0

    .line 97
    :sswitch_7
    const-string v1, "glif_v3_light"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 103
    if-nez p0, :cond_7

    .line 104
    goto :goto_0

    .line 106
    :cond_7
    const/4 v2, 0x2

    .line 107
    goto :goto_0

    .line 108
    :sswitch_8
    const-string v1, "material_light"

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p0

    .line 114
    if-nez p0, :cond_8

    .line 115
    goto :goto_0

    .line 117
    :cond_8
    const/4 v2, 0x1

    .line 118
    goto :goto_0

    .line 119
    :sswitch_9
    const-string v1, "glif_v2_light"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p0

    .line 125
    if-nez p0, :cond_9

    .line 126
    goto :goto_0

    .line 128
    :cond_9
    move v2, v0

    .line 129
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 130
    goto :goto_1

    .line 133
    :pswitch_0
    const p0, 0x7f140358    # @style/SudThemeGlif.DayNight

    .line 134
    return p0

    .line 137
    :pswitch_1
    const p0, 0x7f140361    # @style/SudThemeGlifV4.DayNight

    .line 138
    return p0

    .line 141
    :pswitch_2
    const p0, 0x7f14035e    # @style/SudThemeGlifV3.DayNight

    .line 142
    return p0

    .line 145
    :pswitch_3
    const p0, 0x7f140364    # @style/SudThemeMaterial.DayNight

    .line 146
    return p0

    .line 149
    :pswitch_4
    const p0, 0x7f14035b    # @style/SudThemeGlifV2.DayNight

    .line 150
    return p0

    .line 153
    :cond_a
    :goto_1
    return v0

    .line 154
    nop

    .line 155
    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    .line 156
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
    .line 198
.end method

.method public static getThemeRes(Ljava/lang/String;)I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, -0x1

    .line 9
    sparse-switch v1, :sswitch_data_0

    .line 10
    goto/16 :goto_0

    .line 13
    :sswitch_0
    const-string v1, "glif_light"

    .line 15
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 17
    move-result p0

    .line 20
    if-nez p0, :cond_0

    .line 21
    goto/16 :goto_0

    .line 23
    :cond_0
    const/16 v2, 0x9

    .line 25
    goto/16 :goto_0

    .line 27
    :sswitch_1
    const-string v1, "material"

    .line 29
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result p0

    .line 34
    if-nez p0, :cond_1

    .line 35
    goto/16 :goto_0

    .line 37
    :cond_1
    const/16 v2, 0x8

    .line 39
    goto/16 :goto_0

    .line 41
    :sswitch_2
    const-string v1, "glif_v4"

    .line 43
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-nez p0, :cond_2

    .line 49
    goto :goto_0

    .line 51
    :cond_2
    const/4 v2, 0x7

    .line 52
    goto :goto_0

    .line 53
    :sswitch_3
    const-string v1, "glif_v3"

    .line 54
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 59
    if-nez p0, :cond_3

    .line 60
    goto :goto_0

    .line 62
    :cond_3
    const/4 v2, 0x6

    .line 63
    goto :goto_0

    .line 64
    :sswitch_4
    const-string v1, "glif_v2"

    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 67
    move-result p0

    .line 70
    if-nez p0, :cond_4

    .line 71
    goto :goto_0

    .line 73
    :cond_4
    const/4 v2, 0x5

    .line 74
    goto :goto_0

    .line 75
    :sswitch_5
    const-string v1, "glif"

    .line 76
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 78
    move-result p0

    .line 81
    if-nez p0, :cond_5

    .line 82
    goto :goto_0

    .line 84
    :cond_5
    const/4 v2, 0x4

    .line 85
    goto :goto_0

    .line 86
    :sswitch_6
    const-string v1, "glif_v4_light"

    .line 87
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 92
    if-nez p0, :cond_6

    .line 93
    goto :goto_0

    .line 95
    :cond_6
    const/4 v2, 0x3

    .line 96
    goto :goto_0

    .line 97
    :sswitch_7
    const-string v1, "glif_v3_light"

    .line 98
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 103
    if-nez p0, :cond_7

    .line 104
    goto :goto_0

    .line 106
    :cond_7
    const/4 v2, 0x2

    .line 107
    goto :goto_0

    .line 108
    :sswitch_8
    const-string v1, "material_light"

    .line 109
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p0

    .line 114
    if-nez p0, :cond_8

    .line 115
    goto :goto_0

    .line 117
    :cond_8
    const/4 v2, 0x1

    .line 118
    goto :goto_0

    .line 119
    :sswitch_9
    const-string v1, "glif_v2_light"

    .line 120
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 122
    move-result p0

    .line 125
    if-nez p0, :cond_9

    .line 126
    goto :goto_0

    .line 128
    :cond_9
    move v2, v0

    .line 129
    :goto_0
    packed-switch v2, :pswitch_data_0

    .line 130
    goto :goto_1

    .line 133
    :pswitch_0
    const p0, 0x7f140359    # @style/SudThemeGlif.Light

    .line 134
    return p0

    .line 137
    :pswitch_1
    const p0, 0x7f140363    # @style/SudThemeMaterial

    .line 138
    return p0

    .line 141
    :pswitch_2
    const p0, 0x7f140360    # @style/SudThemeGlifV4

    .line 142
    return p0

    .line 145
    :pswitch_3
    const p0, 0x7f14035d    # @style/SudThemeGlifV3

    .line 146
    return p0

    .line 149
    :pswitch_4
    const p0, 0x7f14035a    # @style/SudThemeGlifV2

    .line 150
    return p0

    .line 153
    :pswitch_5
    const p0, 0x7f140357    # @style/SudThemeGlif

    .line 154
    return p0

    .line 157
    :pswitch_6
    const p0, 0x7f140362    # @style/SudThemeGlifV4.Light

    .line 158
    return p0

    .line 161
    :pswitch_7
    const p0, 0x7f14035f    # @style/SudThemeGlifV3.Light

    .line 162
    return p0

    .line 165
    :pswitch_8
    const p0, 0x7f140365    # @style/SudThemeMaterial.Light

    .line 166
    return p0

    .line 169
    :pswitch_9
    const p0, 0x7f14035c    # @style/SudThemeGlifV2.Light

    .line 170
    return p0

    .line 173
    :cond_a
    :goto_1
    return v0

    .line 174
    nop

    .line 175
    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    .line 176
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 218
.end method

.method public static getThemeVersion(Ljava/lang/String;)I
    .locals 7

    .line 1
    const/4 v0, -0x1

    .line 2
    if-eqz p0, :cond_a

    .line 3
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    .line 5
    move-result v1

    .line 8
    const/4 v2, 0x5

    .line 9
    const/4 v3, 0x4

    .line 10
    const/4 v4, 0x3

    .line 11
    const/4 v5, 0x2

    .line 12
    const/4 v6, 0x1

    .line 13
    sparse-switch v1, :sswitch_data_0

    .line 14
    :goto_0
    move p0, v0

    .line 17
    goto/16 :goto_1

    .line 18
    :sswitch_0
    const-string v1, "glif_light"

    .line 20
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result p0

    .line 25
    if-nez p0, :cond_0

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    const/16 p0, 0x9

    .line 29
    goto/16 :goto_1

    .line 31
    :sswitch_1
    const-string v1, "material"

    .line 33
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 35
    move-result p0

    .line 38
    if-nez p0, :cond_1

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    const/16 p0, 0x8

    .line 42
    goto/16 :goto_1

    .line 44
    :sswitch_2
    const-string v1, "glif_v4"

    .line 46
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 48
    move-result p0

    .line 51
    if-nez p0, :cond_2

    .line 52
    goto :goto_0

    .line 54
    :cond_2
    const/4 p0, 0x7

    .line 55
    goto :goto_1

    .line 56
    :sswitch_3
    const-string v1, "glif_v3"

    .line 57
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 59
    move-result p0

    .line 62
    if-nez p0, :cond_3

    .line 63
    goto :goto_0

    .line 65
    :cond_3
    const/4 p0, 0x6

    .line 66
    goto :goto_1

    .line 67
    :sswitch_4
    const-string v1, "glif_v2"

    .line 68
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result p0

    .line 73
    if-nez p0, :cond_4

    .line 74
    goto :goto_0

    .line 76
    :cond_4
    move p0, v2

    .line 77
    goto :goto_1

    .line 78
    :sswitch_5
    const-string v1, "glif"

    .line 79
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 81
    move-result p0

    .line 84
    if-nez p0, :cond_5

    .line 85
    goto :goto_0

    .line 87
    :cond_5
    move p0, v3

    .line 88
    goto :goto_1

    .line 89
    :sswitch_6
    const-string v1, "glif_v4_light"

    .line 90
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 92
    move-result p0

    .line 95
    if-nez p0, :cond_6

    .line 96
    goto :goto_0

    .line 98
    :cond_6
    move p0, v4

    .line 99
    goto :goto_1

    .line 100
    :sswitch_7
    const-string v1, "glif_v3_light"

    .line 101
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 103
    move-result p0

    .line 106
    if-nez p0, :cond_7

    .line 107
    goto :goto_0

    .line 109
    :cond_7
    move p0, v5

    .line 110
    goto :goto_1

    .line 111
    :sswitch_8
    const-string v1, "material_light"

    .line 112
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result p0

    .line 117
    if-nez p0, :cond_8

    .line 118
    goto :goto_0

    .line 120
    :cond_8
    move p0, v6

    .line 121
    goto :goto_1

    .line 122
    :sswitch_9
    const-string v1, "glif_v2_light"

    .line 123
    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p0

    .line 128
    if-nez p0, :cond_9

    .line 129
    goto :goto_0

    .line 131
    :cond_9
    const/4 p0, 0x0

    .line 132
    :goto_1
    packed-switch p0, :pswitch_data_0

    .line 133
    goto :goto_2

    .line 136
    :pswitch_0
    return v5

    .line 137
    :pswitch_1
    return v2

    .line 138
    :pswitch_2
    return v3

    .line 139
    :pswitch_3
    return v6

    .line 140
    :pswitch_4
    return v4

    .line 141
    :cond_a
    :goto_2
    return v0

    .line 142
    nop

    .line 143
    :sswitch_data_0
    .sparse-switch
        -0x7edf2f90 -> :sswitch_9
        -0x4bb9bc02 -> :sswitch_8
        -0x49f8f44f -> :sswitch_7
        -0x1512b90e -> :sswitch_6
        0x3074c2 -> :sswitch_5
        0x6e4af19 -> :sswitch_4
        0x6e4af1a -> :sswitch_3
        0x6e4af1b -> :sswitch_2
        0x11d36527 -> :sswitch_1
        0x2dc1f359 -> :sswitch_0
    .end sparse-switch

    .line 144
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_4
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
    .line 186
.end method
