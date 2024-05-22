.class public final Lcom/android/wm/shell/sysui/ShellController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

.field public final mExternalInterfaces:Landroid/util/ArrayMap;

.field public final mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

.field public final mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public mLastConfiguration:Landroid/content/res/Configuration;

.field public final mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

.field public final mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

.field public final mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

.field public final mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellCommandHandler;Lcom/android/wm/shell/common/ShellExecutor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;-><init>(Lcom/android/wm/shell/sysui/ShellController;)V

    .line 7
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mImpl:Lcom/android/wm/shell/sysui/ShellController$ShellInterfaceImpl;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 17
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 24
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 31
    new-instance v0, Landroid/util/ArrayMap;

    .line 33
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    .line 38
    new-instance v0, Landroid/util/ArrayMap;

    .line 40
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    .line 45
    iput-object p1, p0, Lcom/android/wm/shell/sysui/ShellController;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellInit:Lcom/android/wm/shell/sysui/ShellInit;

    .line 49
    iput-object p3, p0, Lcom/android/wm/shell/sysui/ShellController;->mShellCommandHandler:Lcom/android/wm/shell/sysui/ShellCommandHandler;

    .line 51
    iput-object p4, p0, Lcom/android/wm/shell/sysui/ShellController;->mMainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 53
    new-instance p1, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;

    .line 55
    const/4 p3, 0x0

    .line 57
    invoke-direct {p1, p3, p0}, Lcom/android/wm/shell/sysui/ShellController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 58
    invoke-virtual {p2, p0, p1}, Lcom/android/wm/shell/sysui/ShellInit;->addInitCallback(Ljava/lang/Object;Ljava/lang/Runnable;)V

    .line 61
    return-void
    .line 64
.end method


# virtual methods
.method public final addConfigurationChangeListener(Lcom/android/wm/shell/sysui/ConfigurationChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    return-void
    .line 10
.end method

.method public final addExternalInterface(Ljava/lang/String;Ljava/util/function/Supplier;Ljava/lang/Object;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_INIT_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object p3

    .line 9
    invoke-virtual {p3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 10
    move-result-object p3

    .line 13
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_INIT:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 14
    filled-new-array {p3, p1}, [Ljava/lang/Object;

    .line 16
    move-result-object p3

    .line 19
    const v1, 0x6ef24c1a

    .line 20
    const/4 v2, 0x0

    .line 23
    const-string v3, "Adding external interface from %s with key %s"

    .line 24
    invoke-static {v0, v1, v2, v3, p3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 26
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    .line 29
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    .line 31
    move-result p3

    .line 34
    if-nez p3, :cond_1

    .line 35
    invoke-virtual {p0, p1, p2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    return-void

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 41
    const-string p2, "Supplier with same key already exists: "

    .line 43
    invoke-virtual {p2, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    move-result-object p1

    .line 48
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 49
    throw p0
    .line 52
.end method

.method public final addKeyguardChangeListener(Lcom/android/wm/shell/sysui/KeyguardChangeListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    return-void
    .line 10
.end method

.method public createExternalInterfaces(Landroid/os/Bundle;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget-object v2, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaces:Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    .line 6
    move-result v3

    .line 9
    if-ge v1, v3, :cond_0

    .line 10
    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 12
    move-result-object v2

    .line 15
    check-cast v2, Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    .line 16
    invoke-interface {v2}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->invalidate()V

    .line 18
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    invoke-virtual {v2}, Landroid/util/ArrayMap;->clear()V

    .line 24
    :goto_1
    iget-object v1, p0, Lcom/android/wm/shell/sysui/ShellController;->mExternalInterfaceSuppliers:Landroid/util/ArrayMap;

    .line 27
    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    .line 29
    move-result v3

    .line 32
    if-ge v0, v3, :cond_1

    .line 33
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    .line 35
    move-result-object v3

    .line 38
    check-cast v3, Ljava/lang/String;

    .line 39
    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    .line 41
    move-result-object v1

    .line 44
    check-cast v1, Ljava/util/function/Supplier;

    .line 45
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    .line 47
    move-result-object v1

    .line 50
    check-cast v1, Lcom/android/wm/shell/common/ExternalInterfaceBinder;

    .line 51
    invoke-virtual {v2, v3, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-interface {v1}, Lcom/android/wm/shell/common/ExternalInterfaceBinder;->asBinder()Landroid/os/IBinder;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 60
    add-int/lit8 v0, v0, 0x1

    .line 63
    goto :goto_1

    .line 65
    :cond_1
    return-void
    .line 66
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x0

    .line 5
    if-nez v0, :cond_1

    .line 6
    new-instance v0, Landroid/content/res/Configuration;

    .line 8
    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 10
    iput-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 13
    sget-boolean p0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    sget-object p1, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 23
    const v0, 0x584e0d5f

    .line 25
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    invoke-static {p1, v0, v2, v1, p0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 32
    :cond_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {p1, v0}, Landroid/content/res/Configuration;->diff(Landroid/content/res/Configuration;)I

    .line 36
    move-result v0

    .line 39
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 40
    if-eqz v3, :cond_2

    .line 42
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 44
    move-result-object v3

    .line 47
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 48
    const v5, -0x18b5a389

    .line 50
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    invoke-static {v4, v5, v2, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 57
    :cond_2
    sget-boolean v3, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 60
    if-eqz v3, :cond_3

    .line 62
    invoke-static {v0}, Landroid/content/res/Configuration;->configurationDiffToString(I)Ljava/lang/String;

    .line 64
    move-result-object v3

    .line 67
    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 68
    move-result-object v3

    .line 71
    sget-object v4, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 72
    const v5, -0x7540877e

    .line 74
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 80
    invoke-static {v4, v5, v2, v1, v3}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 81
    :cond_3
    const/high16 v1, 0x40000000    # 2.0f

    .line 84
    and-int/2addr v1, v0

    .line 86
    const/4 v3, 0x1

    .line 87
    if-nez v1, :cond_5

    .line 88
    and-int/lit16 v1, v0, 0x1000

    .line 90
    if-eqz v1, :cond_4

    .line 92
    goto :goto_0

    .line 94
    :cond_4
    move v1, v2

    .line 95
    goto :goto_1

    .line 96
    :cond_5
    :goto_0
    move v1, v3

    .line 97
    :goto_1
    and-int/lit16 v4, v0, 0x800

    .line 98
    if-eqz v4, :cond_6

    .line 100
    move v4, v3

    .line 102
    goto :goto_2

    .line 103
    :cond_6
    move v4, v2

    .line 104
    :goto_2
    const/high16 v5, -0x80000000

    .line 105
    and-int/2addr v5, v0

    .line 107
    if-nez v5, :cond_8

    .line 108
    and-int/lit16 v5, v0, 0x200

    .line 110
    if-eqz v5, :cond_7

    .line 112
    goto :goto_3

    .line 114
    :cond_7
    move v5, v2

    .line 115
    goto :goto_4

    .line 116
    :cond_8
    :goto_3
    move v5, v3

    .line 117
    :goto_4
    and-int/lit8 v6, v0, 0x4

    .line 118
    if-nez v6, :cond_9

    .line 120
    and-int/lit16 v0, v0, 0x2000

    .line 122
    if-eqz v0, :cond_a

    .line 124
    :cond_9
    move v2, v3

    .line 126
    :cond_a
    iget-object v0, p0, Lcom/android/wm/shell/sysui/ShellController;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 127
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 129
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mConfigChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 132
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 134
    move-result-object p0

    .line 137
    :cond_b
    :goto_5
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 138
    move-result v0

    .line 141
    if-eqz v0, :cond_f

    .line 142
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 144
    move-result-object v0

    .line 147
    check-cast v0, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;

    .line 148
    invoke-interface {v0, p1}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 150
    if-eqz v1, :cond_c

    .line 153
    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onDensityOrFontScaleChanged()V

    .line 155
    :cond_c
    if-eqz v4, :cond_d

    .line 158
    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onSmallestScreenWidthChanged()V

    .line 160
    :cond_d
    if-eqz v5, :cond_e

    .line 163
    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onThemeChanged()V

    .line 165
    :cond_e
    if-eqz v2, :cond_b

    .line 168
    invoke-interface {v0}, Lcom/android/wm/shell/sysui/ConfigurationChangeListener;->onLocaleOrLayoutDirectionChanged()V

    .line 170
    goto :goto_5

    .line 173
    :cond_f
    return-void
    .line 174
.end method

.method public onKeyguardDismissAnimationFinished()V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, 0x2578d56f

    .line 10
    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/wm/shell/sysui/KeyguardChangeListener;

    .line 32
    invoke-interface {v0}, Lcom/android/wm/shell/sysui/KeyguardChangeListener;->onKeyguardDismissAnimationFinished()V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    return-void
    .line 38
.end method

.method public onKeyguardVisibilityChanged(ZZZ)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 12
    move-result-object v2

    .line 15
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 16
    move-result-object v3

    .line 19
    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    const/16 v2, 0x3f

    .line 24
    const/4 v3, 0x0

    .line 26
    const v4, 0x73b5279c

    .line 27
    invoke-static {v0, v4, v2, v3, v1}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mKeyguardChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 33
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 35
    move-result-object p0

    .line 38
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 39
    move-result v0

    .line 42
    if-eqz v0, :cond_1

    .line 43
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    move-result-object v0

    .line 48
    check-cast v0, Lcom/android/wm/shell/sysui/KeyguardChangeListener;

    .line 49
    invoke-interface {v0, p1, p2, p3}, Lcom/android/wm/shell/sysui/KeyguardChangeListener;->onKeyguardVisibilityChanged(ZZZ)V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    return-void
    .line 55
.end method

.method public onUserChanged(ILandroid/content/Context;)V
    .locals 5

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    int-to-long v0, p1

    .line 6
    sget-object v2, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 9
    move-result-object v0

    .line 12
    filled-new-array {v0}, [Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x1

    .line 17
    const/4 v3, 0x0

    .line 18
    const v4, -0x4f4a2bf3

    .line 19
    invoke-static {v2, v4, v1, v3, v0}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 25
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/android/wm/shell/sysui/UserChangeListener;

    .line 41
    invoke-interface {v0, p1, p2}, Lcom/android/wm/shell/sysui/UserChangeListener;->onUserChanged(ILandroid/content/Context;)V

    .line 43
    goto :goto_0

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public onUserProfilesChanged(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/protolog/ShellProtoLogCache;->WM_SHELL_SYSUI_EVENTS_enabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    sget-object v0, Lcom/android/wm/shell/protolog/ShellProtoLogGroup;->WM_SHELL_SYSUI_EVENTS:Lcom/android/wm/shell/protolog/ShellProtoLogGroup;

    .line 6
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    const v3, -0xb1c5c7c

    .line 10
    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/wm/shell/protolog/ShellProtoLogImpl;->v(Lcom/android/wm/shell/protolog/ShellProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/wm/shell/sysui/ShellController;->mUserChangeListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 16
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    .line 18
    move-result-object p0

    .line 21
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lcom/android/wm/shell/sysui/UserChangeListener;

    .line 32
    invoke-interface {v0, p1}, Lcom/android/wm/shell/sysui/UserChangeListener;->onUserProfilesChanged(Ljava/util/List;)V

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    return-void
    .line 38
.end method
