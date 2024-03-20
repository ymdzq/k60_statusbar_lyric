.class public final Lcom/android/systemui/accessibility/SystemActions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mA11yManager:Landroid/view/accessibility/AccessibilityManager;

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mContext:Landroid/content/Context;

.field public mDismissNotificationShadeActionRegistered:Z

.field public final mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

.field public mLocale:Ljava/util/Locale;

.field public final mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

.field public final mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

.field public final mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

.field public final mRecentsOptional:Ljava/util/Optional;

.field public final mShadeController:Lcom/android/systemui/shade/ShadeController;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/NotificationShadeWindowController;Lcom/android/systemui/shade/ShadeController;Ldagger/Lazy;Ljava/util/Optional;Lcom/android/systemui/settings/DisplayTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/accessibility/SystemActions;->mShadeController:Lcom/android/systemui/shade/ShadeController;

    .line 9
    iput-object p6, p0, Lcom/android/systemui/accessibility/SystemActions;->mRecentsOptional:Ljava/util/Optional;

    .line 11
    iput-object p7, p0, Lcom/android/systemui/accessibility/SystemActions;->mDisplayTracker:Lcom/android/systemui/settings/DisplayTracker;

    .line 13
    new-instance p2, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 15
    invoke-direct {p2, p0}, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;-><init>(Lcom/android/systemui/accessibility/SystemActions;)V

    .line 17
    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 20
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object p2

    .line 25
    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 30
    move-result-object p2

    .line 33
    const/4 p4, 0x0

    .line 34
    invoke-virtual {p2, p4}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 35
    move-result-object p2

    .line 38
    iput-object p2, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    .line 39
    const-string p2, "accessibility"

    .line 41
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 43
    move-result-object p1

    .line 46
    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 47
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 49
    iput-object p3, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 51
    new-instance p1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda1;

    .line 53
    invoke-direct {p1, p0}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/accessibility/SystemActions;)V

    .line 55
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 58
    iput-object p5, p0, Lcom/android/systemui/accessibility/SystemActions;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 60
    return-void
    .line 62
.end method


# virtual methods
.method public final createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 6

    .line 1
    new-instance v0, Landroid/app/RemoteAction;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 4
    const v2, 0x10800b4    # @android:drawable/ic_info

    .line 6
    invoke-static {v1, v2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 9
    move-result-object v2

    .line 12
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 13
    move-result-object v3

    .line 16
    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    sget v4, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->$r8$clinit:I

    .line 21
    iget-object p0, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 23
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    .line 28
    move-result p0

    .line 31
    const/4 v4, 0x0

    .line 32
    const/4 v5, -0x1

    .line 33
    sparse-switch p0, :sswitch_data_0

    .line 34
    goto/16 :goto_0

    .line 37
    :sswitch_0
    const-string p0, "SYSTEM_ACTION_DPAD_LEFT"

    .line 39
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 41
    move-result p0

    .line 44
    if-nez p0, :cond_0

    .line 45
    goto/16 :goto_0

    .line 47
    :cond_0
    const/16 v5, 0x11

    .line 49
    goto/16 :goto_0

    .line 51
    :sswitch_1
    const-string p0, "SYSTEM_ACTION_DPAD_DOWN"

    .line 53
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 55
    move-result p0

    .line 58
    if-nez p0, :cond_1

    .line 59
    goto/16 :goto_0

    .line 61
    :cond_1
    const/16 v5, 0x10

    .line 63
    goto/16 :goto_0

    .line 65
    :sswitch_2
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    .line 67
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 69
    move-result p0

    .line 72
    if-nez p0, :cond_2

    .line 73
    goto/16 :goto_0

    .line 75
    :cond_2
    const/16 v5, 0xf

    .line 77
    goto/16 :goto_0

    .line 79
    :sswitch_3
    const-string p0, "SYSTEM_ACTION_DPAD_RIGHT"

    .line 81
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 83
    move-result p0

    .line 86
    if-nez p0, :cond_3

    .line 87
    goto/16 :goto_0

    .line 89
    :cond_3
    const/16 v5, 0xe

    .line 91
    goto/16 :goto_0

    .line 93
    :sswitch_4
    const-string p0, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 95
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result p0

    .line 100
    if-nez p0, :cond_4

    .line 101
    goto/16 :goto_0

    .line 103
    :cond_4
    const/16 v5, 0xd

    .line 105
    goto/16 :goto_0

    .line 107
    :sswitch_5
    const-string p0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 109
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 111
    move-result p0

    .line 114
    if-nez p0, :cond_5

    .line 115
    goto/16 :goto_0

    .line 117
    :cond_5
    const/16 v5, 0xc

    .line 119
    goto/16 :goto_0

    .line 121
    :sswitch_6
    const-string p0, "SYSTEM_ACTION_HEADSET_HOOK"

    .line 123
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 125
    move-result p0

    .line 128
    if-nez p0, :cond_6

    .line 129
    goto/16 :goto_0

    .line 131
    :cond_6
    const/16 v5, 0xb

    .line 133
    goto/16 :goto_0

    .line 135
    :sswitch_7
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    .line 137
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 139
    move-result p0

    .line 142
    if-nez p0, :cond_7

    .line 143
    goto/16 :goto_0

    .line 145
    :cond_7
    const/16 v5, 0xa

    .line 147
    goto/16 :goto_0

    .line 149
    :sswitch_8
    const-string p0, "SYSTEM_ACTION_DPAD_UP"

    .line 151
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 153
    move-result p0

    .line 156
    if-nez p0, :cond_8

    .line 157
    goto/16 :goto_0

    .line 159
    :cond_8
    const/16 v5, 0x9

    .line 161
    goto/16 :goto_0

    .line 163
    :sswitch_9
    const-string p0, "SYSTEM_ACTION_DPAD_CENTER"

    .line 165
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 167
    move-result p0

    .line 170
    if-nez p0, :cond_9

    .line 171
    goto/16 :goto_0

    .line 173
    :cond_9
    const/16 v5, 0x8

    .line 175
    goto/16 :goto_0

    .line 177
    :sswitch_a
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    .line 179
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 181
    move-result p0

    .line 184
    if-nez p0, :cond_a

    .line 185
    goto :goto_0

    .line 187
    :cond_a
    const/4 v5, 0x7

    .line 188
    goto :goto_0

    .line 189
    :sswitch_b
    const-string p0, "SYSTEM_ACTION_RECENTS"

    .line 190
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 192
    move-result p0

    .line 195
    if-nez p0, :cond_b

    .line 196
    goto :goto_0

    .line 198
    :cond_b
    const/4 v5, 0x6

    .line 199
    goto :goto_0

    .line 200
    :sswitch_c
    const-string p0, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 201
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 203
    move-result p0

    .line 206
    if-nez p0, :cond_c

    .line 207
    goto :goto_0

    .line 209
    :cond_c
    const/4 v5, 0x5

    .line 210
    goto :goto_0

    .line 211
    :sswitch_d
    const-string p0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 212
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 214
    move-result p0

    .line 217
    if-nez p0, :cond_d

    .line 218
    goto :goto_0

    .line 220
    :cond_d
    const/4 v5, 0x4

    .line 221
    goto :goto_0

    .line 222
    :sswitch_e
    const-string p0, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 223
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 225
    move-result p0

    .line 228
    if-nez p0, :cond_e

    .line 229
    goto :goto_0

    .line 231
    :cond_e
    const/4 v5, 0x3

    .line 232
    goto :goto_0

    .line 233
    :sswitch_f
    const-string p0, "SYSTEM_ACTION_POWER_DIALOG"

    .line 234
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 236
    move-result p0

    .line 239
    if-nez p0, :cond_f

    .line 240
    goto :goto_0

    .line 242
    :cond_f
    const/4 v5, 0x2

    .line 243
    goto :goto_0

    .line 244
    :sswitch_10
    const-string p0, "SYSTEM_ACTION_HOME"

    .line 245
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 247
    move-result p0

    .line 250
    if-nez p0, :cond_10

    .line 251
    goto :goto_0

    .line 253
    :cond_10
    const/4 v5, 0x1

    .line 254
    goto :goto_0

    .line 255
    :sswitch_11
    const-string p0, "SYSTEM_ACTION_BACK"

    .line 256
    invoke-virtual {p2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 258
    move-result p0

    .line 261
    if-nez p0, :cond_11

    .line 262
    goto :goto_0

    .line 264
    :cond_11
    move v5, v4

    .line 265
    :goto_0
    packed-switch v5, :pswitch_data_0

    .line 266
    const/4 p0, 0x0

    .line 269
    goto :goto_1

    .line 270
    :pswitch_0
    new-instance p0, Landroid/content/Intent;

    .line 271
    invoke-direct {p0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 273
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 276
    move-result-object p2

    .line 279
    invoke-virtual {p0, p2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 280
    const/high16 p2, 0x10000000

    .line 283
    invoke-virtual {p0, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 285
    const/high16 p2, 0x4000000

    .line 288
    invoke-static {v1, v4, p0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 290
    move-result-object p0

    .line 293
    :goto_1
    invoke-direct {v0, v2, v3, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 294
    return-object v0

    .line 297
    :sswitch_data_0
    .sparse-switch
        -0x41cad4c0 -> :sswitch_11
        -0x41c7e4c8 -> :sswitch_10
        -0x2af1b8c5 -> :sswitch_f
        -0x1fe56d71 -> :sswitch_e
        -0xacfbdb0 -> :sswitch_d
        -0x9247679 -> :sswitch_c
        0x289985f -> :sswitch_b
        0x1f693002 -> :sswitch_a
        0x291b586c -> :sswitch_9
        0x309b4632 -> :sswitch_8
        0x4a438bbc -> :sswitch_7
        0x5903ea39 -> :sswitch_6
        0x5e2ce025 -> :sswitch_5
        0x6379b96e -> :sswitch_4
        0x65415305 -> :sswitch_3
        0x70f16138 -> :sswitch_2
        0x76dace79 -> :sswitch_1
        0x76de49de -> :sswitch_0
    .end sparse-switch

    .line 298
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 372
.end method

.method public handleHeadsetHook()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Lcom/android/internal/accessibility/util/AccessibilityUtils;->interceptHeadsetHookForActiveCall(Landroid/content/Context;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/16 v0, 0x4f

    .line 10
    invoke-virtual {p0, v0}, Lcom/android/systemui/accessibility/SystemActions;->sendDownAndUpKeyEvents(I)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object p1

    .line 11
    invoke-virtual {p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    .line 12
    move-result-object p1

    .line 15
    const/4 v0, 0x0

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    .line 17
    move-result-object p1

    .line 20
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    .line 21
    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    iput-object p1, p0, Lcom/android/systemui/accessibility/SystemActions;->mLocale:Ljava/util/Locale;

    .line 29
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    .line 31
    :cond_0
    return-void
    .line 34
.end method

.method public final registerActions()V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    const v1, 0x1040104    # @android:string/accessibility_system_action_on_screen_a11y_shortcut_chooser_label

    .line 4
    const-string v2, "SYSTEM_ACTION_BACK"

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 9
    move-result-object v1

    .line 12
    const v2, 0x104010d    # @android:string/action_bar_home_subtitle_description_format

    .line 13
    const-string v3, "SYSTEM_ACTION_HOME"

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 18
    move-result-object v2

    .line 21
    const v3, 0x1040114    # @android:string/activity_resolver_use_always

    .line 22
    const-string v4, "SYSTEM_ACTION_RECENTS"

    .line 25
    invoke-virtual {v0, v3, v4}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 27
    move-result-object v3

    .line 30
    const v4, 0x104010f    # @android:string/action_menu_overflow_description

    .line 31
    const-string v5, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 34
    invoke-virtual {v0, v4, v5}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 36
    move-result-object v4

    .line 39
    const v5, 0x1040113    # @android:string/activity_list_empty

    .line 40
    const-string v6, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 43
    invoke-virtual {v0, v5, v6}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 45
    move-result-object v5

    .line 48
    const v6, 0x1040112    # @android:string/activity_chooser_view_see_all

    .line 49
    const-string v7, "SYSTEM_ACTION_POWER_DIALOG"

    .line 52
    invoke-virtual {v0, v6, v7}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 54
    move-result-object v6

    .line 57
    const v7, 0x104010e    # @android:string/action_bar_up_description

    .line 58
    const-string v8, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 61
    invoke-virtual {v0, v7, v8}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 63
    move-result-object v7

    .line 66
    const v8, 0x1040115    # @android:string/activity_resolver_use_once

    .line 67
    const-string v9, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 70
    invoke-virtual {v0, v8, v9}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 72
    move-result-object v8

    .line 75
    const v9, 0x104010c    # @android:string/action_bar_home_description_format

    .line 76
    const-string v10, "SYSTEM_ACTION_HEADSET_HOOK"

    .line 79
    invoke-virtual {v0, v9, v10}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 81
    move-result-object v9

    .line 84
    const v10, 0x104010b    # @android:string/action_bar_home_description

    .line 85
    const-string v11, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 88
    invoke-virtual {v0, v10, v11}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 90
    move-result-object v10

    .line 93
    const v11, 0x104010a    # @android:string/accessibility_uncheck_legacy_item_warning

    .line 94
    const-string v12, "SYSTEM_ACTION_DPAD_UP"

    .line 97
    invoke-virtual {v0, v11, v12}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 99
    move-result-object v11

    .line 102
    const v12, 0x1040107    # @android:string/accessibility_system_action_quick_settings_label

    .line 103
    const-string v13, "SYSTEM_ACTION_DPAD_DOWN"

    .line 106
    invoke-virtual {v0, v12, v13}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 108
    move-result-object v12

    .line 111
    const v13, 0x1040108    # @android:string/accessibility_system_action_recents_label

    .line 112
    const-string v14, "SYSTEM_ACTION_DPAD_LEFT"

    .line 115
    invoke-virtual {v0, v13, v14}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 117
    move-result-object v13

    .line 120
    const v14, 0x1040109    # @android:string/accessibility_system_action_screenshot_label

    .line 121
    const-string v15, "SYSTEM_ACTION_DPAD_RIGHT"

    .line 124
    invoke-virtual {v0, v14, v15}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 126
    move-result-object v14

    .line 129
    const v15, 0x1040106    # @android:string/accessibility_system_action_power_dialog_label

    .line 130
    move-object/from16 v16, v14

    .line 133
    const-string v14, "SYSTEM_ACTION_DPAD_CENTER"

    .line 135
    invoke-virtual {v0, v15, v14}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 137
    move-result-object v14

    .line 140
    const/4 v15, 0x1

    .line 141
    move-object/from16 v17, v14

    .line 142
    iget-object v14, v0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 144
    invoke-virtual {v14, v1, v15}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 146
    const/4 v1, 0x2

    .line 149
    invoke-virtual {v14, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 150
    const/4 v1, 0x3

    .line 153
    invoke-virtual {v14, v3, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 154
    iget-object v1, v0, Lcom/android/systemui/accessibility/SystemActions;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 157
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 159
    move-result-object v1

    .line 162
    check-cast v1, Ljava/util/Optional;

    .line 163
    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    .line 165
    move-result v1

    .line 168
    if-eqz v1, :cond_0

    .line 169
    const/4 v1, 0x4

    .line 171
    invoke-virtual {v14, v4, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 172
    const/4 v1, 0x5

    .line 175
    invoke-virtual {v14, v5, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 176
    :cond_0
    const/4 v1, 0x6

    .line 179
    invoke-virtual {v14, v6, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 180
    const/16 v1, 0x8

    .line 183
    invoke-virtual {v14, v7, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 185
    const/16 v1, 0x9

    .line 188
    invoke-virtual {v14, v8, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 190
    const/16 v1, 0xa

    .line 193
    invoke-virtual {v14, v9, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 195
    const/16 v1, 0xd

    .line 198
    invoke-virtual {v14, v10, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 200
    const/16 v1, 0x10

    .line 203
    invoke-virtual {v14, v11, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 205
    const/16 v1, 0x11

    .line 208
    invoke-virtual {v14, v12, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 210
    const/16 v1, 0x12

    .line 213
    invoke-virtual {v14, v13, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 215
    const/16 v1, 0x13

    .line 218
    move-object/from16 v2, v16

    .line 220
    invoke-virtual {v14, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 222
    const/16 v1, 0x14

    .line 225
    move-object/from16 v2, v17

    .line 227
    invoke-virtual {v14, v2, v1}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 229
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/accessibility/SystemActions;->registerOrUnregisterDismissNotificationShadeAction()V

    .line 232
    return-void
    .line 235
.end method

.method public final registerOrUnregisterDismissNotificationShadeAction()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 5
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Ljava/util/Optional;

    .line 11
    new-instance v1, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;

    .line 13
    invoke-direct {v1}, Lcom/android/systemui/accessibility/SystemActions$$ExternalSyntheticLambda0;-><init>()V

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 18
    move-result-object v1

    .line 21
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 22
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 30
    move-result v1

    .line 33
    const/16 v2, 0xf

    .line 34
    iget-object v3, p0, Lcom/android/systemui/accessibility/SystemActions;->mA11yManager:Landroid/view/accessibility/AccessibilityManager;

    .line 36
    if-eqz v1, :cond_0

    .line 38
    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 44
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 48
    move-result v0

    .line 51
    if-nez v0, :cond_0

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    .line 54
    if-nez v0, :cond_1

    .line 56
    const v0, 0x1040105    # @android:string/accessibility_system_action_on_screen_a11y_shortcut_label

    .line 58
    const-string v1, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    .line 61
    invoke-virtual {p0, v0, v1}, Lcom/android/systemui/accessibility/SystemActions;->createRemoteAction(ILjava/lang/String;)Landroid/app/RemoteAction;

    .line 63
    move-result-object v0

    .line 66
    invoke-virtual {v3, v0, v2}, Landroid/view/accessibility/AccessibilityManager;->registerSystemAction(Landroid/app/RemoteAction;I)V

    .line 67
    const/4 v0, 0x1

    .line 70
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    .line 71
    goto :goto_0

    .line 73
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    .line 74
    if-eqz v0, :cond_1

    .line 76
    invoke-virtual {v3, v2}, Landroid/view/accessibility/AccessibilityManager;->unregisterSystemAction(I)V

    .line 78
    const/4 v0, 0x0

    .line 81
    iput-boolean v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mDismissNotificationShadeActionRegistered:Z

    .line 82
    :cond_1
    :goto_0
    return-void
    .line 84
.end method

.method public final sendDownAndUpKeyEvents(I)V
    .locals 9

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 2
    move-result-wide v7

    .line 5
    const/4 v2, 0x0

    .line 6
    move-object v0, p0

    .line 7
    move v1, p1

    .line 8
    move-wide v3, v7

    .line 9
    move-wide v5, v7

    .line 10
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    .line 11
    const/4 v2, 0x1

    .line 14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 15
    move-result-wide v5

    .line 18
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/accessibility/SystemActions;->sendKeyEventIdentityCleared(IIJJ)V

    .line 19
    return-void
    .line 22
.end method

.method public final sendKeyEventIdentityCleared(IIJJ)V
    .locals 13

    .line 1
    const/4 v6, 0x0

    .line 2
    const/4 v7, 0x0

    .line 3
    const/4 v8, -0x1

    .line 4
    const/4 v9, 0x0

    .line 5
    const/16 v10, 0x8

    .line 6
    const/16 v11, 0x101

    .line 8
    const/4 v12, 0x0

    .line 10
    move-wide/from16 v0, p3

    .line 11
    move-wide/from16 v2, p5

    .line 13
    move v4, p2

    .line 15
    move v5, p1

    .line 16
    invoke-static/range {v0 .. v12}, Landroid/view/KeyEvent;->obtain(JJIIIIIIIILjava/lang/String;)Landroid/view/KeyEvent;

    .line 17
    move-result-object v0

    .line 20
    move-object v1, p0

    .line 21
    iget-object v1, v1, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 22
    const-class v2, Landroid/hardware/input/InputManager;

    .line 24
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/hardware/input/InputManager;

    .line 30
    const/4 v2, 0x0

    .line 32
    invoke-virtual {v1, v0, v2}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 33
    invoke-virtual {v0}, Landroid/view/KeyEvent;->recycle()V

    .line 36
    return-void
    .line 39
.end method

.method public final start()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeCallback:Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/accessibility/SystemActions;->mNotificationShadeController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 4
    check-cast v1, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->registerCallback(Lcom/android/systemui/statusbar/phone/StatusBarWindowCallback;)V

    .line 8
    iget-object v2, p0, Lcom/android/systemui/accessibility/SystemActions;->mContext:Landroid/content/Context;

    .line 11
    iget-object v3, p0, Lcom/android/systemui/accessibility/SystemActions;->mReceiver:Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;

    .line 13
    sget v0, Lcom/android/systemui/accessibility/SystemActions$SystemActionsBroadcastReceiver;->$r8$clinit:I

    .line 15
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    new-instance v4, Landroid/content/IntentFilter;

    .line 20
    invoke-direct {v4}, Landroid/content/IntentFilter;-><init>()V

    .line 22
    const-string v0, "SYSTEM_ACTION_BACK"

    .line 25
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 27
    const-string v0, "SYSTEM_ACTION_HOME"

    .line 30
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 32
    const-string v0, "SYSTEM_ACTION_RECENTS"

    .line 35
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 37
    const-string v0, "SYSTEM_ACTION_NOTIFICATIONS"

    .line 40
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 42
    const-string v0, "SYSTEM_ACTION_QUICK_SETTINGS"

    .line 45
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 47
    const-string v0, "SYSTEM_ACTION_POWER_DIALOG"

    .line 50
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 52
    const-string v0, "SYSTEM_ACTION_LOCK_SCREEN"

    .line 55
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    const-string v0, "SYSTEM_ACTION_TAKE_SCREENSHOT"

    .line 60
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 62
    const-string v0, "SYSTEM_ACTION_HEADSET_HOOK"

    .line 65
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON"

    .line 70
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 72
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_BUTTON_MENU"

    .line 75
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_SHORTCUT"

    .line 80
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 82
    const-string v0, "SYSTEM_ACTION_ACCESSIBILITY_DISMISS_NOTIFICATION_SHADE"

    .line 85
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 87
    const-string v0, "SYSTEM_ACTION_DPAD_UP"

    .line 90
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v0, "SYSTEM_ACTION_DPAD_DOWN"

    .line 95
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 97
    const-string v0, "SYSTEM_ACTION_DPAD_LEFT"

    .line 100
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 102
    const-string v0, "SYSTEM_ACTION_DPAD_RIGHT"

    .line 105
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 107
    const-string v0, "SYSTEM_ACTION_DPAD_CENTER"

    .line 110
    invoke-virtual {v4, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 112
    const-string v5, "com.android.systemui.permission.SELF"

    .line 115
    const/4 v6, 0x0

    .line 117
    const/4 v7, 0x2

    .line 118
    invoke-virtual/range {v2 .. v7}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 119
    invoke-virtual {p0}, Lcom/android/systemui/accessibility/SystemActions;->registerActions()V

    .line 122
    return-void
    .line 125
.end method
