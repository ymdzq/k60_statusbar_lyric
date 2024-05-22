.class public final Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/WindowManager$KeyboardShortcutsReceiver;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;->$context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onKeyboardShortcutsReceived(Ljava/util/List;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/miui/systemui/MiuiKeyboardShortcutsData;->specialCharacterNames:Landroid/util/SparseArray;

    .line 2
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;->$context:Landroid/content/Context;

    .line 4
    new-instance v1, Landroid/view/KeyboardShortcutGroup;

    .line 6
    const v2, 0x7f1305a0    # @string/keyboard_shortcut_group_system 'System'

    .line 8
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 11
    move-result-object v2

    .line 14
    const/4 v3, 0x1

    .line 15
    invoke-direct {v1, v2, v3}, Landroid/view/KeyboardShortcutGroup;-><init>(Ljava/lang/CharSequence;Z)V

    .line 16
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 19
    const v3, 0x7f13073e    # @string/miui_keyboard_shortcut_system_dock 'Show app dock'

    .line 21
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 24
    move-result-object v3

    .line 27
    const/16 v4, 0x75

    .line 28
    const/4 v5, -0x1

    .line 30
    invoke-direct {v2, v3, v4, v5}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 31
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 34
    new-instance v2, Landroid/view/KeyboardShortcutInfo;

    .line 37
    const v3, 0x7f13073f    # @string/miui_keyboard_shortcut_system_quickly_recent 'Switch between recent apps'

    .line 39
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v0

    .line 45
    const/4 v3, -0x2

    .line 46
    invoke-direct {v2, v0, v4, v3}, Landroid/view/KeyboardShortcutInfo;-><init>(Ljava/lang/CharSequence;II)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V

    .line 50
    :try_start_0
    const-class v0, Lmiui/hardware/input/MiuiInputManager;

    .line 53
    const-string v2, "getKeyboardShortcut"

    .line 55
    const/4 v3, 0x0

    .line 57
    new-array v4, v3, [Ljava/lang/Class;

    .line 58
    invoke-virtual {v0, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    move-result-object v0

    .line 63
    if-eqz v0, :cond_0

    .line 64
    invoke-static {}, Lmiui/hardware/input/MiuiInputManager;->getInstance()Lmiui/hardware/input/MiuiInputManager;

    .line 66
    move-result-object v2

    .line 69
    new-array v4, v3, [Ljava/lang/Object;

    .line 70
    invoke-virtual {v0, v2, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    move-result-object v0

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    const/4 v0, 0x0

    .line 77
    :goto_0
    check-cast v0, Ljava/util/List;

    .line 78
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 80
    move-result-object v0

    .line 83
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 84
    move-result v2

    .line 87
    if-eqz v2, :cond_2

    .line 88
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 90
    move-result-object v2

    .line 93
    check-cast v2, Landroid/view/KeyboardShortcutInfo;

    .line 94
    const-class v4, Landroid/view/KeyboardShortcutInfo;

    .line 96
    const-string v5, "isActive"

    .line 98
    new-array v6, v3, [Ljava/lang/Class;

    .line 100
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    move-result-object v4

    .line 105
    new-array v5, v3, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v4, v2, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v4

    .line 111
    check-cast v4, Ljava/lang/Boolean;

    .line 112
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    .line 114
    move-result v4

    .line 117
    if-eqz v4, :cond_1

    .line 118
    invoke-virtual {v1, v2}, Landroid/view/KeyboardShortcutGroup;->addItem(Landroid/view/KeyboardShortcutInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    goto :goto_1

    .line 123
    :catch_0
    move-exception v0

    .line 124
    new-instance v2, Ljava/lang/StringBuilder;

    .line 125
    const-string v3, "Get system keyboard shortcuts error "

    .line 127
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 132
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 135
    move-result-object v0

    .line 138
    const-string v2, "KeyboardShortcuts"

    .line 139
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    :cond_2
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    iget-object v0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;->this$0:Lcom/miui/systemui/MiuiKeyboardShortcuts;

    .line 147
    iget-object p0, p0, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcuts$listener$1;->$context:Landroid/content/Context;

    .line 149
    iget-object v1, v0, Lcom/miui/systemui/MiuiKeyboardShortcuts;->handler:Landroid/os/Handler;

    .line 151
    new-instance v2, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;

    .line 153
    invoke-direct {v2, p0, v0, p1}, Lcom/miui/systemui/MiuiKeyboardShortcuts$showKeyboardShortcutsDialog$1;-><init>(Landroid/content/Context;Lcom/miui/systemui/MiuiKeyboardShortcuts;Ljava/util/List;)V

    .line 155
    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 158
    return-void
    .line 161
.end method
