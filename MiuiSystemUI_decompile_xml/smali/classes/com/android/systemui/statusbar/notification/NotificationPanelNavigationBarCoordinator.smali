.class public final Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public bar:Lcom/android/systemui/navigationbar/NavigationBar;

.field public barView:Lcom/android/systemui/navigationbar/NavigationBarView;

.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final darkModeReasons:Ljava/util/Set;

.field public disable1:I

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public lastNavigationBarMode:I

.field public final lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

.field public final location:[I

.field public final onGlobalLayoutListener:Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$onGlobalLayoutListener$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/phone/LightBarController;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    new-instance p1, Ljava/util/LinkedHashSet;

    .line 13
    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->darkModeReasons:Ljava/util/Set;

    .line 18
    const/4 p1, -0x1

    .line 20
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lastNavigationBarMode:I

    .line 21
    const/4 p1, 0x2

    .line 23
    new-array p1, p1, [I

    .line 24
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->location:[I

    .line 26
    new-instance p1, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$onGlobalLayoutListener$1;

    .line 28
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$onGlobalLayoutListener$1;-><init>(Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->onGlobalLayoutListener:Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$onGlobalLayoutListener$1;

    .line 33
    return-void
    .line 35
.end method


# virtual methods
.method public final disable(IIIZ)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->disable1:I

    .line 2
    return-void
    .line 4
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lastNavigationBarMode:I

    .line 2
    const-string v0, "lastNavigationBarMode="

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->darkModeReasons:Ljava/util/Set;

    .line 9
    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    .line 11
    move-result p2

    .line 14
    xor-int/lit8 p2, p2, 0x1

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    .line 17
    const-string v1, "hookNavBarDarkMode="

    .line 19
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 24
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    move-result-object p2

    .line 30
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 31
    invoke-interface {p0}, Ljava/util/Set;->size()I

    .line 34
    move-result p2

    .line 37
    new-instance v0, Ljava/lang/StringBuilder;

    .line 38
    const-string v1, "reasons="

    .line 40
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 42
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p2

    .line 51
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 52
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object p0

    .line 58
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result p2

    .line 62
    if-eqz p2, :cond_0

    .line 63
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object p2

    .line 68
    check-cast p2, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$DarkModeReason;

    .line 69
    invoke-virtual {p2}, Ljava/lang/Enum;->name()Ljava/lang/String;

    .line 71
    move-result-object p2

    .line 74
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_0
    return-void
    .line 79
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final switch(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->barView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    if-eqz p1, :cond_1

    .line 7
    const/4 p1, 0x1

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->updateNavigationBarMode(I)V

    .line 10
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lightBarController:Lcom/android/systemui/statusbar/phone/LightBarController;

    .line 13
    iget p1, p1, Lcom/android/systemui/statusbar/phone/LightBarController;->mNavigationBarMode:I

    .line 15
    iput p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lastNavigationBarMode:I

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iget p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lastNavigationBarMode:I

    .line 20
    const/4 v0, -0x1

    .line 22
    if-eq p1, v0, :cond_2

    .line 23
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->updateNavigationBarMode(I)V

    .line 25
    iput v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->lastNavigationBarMode:I

    .line 28
    :cond_2
    :goto_0
    return-void
    .line 30
.end method

.method public final switchNavigationBarModeIfNeed(ZLcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator$DarkModeReason;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->barView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-nez v0, :cond_0

    .line 6
    :goto_0
    move v0, v2

    .line 8
    goto :goto_1

    .line 9
    :cond_0
    sget-boolean v0, Lcom/android/systemui/statusbar/phone/NavigationModeControllerExt;->mIsFsgMode:Z

    .line 10
    if-eqz v0, :cond_1

    .line 12
    goto :goto_0

    .line 14
    :cond_1
    move v0, v1

    .line 15
    :goto_1
    if-eqz v0, :cond_2

    .line 16
    return-void

    .line 18
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->darkModeReasons:Ljava/util/Set;

    .line 19
    if-eqz p1, :cond_4

    .line 21
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->switch(Z)V

    .line 29
    :cond_3
    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 32
    goto :goto_2

    .line 35
    :cond_4
    invoke-interface {v0, p2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 36
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    .line 39
    move-result p1

    .line 42
    if-eqz p1, :cond_5

    .line 43
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->switch(Z)V

    .line 45
    :cond_5
    :goto_2
    return-void
    .line 48
.end method

.method public final updateNavigationBarMode(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->barView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    move-object v0, v1

    .line 7
    :cond_0
    invoke-virtual {v0}, Lcom/android/systemui/navigationbar/NavigationBarView;->getBarTransitions()Lcom/android/systemui/navigationbar/NavigationBarTransitions;

    .line 8
    move-result-object v0

    .line 11
    iget v2, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 12
    if-ne v2, p1, :cond_1

    .line 14
    goto :goto_0

    .line 16
    :cond_1
    iput p1, v0, Lcom/android/systemui/statusbar/phone/BarTransitions;->mMode:I

    .line 17
    const/4 v3, 0x1

    .line 19
    invoke-virtual {v0, v2, p1, v3}, Lcom/android/systemui/navigationbar/NavigationBarTransitions;->onTransition(IIZ)V

    .line 20
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->barView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 23
    if-nez p1, :cond_2

    .line 25
    move-object p1, v1

    .line 27
    :cond_2
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_5

    .line 32
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->barView:Lcom/android/systemui/navigationbar/NavigationBarView;

    .line 34
    if-nez p1, :cond_3

    .line 36
    move-object p1, v1

    .line 38
    :cond_3
    iget v0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->disable1:I

    .line 39
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/NotificationPanelNavigationBarCoordinator;->bar:Lcom/android/systemui/navigationbar/NavigationBar;

    .line 41
    if-nez p0, :cond_4

    .line 43
    goto :goto_1

    .line 45
    :cond_4
    move-object v1, p0

    .line 46
    :goto_1
    iget-object p0, v1, Lcom/android/systemui/navigationbar/NavigationBar;->mSysUiFlagsContainer:Lcom/android/systemui/model/SysUiState;

    .line 47
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/navigationbar/NavigationBarView;->setDisabledFlags(ILcom/android/systemui/model/SysUiState;)V

    .line 49
    :cond_5
    return-void
    .line 52
.end method
