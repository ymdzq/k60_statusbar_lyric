.class public Lcom/miui/analytics/MiuiSoScTrackImpl;
.super Lcom/miui/analytics/MiuiSoScTrackStub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiSoScTrackImpl"


# direct methods
.method public static synthetic $r8$lambda$Anulgqur7p4ORzCyWjbR4eoSgbw(Lcom/miui/analytics/MiuiSoScTrackImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p5}, Lcom/miui/analytics/MiuiSoScTrackImpl;->lambda$trackEvent$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    .line 2
    return-void
    .line 5
.end method

.method public static synthetic $r8$lambda$m_scKNP01LpIu2L8qdUQioLSoXg(Lcom/miui/analytics/MiuiSoScTrackImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/analytics/MiuiSoScTrackImpl;->lambda$trackEvent$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 2
    return-void
    .line 5
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiSoScTrackStub;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method private getWay(Landroid/content/Context;IZ)Ljava/lang/String;
    .locals 0

    .line 1
    if-eqz p2, :cond_a

    .line 2
    const/4 p0, 0x1

    .line 4
    if-eq p2, p0, :cond_8

    .line 5
    const/4 p0, 0x2

    .line 7
    if-eq p2, p0, :cond_6

    .line 8
    const/4 p0, 0x4

    .line 10
    if-eq p2, p0, :cond_4

    .line 11
    const/4 p0, 0x7

    .line 13
    if-eq p2, p0, :cond_3

    .line 14
    packed-switch p2, :pswitch_data_0

    .line 16
    const-string p0, ""

    .line 19
    goto :goto_0

    .line 21
    :pswitch_0
    const-string/jumbo p0, "\u70b9\u51fb\u5e94\u7528\u56fe\u6807"

    .line 22
    goto :goto_0

    .line 25
    :pswitch_1
    const-string/jumbo p0, "\u63a8\u8350\u5f15\u5bfc"

    .line 26
    goto :goto_0

    .line 29
    :pswitch_2
    invoke-static {}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getInstance()Lcom/android/wm/shell/common/split/SplitUtilsStub;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/common/split/SplitUtilsStub;->getVerticalSplitBoolOrUpdate(Landroid/content/Context;)Z

    .line 34
    move-result p0

    .line 37
    if-eqz p0, :cond_1

    .line 38
    if-eqz p3, :cond_0

    .line 40
    const-string/jumbo p0, "\u63a7\u5236\u5668\u5de6\u5206\u5c4f"

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    const-string/jumbo p0, "\u63a7\u5236\u5668\u53f3\u5206\u5c4f"

    .line 46
    goto :goto_0

    .line 49
    :cond_1
    if-eqz p3, :cond_2

    .line 50
    const-string/jumbo p0, "\u63a7\u5236\u5668\u4e0a\u5206\u5c4f"

    .line 52
    goto :goto_0

    .line 55
    :cond_2
    const-string/jumbo p0, "\u63a7\u5236\u5668\u4e0b\u5206\u5c4f"

    .line 56
    goto :goto_0

    .line 59
    :cond_3
    const-string/jumbo p0, "\u6700\u8fd1\u4efb\u52a1\u70b9\u51fb\u5206\u5c4f\u6309\u94ae"

    .line 60
    goto :goto_0

    .line 63
    :cond_4
    if-eqz p3, :cond_5

    .line 64
    const-string/jumbo p0, "\u4e09\u6307\u5de6\u6ed1"

    .line 66
    goto :goto_0

    .line 69
    :cond_5
    const-string/jumbo p0, "\u4e09\u6307\u53f3\u6ed1"

    .line 70
    goto :goto_0

    .line 73
    :cond_6
    if-eqz p3, :cond_7

    .line 74
    const-string/jumbo p0, "\u4fa7\u8fb9\u680f\u5e94\u7528\u62d6\u62fd\u5de6\u5206\u5c4f"

    .line 76
    goto :goto_0

    .line 79
    :cond_7
    const-string/jumbo p0, "\u4fa7\u8fb9\u680f\u5e94\u7528\u62d6\u62fd\u53f3\u5206\u5c4f"

    .line 80
    goto :goto_0

    .line 83
    :cond_8
    if-eqz p3, :cond_9

    .line 84
    const-string p0, "Dock\u5e94\u7528\u62d6\u62fd\u5de6\u5206\u5c4f"

    .line 86
    goto :goto_0

    .line 88
    :cond_9
    const-string p0, "Dock\u5e94\u7528\u62d6\u62fd\u53f3\u5206\u5c4f"

    .line 89
    goto :goto_0

    .line 91
    :cond_a
    if-eqz p3, :cond_b

    .line 92
    const-string/jumbo p0, "\u7a97\u53e3\u62d6\u62fd\u5de6\u5206\u5c4f"

    .line 94
    goto :goto_0

    .line 97
    :cond_b
    const-string/jumbo p0, "\u7a97\u53e3\u62d6\u62fd\u53f3\u5206\u5c4f"

    .line 98
    :goto_0
    return-object p0

    .line 101
    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 102
.end method

.method private isEmpty(Ljava/lang/String;)Z
    .locals 0

    .line 1
    if-eqz p1, :cond_1

    .line 2
    const-string p0, ""

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    return p0

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    return p0
    .line 16
.end method

.method private synthetic lambda$trackEvent$0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 7

    .line 1
    const/4 v6, -0x1

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/miui/analytics/MiuiSoScTrackImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 9
    return-void
    .line 12
.end method

.method private synthetic lambda$trackEvent$1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 1
    const/4 v4, -0x1

    .line 2
    const/4 v5, -0x1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move v6, p4

    .line 8
    invoke-direct/range {v0 .. v6}, Lcom/miui/analytics/MiuiSoScTrackImpl;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V

    .line 9
    return-void
    .line 12
.end method

.method private trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;III)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p5

    .line 5
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "action: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "MiuiSoScTrackImpl"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v5, v0, Lcom/miui/analytics/MiuiSoScTrackStub;->mContext:Landroid/content/Context;

    if-nez v5, :cond_0

    return-void

    :cond_0
    const/4 v7, 0x0

    const/4 v8, 0x1

    if-nez p4, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    move v9, v7

    .line 7
    :goto_0
    invoke-direct {v0, v5, v4, v9}, Lcom/miui/analytics/MiuiSoScTrackImpl;->getWay(Landroid/content/Context;IZ)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v9, Lorg/json/JSONObject;

    invoke-direct {v9}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string v10, "23022700"

    .line 9
    invoke-static {v9, v5, v10}, Lcom/miui/analytics/MiuiTrackUtils;->addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 10
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    goto :goto_1

    :sswitch_0
    const-string v10, "action_enter_single"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    :sswitch_1
    const-string v7, "action_exit_apppair"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x4

    goto :goto_2

    :sswitch_2
    const-string v7, "action_exit_both"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x3

    goto :goto_2

    :sswitch_3
    const-string v7, "action_enter_both"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v7, 0x2

    goto :goto_2

    :sswitch_4
    const-string v7, "action_exit_single"

    invoke-virtual {v1, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v1, :cond_2

    move v7, v8

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v7, -0x1

    :goto_2
    const-string v1, "multi_window_enter_way"

    const-string v10, "enter"

    const-string v14, "app_display_name"

    const-string v15, "app_package_name"

    const-string v11, "EVENT_NAME"

    const-string/jumbo v12, "tip"

    if-eqz v7, :cond_8

    const-string v13, "quit"

    move-object/from16 v16, v6

    const-string/jumbo v6, "use_duration"

    if-eq v7, v8, :cond_7

    const-string v8, "app_display_name_combination"

    move-object/from16 p1, v14

    const-string v14, "app_package_combination"

    move-object/from16 v17, v15

    const-string v15, "_"

    const/4 v4, 0x2

    if-eq v7, v4, :cond_5

    const/4 v4, 0x3

    if-eq v7, v4, :cond_4

    const/4 v0, 0x4

    if-eq v7, v0, :cond_3

    goto/16 :goto_5

    :cond_3
    :try_start_1
    const-string v0, "621.6.1.1.22490"

    .line 11
    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "quit_app_pairs"

    .line 12
    invoke-virtual {v9, v11, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 14
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {v5, v3}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 17
    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getFullModeRunningDuration()F

    move-result v0

    float-to-double v0, v0

    .line 19
    invoke-virtual {v9, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_4
    const-string v0, "621.6.2.1.28872"

    .line 20
    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 24
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-static {v5, v3}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    const-string v0, "multi_window_quit_way"

    packed-switch p6, :pswitch_data_0

    goto :goto_3

    :pswitch_0
    :try_start_2
    const-string/jumbo v1, "\u5176\u4ed6"

    .line 27
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_1
    const-string/jumbo v1, "\u5355\u5173_\u63a7\u5236\u5668\u5c0f\u7a97"

    .line 28
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_2
    const-string/jumbo v1, "\u5355\u5173_\u63a7\u5236\u5668\u5168\u5c4f"

    .line 29
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_3
    const-string/jumbo v1, "\u5355\u5173_\u63a7\u5236\u5668\u5173\u95ed"

    .line 30
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_4
    const-string/jumbo v1, "\u5355\u5173_\u66ff\u6362"

    .line 31
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_5
    const-string/jumbo v1, "\u5355\u5173_\u624b\u52bf"

    .line 32
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_3

    :pswitch_6
    const-string/jumbo v1, "\u53cc\u5173_\u624b\u52bf"

    .line 33
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 34
    :goto_3
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getFullModeRunningDuration()F

    move-result v0

    float-to-double v0, v0

    .line 35
    invoke-virtual {v9, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto/16 :goto_5

    :cond_5
    const-string v4, "621.6.2.1.28871"

    .line 36
    invoke-virtual {v9, v12, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 37
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/16 v0, 0xb

    move/from16 v1, p5

    if-ne v1, v0, :cond_6

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v14, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    invoke-static {v5, v3}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-virtual {v9, v8, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_6
    const-string v0, "first_app_package_name"

    .line 44
    invoke-virtual {v9, v0, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v0, "first_app_display_name"

    .line 45
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 46
    invoke-virtual {v9, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-object/from16 v4, v17

    .line 47
    invoke-virtual {v9, v4, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    invoke-static {v5, v3}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object/from16 v3, p1

    .line 49
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_5

    :cond_7
    move-object v3, v14

    move-object v4, v15

    const-string v0, "621.6.0.1.22489"

    .line 50
    invoke-virtual {v9, v12, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 51
    invoke-virtual {v9, v11, v13}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 52
    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 53
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 55
    invoke-static {}, Lcom/android/wm/shell/sosc/SoScUtils;->getInstance()Lcom/android/wm/shell/sosc/SoScUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/wm/shell/sosc/SoScUtils;->getSingleModeRunningDuration()F

    move-result v0

    float-to-double v0, v0

    .line 56
    invoke-virtual {v9, v6, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    goto :goto_5

    :cond_8
    move-object/from16 v16, v6

    move-object v3, v14

    move-object v4, v15

    const-string v6, "621.6.0.1.22487"

    .line 57
    invoke-virtual {v9, v12, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    invoke-virtual {v9, v11, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 59
    invoke-virtual {v9, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 60
    invoke-virtual {v9, v4, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    invoke-static {v5, v2}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 62
    invoke-virtual {v9, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_5

    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    move-object/from16 v16, v6

    :goto_4
    const-string v1, "reflect error when get MiuiTrackManager."

    move-object/from16 v2, v16

    .line 63
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 64
    :goto_5
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    move-result-object v0

    const-string v1, "android"

    .line 65
    invoke-virtual {v9}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "31000000538"

    .line 66
    invoke-virtual {v0, v3, v1, v2}, Lcom/miui/analytics/MiuiTrackManagerStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6d23da00 -> :sswitch_4
        -0xfa291cf -> :sswitch_3
        0xa3eeb39 -> :sswitch_2
        0x1c8a79c3 -> :sswitch_1
        0x6b65caf8 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 8

    .line 3
    iget-object v0, p0, Lcom/miui/analytics/MiuiSoScTrackStub;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-nez v0, :cond_0

    return-void

    .line 4
    :cond_0
    new-instance v7, Lcom/miui/analytics/MiuiSoScTrackImpl$$ExternalSyntheticLambda1;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/miui/analytics/MiuiSoScTrackImpl$$ExternalSyntheticLambda1;-><init>(Lcom/miui/analytics/MiuiSoScTrackImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v7}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/analytics/MiuiSoScTrackStub;->mBgExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v8, Lcom/miui/analytics/MiuiSoScTrackImpl$$ExternalSyntheticLambda0;

    move-object v1, v8

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/miui/analytics/MiuiSoScTrackImpl$$ExternalSyntheticLambda0;-><init>(Lcom/miui/analytics/MiuiSoScTrackImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V

    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    invoke-virtual {v0, v8}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
