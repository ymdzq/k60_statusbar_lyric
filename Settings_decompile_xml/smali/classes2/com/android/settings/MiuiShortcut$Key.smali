.class public final Lcom/android/settings/MiuiShortcut$Key;
.super Ljava/lang/Object;
.source "MiuiShortcut.java"


# static fields
.field public static final FEATURE_KNOCK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final GESTURE_SHORTCUT_ACTION:[Ljava/lang/String;

.field public static final KEY_SHORTCUT_ACTION:[Ljava/lang/String;

.field private static isInitMap:Z = false

.field public static mHidenPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static sGestureMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const-string v0, "long_press_power_key"

    const-string v1, "double_click_power_key"

    const-string/jumbo v2, "three_gesture_down"

    const-string/jumbo v3, "three_gesture_long_press"

    const-string v4, "long_press_menu_key_when_lock"

    const-string v5, "double_knock"

    const-string v6, "key_combination_power_volume_down"

    const-string v7, "knock_long_press_horizontal_slid"

    const-string v8, "knock_slide_shape"

    .line 256
    filled-new-array/range {v0 .. v8}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiShortcut$Key;->GESTURE_SHORTCUT_ACTION:[Ljava/lang/String;

    const-string v1, "long_press_home_key"

    const-string v2, "long_press_menu_key"

    const-string v3, "long_press_back_key"

    const-string v4, "key_combination_power_home"

    const-string v5, "key_combination_power_menu"

    const-string v6, "key_combination_power_back"

    const-string/jumbo v7, "press_menu"

    .line 268
    filled-new-array/range {v1 .. v7}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiShortcut$Key;->KEY_SHORTCUT_ACTION:[Ljava/lang/String;

    const-string v0, "knock_slide_shape"

    const-string v1, "double_knock"

    const-string v2, "knock_long_press_horizontal_slid"

    .line 392
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiShortcut$Key;->FEATURE_KNOCK:Ljava/util/List;

    .line 398
    new-instance v0, Lcom/android/settings/MiuiShortcut$Key$1;

    invoke-direct {v0}, Lcom/android/settings/MiuiShortcut$Key$1;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    .line 430
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    return-void
.end method

.method private static varargs checkCloudDataStatus(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 0

    .line 300
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$smupdateCacheValue(Landroid/content/Context;)V

    .line 301
    invoke-static {p0, p1}, Lcom/android/settings/MiuiShortcut$Key;->checkHealthCodeStatus(Landroid/content/Context;[Ljava/lang/String;)V

    return-void
.end method

.method private static varargs checkHealthCodeStatus(Landroid/content/Context;[Ljava/lang/String;)V
    .locals 11

    .line 308
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    :goto_0
    if-ge v1, v0, :cond_4

    aget-object v4, p1, v1

    .line 309
    invoke-static {p0, v4}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "launch_alipay_health_code"

    .line 310
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, -0x2

    const-string/jumbo v8, "none"

    const/4 v9, 0x1

    if-eqz v6, :cond_1

    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowAlipayHealthCode()Z

    move-result v6

    if-nez v6, :cond_1

    if-nez v2, :cond_0

    .line 313
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    sget v10, Lcom/android/settings/R$string;->launch_alipay_health_code_auto_close:I

    invoke-virtual {v6, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    move v2, v9

    .line 315
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v6, v4, v8, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_1
    const-string v6, "launch_wechat_health_code"

    .line 317
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowWeChatHealthCode()Z

    move-result v5

    if-nez v5, :cond_3

    if-nez v3, :cond_2

    .line 320
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    sget v6, Lcom/android/settings/R$string;->launch_wechat_health_code_auto_close:I

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5, v9}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    move v3, v9

    .line 322
    :cond_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v8, v7}, Landroid/provider/Settings$System;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return-void
.end method

.method private static getActions(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 465
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 466
    invoke-static {p0, v3}, Lcom/android/settings/MiuiShortcut$Key;->getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 467
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method public static getGestureShortcutAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 450
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->GESTURE_SHORTCUT_ACTION:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiShortcut$Key;->getActions(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getKeyAndGestureShortcutSetFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 475
    invoke-static {p0, p1}, Landroid/provider/MiuiSettings$Key;->getKeyAndGestureShortcutFunction(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getKeyForResourceName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 532
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v0, "regional_screen_shot"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v0, "voice_assist"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "mi_pay_summary"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    :goto_0
    packed-switch v1, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "partial_screen_shot"

    return-object p0

    :pswitch_1
    const-string p0, "launch_voice_assistant"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "mi_pay"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x3fd64714 -> :sswitch_2
        -0x1306bdea -> :sswitch_1
        -0x12265b33 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getKeyShortcutAction(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 458
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->KEY_SHORTCUT_ACTION:[Ljava/lang/String;

    invoke-static {p0, v0, p1}, Lcom/android/settings/MiuiShortcut$Key;->getActions(Landroid/content/Context;[Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 4

    .line 495
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 496
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "string"

    .line 495
    invoke-virtual {v0, p0, v2, v1}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    const-string/jumbo v1, "three_gesture_long_press"

    .line 497
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 499
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->three_gesture_long_press:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const/4 p1, 0x3

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 498
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const-string v1, "long_press_power_key"

    .line 500
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 502
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->long_press_power_key_half_second:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    .line 501
    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_1
    const-string/jumbo v1, "partial_screen_shot"

    .line 503
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 504
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->regional_screen_shot:I

    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    const-string v1, "knock_gesture_v"

    .line 505
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 506
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "knock_slide_v"

    .line 507
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 506
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    :cond_3
    if-eqz v0, :cond_4

    .line 510
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 512
    :cond_4
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "find key="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "\'s value is null!"

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiShortcut"

    invoke-static {p1, p0}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, ""

    return-object p0
.end method

.method public static getResoureceNameForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 518
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result p1

    const/4 v0, -0x1

    sparse-switch p1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo p1, "partial_screen_shot"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0

    :sswitch_1
    const-string p1, "launch_voice_assistant"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    :sswitch_2
    const-string/jumbo p1, "mi_pay"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_0
    packed-switch v0, :pswitch_data_0

    return-object p0

    :pswitch_0
    const-string/jumbo p0, "regional_screen_shot"

    return-object p0

    :pswitch_1
    const-string/jumbo p0, "voice_assist"

    return-object p0

    :pswitch_2
    const-string/jumbo p0, "mi_pay_summary"

    return-object p0

    :sswitch_data_0
    .sparse-switch
        -0x400b407b -> :sswitch_2
        0x238dab85 -> :sswitch_1
        0x7f38252f -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static varargs hasArrayIncludeItem(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 291
    :cond_0
    array-length v1, p1

    move v2, v0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, p1, v2

    .line 292
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method private static varargs initFunctionValues(Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string/jumbo v0, "screen_shot"

    .line 361
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "back_double_tap"

    .line 362
    invoke-static {v0, p1}, Lcom/android/settings/MiuiShortcut$Key;->hasArrayIncludeItem(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    const-string/jumbo p1, "turn_on_torch"

    .line 363
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p1, "launch_control_center"

    .line 365
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "launch_notification_center"

    .line 366
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 367
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p1, :cond_1

    const-string p1, "launch_google_search"

    .line 368
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string p1, "launch_voice_assistant"

    .line 370
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "launch_ai_shortcut"

    .line 371
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_0
    const-string p1, "launch_camera"

    .line 373
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "launch_calculator"

    .line 374
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "mute"

    .line 375
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 376
    sget-boolean p1, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez p1, :cond_4

    const-string p1, "launch_alipay_payment_code"

    .line 377
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "launch_wechat_payment_code"

    .line 378
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowAlipayHealthCode()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "launch_alipay_health_code"

    .line 380
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowWeChatHealthCode()Z

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "launch_wechat_health_code"

    .line 383
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    const-string p1, "launch_alipay_scanner"

    .line 385
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string p1, "launch_wechat_scanner"

    .line 386
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    const-string p1, "dump_log"

    .line 388
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo p1, "none"

    .line 389
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private static varargs initFunctions(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 328
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 329
    sget v0, Lcom/android/settings/R$string;->screen_shot:I

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v0, "back_double_tap"

    .line 330
    invoke-static {v0, p2}, Lcom/android/settings/MiuiShortcut$Key;->hasArrayIncludeItem(Ljava/lang/String;[Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 331
    sget p2, Lcom/android/settings/R$string;->turn_on_torch:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    :cond_0
    sget p2, Lcom/android/settings/R$string;->launch_control_center:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    sget p2, Lcom/android/settings/R$string;->launch_notification_center:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 335
    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-eqz p2, :cond_1

    .line 336
    sget p2, Lcom/android/settings/R$string;->launch_google_search:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 338
    :cond_1
    sget p2, Lcom/android/settings/R$string;->launch_voice_assistant:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 339
    sget p2, Lcom/android/settings/R$string;->launch_ai_shortcut:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    :goto_0
    sget p2, Lcom/android/settings/R$string;->launch_camera:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    sget p2, Lcom/android/settings/R$string;->launch_calculator:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 343
    sget p2, Lcom/android/settings/R$string;->mute:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 344
    sget-boolean p2, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    if-nez p2, :cond_4

    .line 345
    sget p2, Lcom/android/settings/R$string;->launch_alipay_payment_code:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 346
    sget p2, Lcom/android/settings/R$string;->launch_wechat_payment_code:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 347
    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowAlipayHealthCode()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 348
    sget p2, Lcom/android/settings/R$string;->launch_alipay_health_code:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 350
    :cond_2
    invoke-static {}, Lcom/android/settings/MiuiShortcut$Cloud;->-$$Nest$sfgetshowWeChatHealthCode()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 351
    sget p2, Lcom/android/settings/R$string;->launch_wechat_health_code:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 353
    :cond_3
    sget p2, Lcom/android/settings/R$string;->launch_alipay_scanner:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 354
    sget p2, Lcom/android/settings/R$string;->launch_wechat_scanner:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 356
    :cond_4
    sget p2, Lcom/android/settings/R$string;->dump_log:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 357
    sget p2, Lcom/android/settings/R$string;->key_none:I

    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public static varargs initFunctionsAndValues(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    if-nez p3, :cond_0

    goto :goto_0

    .line 282
    :cond_0
    invoke-static {p0, p3}, Lcom/android/settings/MiuiShortcut$Key;->checkCloudDataStatus(Landroid/content/Context;[Ljava/lang/String;)V

    .line 283
    invoke-static {p0, p1, p3}, Lcom/android/settings/MiuiShortcut$Key;->initFunctions(Landroid/content/Context;Ljava/util/ArrayList;[Ljava/lang/String;)V

    .line 284
    invoke-static {p2, p3}, Lcom/android/settings/MiuiShortcut$Key;->initFunctionValues(Ljava/util/ArrayList;[Ljava/lang/String;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private static initGestureMap(Landroid/content/Context;)V
    .locals 6

    .line 546
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 547
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 548
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 549
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result v5

    if-nez v5, :cond_1

    sget-object v5, Lcom/android/settings/MiuiShortcut$Key;->FEATURE_KNOCK:Ljava/util/List;

    .line 550
    invoke-interface {v5, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 551
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 554
    :cond_2
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 555
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_0

    .line 556
    sget-object v2, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 559
    :cond_3
    sget-boolean v0, Lmiui/os/Build;->IS_GLOBAL_BUILD:Z

    const-string v1, "launch_voice_assistant"

    if-nez v0, :cond_4

    .line 560
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string v2, "launch_google_search"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$System;->hasVoiceAssist(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 562
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 565
    :cond_4
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_5
    :goto_2
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$Key;->isTSMClientInstalled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 568
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string/jumbo v1, "mi_pay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 570
    :cond_6
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->supportPartialScreenShot()Z

    move-result v0

    if-nez v0, :cond_7

    .line 571
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string/jumbo v1, "partial_screen_shot"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    const-string v0, "XIG02"

    .line 573
    sget-object v1, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 574
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string v1, "au_pay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 576
    :cond_8
    invoke-static {p0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 577
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string/jumbo v1, "turn_on_torch"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 580
    :cond_9
    sget-object v0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string v1, "google_pay"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 581
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$System;->hasSmartHome(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_a

    .line 582
    sget-object p0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    const-string v0, "launch_smarthome"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 584
    :cond_a
    sget-object p0, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 585
    sget-object v1, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    :cond_b
    const/4 p0, 0x1

    .line 587
    sput-boolean p0, Lcom/android/settings/MiuiShortcut$Key;->isInitMap:Z

    return-void
.end method

.method public static isTSMClientInstalled(Landroid/content/Context;)Z
    .locals 2

    .line 480
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    :try_start_0
    const-string v1, "com.miui.tsmclient"

    .line 483
    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    return p0

    :catch_0
    :cond_0
    return v0
.end method

.method public static setGestureMap(Landroid/content/Context;)V
    .locals 1

    .line 591
    sget-boolean v0, Lcom/android/settings/MiuiShortcut$Key;->isInitMap:Z

    if-nez v0, :cond_0

    .line 592
    invoke-static {p0}, Lcom/android/settings/MiuiShortcut$Key;->initGestureMap(Landroid/content/Context;)V

    :cond_0
    return-void
.end method
