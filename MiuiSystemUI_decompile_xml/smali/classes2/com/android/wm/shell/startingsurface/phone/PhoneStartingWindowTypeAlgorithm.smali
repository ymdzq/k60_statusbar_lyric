.class public final Lcom/android/wm/shell/startingsurface/phone/PhoneStartingWindowTypeAlgorithm;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/wm/shell/startingsurface/StartingWindowTypeAlgorithm;


# virtual methods
.method public final getSuggestedWindowType(Landroid/window/StartingWindowInfo;)I
    .locals 25

    .line 1
    move-object/from16 v0, p1

    .line 2
    iget v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 4
    and-int/lit8 v2, v1, 0x1

    .line 6
    if-eqz v2, :cond_0

    .line 8
    const/4 v2, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 v2, 0x0

    .line 12
    :goto_0
    and-int/lit8 v5, v1, 0x2

    .line 13
    if-eqz v5, :cond_1

    .line 15
    const/4 v5, 0x1

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    const/4 v5, 0x0

    .line 19
    :goto_1
    and-int/lit8 v6, v1, 0x4

    .line 20
    if-eqz v6, :cond_2

    .line 22
    const/4 v6, 0x1

    .line 24
    goto :goto_2

    .line 25
    :cond_2
    const/4 v6, 0x0

    .line 26
    :goto_2
    and-int/lit8 v7, v1, 0x8

    .line 27
    if-eqz v7, :cond_3

    .line 29
    const/4 v7, 0x1

    .line 31
    goto :goto_3

    .line 32
    :cond_3
    const/4 v7, 0x0

    .line 33
    :goto_3
    and-int/lit8 v8, v1, 0x10

    .line 34
    if-eqz v8, :cond_4

    .line 36
    const/4 v8, 0x1

    .line 38
    goto :goto_4

    .line 39
    :cond_4
    const/4 v8, 0x0

    .line 40
    :goto_4
    and-int/lit8 v9, v1, 0x20

    .line 41
    if-eqz v9, :cond_5

    .line 43
    const/4 v9, 0x1

    .line 45
    goto :goto_5

    .line 46
    :cond_5
    const/4 v9, 0x0

    .line 47
    :goto_5
    const/high16 v10, -0x80000000

    .line 48
    and-int/2addr v10, v1

    .line 50
    if-eqz v10, :cond_6

    .line 51
    const/4 v10, 0x1

    .line 53
    goto :goto_6

    .line 54
    :cond_6
    const/4 v10, 0x0

    .line 55
    :goto_6
    and-int/lit8 v11, v1, 0x40

    .line 56
    if-eqz v11, :cond_7

    .line 58
    const/4 v11, 0x1

    .line 60
    goto :goto_7

    .line 61
    :cond_7
    const/4 v11, 0x0

    .line 62
    :goto_7
    and-int/lit16 v1, v1, 0x100

    .line 63
    if-eqz v1, :cond_8

    .line 65
    const/4 v1, 0x1

    .line 67
    goto :goto_8

    .line 68
    :cond_8
    const/4 v1, 0x0

    .line 69
    :goto_8
    iget-object v12, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 70
    iget v12, v12, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityType:I

    .line 72
    const/4 v13, 0x2

    .line 74
    if-ne v12, v13, :cond_9

    .line 75
    const/4 v12, 0x1

    .line 77
    goto :goto_9

    .line 78
    :cond_9
    const/4 v12, 0x0

    .line 79
    :goto_9
    sget-boolean v14, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_STARTING_WINDOW_enabled:Z

    .line 80
    if-eqz v14, :cond_a

    .line 82
    sget-object v14, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_STARTING_WINDOW:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 84
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 86
    move-result-object v15

    .line 89
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 90
    move-result-object v16

    .line 93
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 94
    move-result-object v17

    .line 97
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 98
    move-result-object v18

    .line 101
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 102
    move-result-object v19

    .line 105
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 106
    move-result-object v20

    .line 109
    invoke-static {v10}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 110
    move-result-object v21

    .line 113
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 114
    move-result-object v22

    .line 117
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 118
    move-result-object v23

    .line 121
    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 122
    move-result-object v24

    .line 125
    filled-new-array/range {v15 .. v24}, [Ljava/lang/Object;

    .line 126
    move-result-object v15

    .line 129
    const v4, 0xfffff

    .line 130
    const/4 v3, 0x0

    .line 133
    const v13, 0x5b8956a8

    .line 134
    invoke-static {v14, v13, v4, v3, v15}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 137
    :cond_a
    if-eqz v1, :cond_b

    .line 140
    const/4 v0, 0x5

    .line 142
    return v0

    .line 143
    :cond_b
    const/4 v1, 0x3

    .line 144
    const/4 v3, 0x4

    .line 145
    if-nez v12, :cond_f

    .line 146
    if-eqz v6, :cond_c

    .line 148
    if-nez v2, :cond_c

    .line 150
    if-eqz v5, :cond_f

    .line 152
    if-nez v8, :cond_f

    .line 154
    :cond_c
    if-eqz v9, :cond_d

    .line 156
    move v4, v1

    .line 158
    goto :goto_a

    .line 159
    :cond_d
    if-eqz v10, :cond_e

    .line 160
    move v4, v3

    .line 162
    goto :goto_a

    .line 163
    :cond_e
    const/4 v4, 0x1

    .line 164
    :goto_a
    return v4

    .line 165
    :cond_f
    if-eqz v5, :cond_14

    .line 166
    if-eqz v7, :cond_11

    .line 168
    iget-object v0, v0, Landroid/window/StartingWindowInfo;->taskSnapshot:Landroid/window/TaskSnapshot;

    .line 170
    if-eqz v0, :cond_10

    .line 172
    const/4 v0, 0x2

    .line 174
    return v0

    .line 175
    :cond_10
    if-nez v12, :cond_11

    .line 176
    return v1

    .line 178
    :cond_11
    if-nez v11, :cond_14

    .line 179
    if-nez v12, :cond_14

    .line 181
    if-eqz v9, :cond_12

    .line 183
    move v4, v1

    .line 185
    goto :goto_b

    .line 186
    :cond_12
    if-eqz v10, :cond_13

    .line 187
    move v4, v3

    .line 189
    goto :goto_b

    .line 190
    :cond_13
    const/4 v4, 0x1

    .line 191
    :goto_b
    return v4

    .line 192
    :cond_14
    const/4 v0, 0x0

    .line 193
    return v0
    .line 194
.end method
