.class public abstract Lcom/android/systemui/notetask/NoteTaskRoleManagerExt;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static createNoteShortcutInfoAsUser(Landroid/app/role/RoleManager;Landroid/content/Context;Landroid/os/UserHandle;)Landroid/content/pm/ShortcutInfo;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/PersistableBundle;

    .line 2
    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 4
    const-string v1, "android.app.role.NOTES"

    .line 7
    invoke-virtual {p0, v1, p2}, Landroid/app/role/RoleManager;->getRoleHoldersAsUser(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {p0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    check-cast p0, Ljava/lang/String;

    .line 17
    if-eqz p0, :cond_0

    .line 19
    const-string p2, "extra_shortcut_badge_override_package"

    .line 21
    invoke-virtual {v0, p2, p0}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    :cond_0
    const p0, 0x7f08110a    # @drawable/ic_note_task_shortcut_widget 'res/drawable/ic_note_task_shortcut_widget.xml'

    .line 26
    invoke-static {p1, p0}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 29
    move-result-object p0

    .line 32
    new-instance p2, Landroid/content/pm/ShortcutInfo$Builder;

    .line 33
    const-string v1, "note_task_shortcut_id"

    .line 35
    invoke-direct {p2, p1, v1}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 37
    sget v1, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;->$r8$clinit:I

    .line 40
    new-instance v1, Landroid/content/Intent;

    .line 42
    const-class v2, Lcom/android/systemui/notetask/shortcut/LaunchNoteTaskActivity;

    .line 44
    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 46
    const-string v3, "android.intent.action.CREATE_NOTE"

    .line 49
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 51
    invoke-virtual {p2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 54
    move-result-object p2

    .line 57
    new-instance v1, Landroid/content/ComponentName;

    .line 58
    invoke-direct {v1, p1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 60
    invoke-virtual {p2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setActivity(Landroid/content/ComponentName;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 63
    move-result-object p2

    .line 66
    const v1, 0x7f130866    # @string/note_task_button_label 'Notetaking'

    .line 67
    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    invoke-virtual {p2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 74
    move-result-object p1

    .line 77
    const/4 p2, 0x1

    .line 78
    invoke-virtual {p1, p2}, Landroid/content/pm/ShortcutInfo$Builder;->setLongLived(Z)Landroid/content/pm/ShortcutInfo$Builder;

    .line 79
    move-result-object p1

    .line 82
    invoke-virtual {p1, p0}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 83
    move-result-object p0

    .line 86
    invoke-virtual {p0, v0}, Landroid/content/pm/ShortcutInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/content/pm/ShortcutInfo$Builder;

    .line 87
    move-result-object p0

    .line 90
    invoke-virtual {p0}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    .line 91
    move-result-object p0

    .line 94
    return-object p0
    .line 95
.end method
