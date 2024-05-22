.class public final Lcom/android/systemui/statusbar/KeyboardShortcuts$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    .line 7
    iget-object v2, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 9
    const v3, 0x7f1305a0    # @string/keyboard_shortcut_group_system 'System'

    .line 11
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 14
    move-result-object v2

    .line 17
    const/4 v3, 0x1

    .line 18
    invoke-direct {v1, v2, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    .line 19
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 22
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 24
    const v5, 0x7f1305a2    # @string/keyboard_shortcut_group_system_home 'Home'

    .line 26
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 32
    const/16 v5, 0x42

    .line 33
    const/high16 v6, 0x10000

    .line 35
    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 37
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 40
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 43
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 45
    const v5, 0x7f1305a1    # @string/keyboard_shortcut_group_system_back 'Back'

    .line 47
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 50
    move-result-object v4

    .line 53
    const/16 v5, 0x43

    .line 54
    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 59
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 62
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 64
    const v5, 0x7f1305a5    # @string/keyboard_shortcut_group_system_recents 'Recents'

    .line 66
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 69
    move-result-object v4

    .line 72
    const/16 v5, 0x3d

    .line 73
    const/4 v7, 0x2

    .line 75
    invoke-direct {v2, v4, v5, v7}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 76
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 79
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 82
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 84
    const v5, 0x7f1305a4    # @string/keyboard_shortcut_group_system_notifications 'Notifications'

    .line 86
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 92
    const/16 v5, 0x2a

    .line 93
    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 95
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 98
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 101
    iget-object v4, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 103
    const v5, 0x7f1305a6    # @string/keyboard_shortcut_group_system_shortcuts_helper 'Keyboard Shortcuts'

    .line 105
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 108
    move-result-object v4

    .line 111
    const/16 v5, 0x4c

    .line 112
    invoke-direct {v2, v4, v5, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 117
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 120
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 122
    const v4, 0x7f1305a7    # @string/keyboard_shortcut_group_system_switch_input 'Switch keyboard layout'

    .line 124
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 127
    move-result-object v0

    .line 130
    const/16 v4, 0x3e

    .line 131
    invoke-direct {v2, v0, v4, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 133
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 136
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 142
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 144
    invoke-virtual {v1}, Landroid/content/Context;->getUserId()I

    .line 146
    move-result v1

    .line 149
    new-instance v2, Ljava/util/ArrayList;

    .line 150
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 152
    new-instance v4, Lcom/android/internal/app/AssistUtils;

    .line 155
    iget-object v5, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 157
    invoke-direct {v4, v5}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    .line 159
    invoke-virtual {v4, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    .line 162
    move-result-object v4

    .line 165
    const/4 v5, 0x0

    .line 166
    if-eqz v4, :cond_0

    .line 167
    :try_start_0
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mPackageManager:Landroid/content/pm/IPackageManager;

    .line 169
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 174
    const-wide/16 v8, 0x0

    .line 175
    invoke-interface {v7, v4, v8, v9, v1}, Landroid/content/pm/IPackageManager;->getPackageInfo(Ljava/lang/String;JI)Landroid/content/pm/PackageInfo;

    .line 177
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    goto :goto_0

    .line 181
    :catch_0
    const-string v4, "KeyboardShortcuts"

    .line 182
    const-string v7, "PackageManagerService is dead"

    .line 184
    invoke-static {v4, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    move-object v4, v5

    .line 189
    :goto_0
    if-eqz v4, :cond_0

    .line 190
    iget-object v4, v4, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 192
    iget-object v7, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 194
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->icon:I

    .line 196
    invoke-static {v7, v4}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    .line 198
    move-result-object v4

    .line 201
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 202
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 204
    const v9, 0x7f130596    # @string/keyboard_shortcut_group_applications_assist 'Assist'

    .line 206
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 209
    move-result-object v8

    .line 212
    const/4 v9, 0x0

    .line 213
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 214
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 217
    :cond_0
    const-string v4, "android.intent.category.APP_BROWSER"

    .line 220
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 222
    move-result-object v4

    .line 225
    if-eqz v4, :cond_1

    .line 226
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 228
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 230
    const v9, 0x7f130597    # @string/keyboard_shortcut_group_applications_browser 'Browser (Chrome as default)'

    .line 232
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v8

    .line 238
    const/16 v9, 0x1e

    .line 239
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 241
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 244
    :cond_1
    const-string v4, "android.intent.category.APP_CONTACTS"

    .line 247
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 249
    move-result-object v4

    .line 252
    if-eqz v4, :cond_2

    .line 253
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 255
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 257
    const v9, 0x7f13059a    # @string/keyboard_shortcut_group_applications_contacts 'Contacts'

    .line 259
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 262
    move-result-object v8

    .line 265
    const/16 v9, 0x1f

    .line 266
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 268
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 271
    :cond_2
    const-string v4, "android.intent.category.APP_EMAIL"

    .line 274
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 276
    move-result-object v4

    .line 279
    if-eqz v4, :cond_3

    .line 280
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 282
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 284
    const v9, 0x7f13059b    # @string/keyboard_shortcut_group_applications_email 'Email (Gmail as default)'

    .line 286
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 289
    move-result-object v8

    .line 292
    const/16 v9, 0x21

    .line 293
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 295
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_3
    const-string v4, "android.intent.category.APP_MESSAGING"

    .line 301
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 303
    move-result-object v4

    .line 306
    if-eqz v4, :cond_4

    .line 307
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 309
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 311
    const v9, 0x7f13059e    # @string/keyboard_shortcut_group_applications_sms 'SMS'

    .line 313
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 316
    move-result-object v8

    .line 319
    const/16 v9, 0x2f

    .line 320
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 322
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 325
    :cond_4
    const-string v4, "android.intent.category.APP_MUSIC"

    .line 328
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 330
    move-result-object v4

    .line 333
    if-eqz v4, :cond_5

    .line 334
    new-instance v7, Landroid/view/KeyboardShortcutInfo;

    .line 336
    iget-object v8, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 338
    const v9, 0x7f13059d    # @string/keyboard_shortcut_group_applications_music 'Music'

    .line 340
    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v8

    .line 346
    const/16 v9, 0x2c

    .line 347
    invoke-direct {v7, v8, v4, v9, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 349
    invoke-virtual {v2, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 352
    :cond_5
    const-string v4, "android.intent.category.APP_CALENDAR"

    .line 355
    invoke-virtual {v0, v1, v4}, Lcom/android/systemui/statusbar/KeyboardShortcuts;->getIconForIntentCategory(ILjava/lang/String;)Landroid/graphics/drawable/Icon;

    .line 357
    move-result-object v1

    .line 360
    if-eqz v1, :cond_6

    .line 361
    new-instance v4, Landroid/view/KeyboardShortcutInfo;

    .line 363
    iget-object v7, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 365
    const v8, 0x7f130599    # @string/keyboard_shortcut_group_applications_calendar 'Calendar'

    .line 367
    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 370
    move-result-object v7

    .line 373
    const/16 v8, 0x28

    .line 374
    invoke-direct {v4, v7, v1, v8, v6}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;II)V

    .line 376
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 379
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 382
    move-result v1

    .line 385
    if-nez v1, :cond_7

    .line 386
    goto :goto_1

    .line 388
    :cond_7
    iget-object v1, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mApplicationItemsComparator:Lcom/android/systemui/statusbar/KeyboardShortcuts$2;

    .line 389
    invoke-static {v2, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 391
    new-instance v5, Landroid/view/KeyboardShortcutGroup;

    .line 394
    iget-object v0, v0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mContext:Landroid/content/Context;

    .line 396
    const v1, 0x7f130595    # @string/keyboard_shortcut_group_applications 'Applications'

    .line 398
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 401
    move-result-object v0

    .line 404
    invoke-direct {v5, v0, v2, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Ljava/util/List;Z)V

    .line 405
    :goto_1
    if-eqz v5, :cond_8

    .line 408
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 410
    :cond_8
    iget-object p0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts$3;->this$0:Lcom/android/systemui/statusbar/KeyboardShortcuts;

    .line 413
    iget-object v0, p0, Lcom/android/systemui/statusbar/KeyboardShortcuts;->mHandler:Landroid/os/Handler;

    .line 415
    new-instance v1, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;

    .line 417
    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/KeyboardShortcuts$4;-><init>(Lcom/android/systemui/statusbar/KeyboardShortcuts;Ljava/util/List;)V

    .line 419
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 422
    return-void
    .line 425
.end method
