.class public final Lcom/android/systemui/qs/tiles/DeviceControlsTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

.field public final hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public final listingCallback:Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/controls/dagger/ControlsComponent;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 5
    new-instance p1, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    const/4 p2, 0x0

    .line 9
    invoke-direct {p1, p2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 13
    new-instance p1, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;

    .line 15
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->listingCallback:Lcom/android/systemui/qs/tiles/DeviceControlsTile$listingCallback$1;

    .line 20
    invoke-virtual {p10}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsListingController()Ljava/util/Optional;

    .line 22
    move-result-object p1

    .line 25
    new-instance p2, Lcom/android/systemui/qs/tiles/DeviceControlsTile$1;

    .line 26
    invoke-direct {p2, p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;)V

    .line 28
    invoke-virtual {p1, p2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 31
    return-void
    .line 34
.end method

.method public static synthetic getIcon$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    const v0, 0x7f130952    # @string/quick_controls_title 'Device controls'

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 12
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    iget v0, v0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Landroid/content/Intent;

    .line 9
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    new-instance v1, Landroid/content/ComponentName;

    .line 14
    iget-object v2, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 16
    iget-boolean v3, v2, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 18
    if-eqz v3, :cond_1

    .line 20
    iget-object v2, v2, Lcom/android/systemui/controls/dagger/ControlsComponent;->lazyControlsUiController:Ldagger/Lazy;

    .line 22
    invoke-interface {v2}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    invoke-static {v2}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 28
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 33
    move-result-object v2

    .line 36
    :goto_0
    invoke-virtual {v2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 37
    move-result-object v2

    .line 40
    check-cast v2, Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 41
    check-cast v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 43
    iget-object v3, v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsController:Ldagger/Lazy;

    .line 45
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    check-cast v4, Lcom/android/systemui/controls/controller/ControlsController;

    .line 51
    check-cast v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 53
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 55
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 58
    move-result-object v4

    .line 61
    invoke-virtual {v2, v4}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    .line 62
    move-result-object v5

    .line 65
    iget-object v6, v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->controlsListingController:Ldagger/Lazy;

    .line 66
    invoke-interface {v6}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 68
    move-result-object v6

    .line 71
    check-cast v6, Lcom/android/systemui/controls/management/ControlsListingController;

    .line 72
    check-cast v6, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;

    .line 74
    invoke-virtual {v6}, Lcom/android/systemui/controls/management/ControlsListingControllerImpl;->getCurrentServices()Ljava/util/List;

    .line 76
    move-result-object v6

    .line 79
    check-cast v6, Ljava/util/ArrayList;

    .line 80
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    move-result v7

    .line 85
    const/4 v8, 0x0

    .line 86
    const/4 v9, 0x1

    .line 87
    if-eqz v7, :cond_2

    .line 88
    goto :goto_2

    .line 90
    :cond_2
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 91
    move-result-object v6

    .line 94
    :cond_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 95
    move-result v7

    .line 98
    if-eqz v7, :cond_5

    .line 99
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 101
    move-result-object v7

    .line 104
    check-cast v7, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 105
    iget-object v7, v7, Lcom/android/systemui/controls/ControlsServiceInfo;->panelActivity:Landroid/content/ComponentName;

    .line 107
    if-eqz v7, :cond_4

    .line 109
    move v7, v9

    .line 111
    goto :goto_1

    .line 112
    :cond_4
    move v7, v8

    .line 113
    :goto_1
    if-eqz v7, :cond_3

    .line 114
    move v6, v9

    .line 116
    goto :goto_3

    .line 117
    :cond_5
    :goto_2
    move v6, v8

    .line 118
    :goto_3
    invoke-interface {v3}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 119
    move-result-object v3

    .line 122
    check-cast v3, Lcom/android/systemui/controls/controller/ControlsController;

    .line 123
    check-cast v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 125
    iget-boolean v7, v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 127
    if-nez v7, :cond_6

    .line 129
    goto :goto_4

    .line 131
    :cond_6
    new-instance v7, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;

    .line 132
    iget-object v2, v2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->onSeedingComplete:Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;

    .line 134
    invoke-direct {v7, v3, v2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;-><init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;)V

    .line 136
    iget-object v2, v3, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->executor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 139
    check-cast v2, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 141
    invoke-virtual {v2, v7}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 143
    move v8, v9

    .line 146
    :goto_4
    if-eqz v8, :cond_7

    .line 147
    goto :goto_5

    .line 149
    :cond_7
    invoke-virtual {v5}, Lcom/android/systemui/controls/ui/SelectedItem;->getHasControls()Z

    .line 150
    move-result v2

    .line 153
    if-nez v2, :cond_8

    .line 154
    check-cast v4, Ljava/util/ArrayList;

    .line 156
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 158
    move-result v2

    .line 161
    if-gt v2, v9, :cond_8

    .line 162
    if-nez v6, :cond_8

    .line 164
    const-class v2, Lcom/android/systemui/controls/management/ControlsProviderSelectorActivity;

    .line 166
    goto :goto_6

    .line 168
    :cond_8
    :goto_5
    const-class v2, Lcom/android/systemui/controls/ui/ControlsActivity;

    .line 169
    :goto_6
    iget-object v3, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 171
    invoke-direct {v1, v3, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 173
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 176
    const/high16 v1, 0x14000000

    .line 179
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 181
    const-string v1, "extra_animate"

    .line 184
    invoke-virtual {v0, v1, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 186
    if-eqz p1, :cond_b

    .line 189
    const/16 v1, 0x20

    .line 191
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 193
    move-result-object v1

    .line 196
    instance-of v2, p1, Lcom/android/systemui/animation/LaunchableView;

    .line 197
    if-eqz v2, :cond_a

    .line 199
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    .line 201
    move-result-object v2

    .line 204
    instance-of v2, v2, Landroid/view/ViewGroup;

    .line 205
    if-nez v2, :cond_9

    .line 207
    new-instance v1, Ljava/lang/StringBuilder;

    .line 209
    const-string v2, "Skipping animation as view "

    .line 211
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 213
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    const-string p1, " is not attached to a ViewGroup"

    .line 219
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object p1

    .line 227
    new-instance v1, Ljava/lang/Exception;

    .line 228
    invoke-direct {v1}, Ljava/lang/Exception;-><init>()V

    .line 230
    const-string v2, "ActivityLaunchAnimator"

    .line 233
    invoke-static {v2, p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    goto :goto_7

    .line 238
    :cond_9
    new-instance v2, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;

    .line 239
    const/4 v3, 0x4

    .line 241
    invoke-direct {v2, p1, v1, v3}, Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;-><init>(Landroid/view/View;Ljava/lang/Integer;I)V

    .line 242
    goto :goto_8

    .line 245
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 246
    const-string p1, "An ActivityLaunchAnimator.Controller was created from a View that does not implement LaunchableView. This can lead to subtle bugs where the visibility of the View we are launching from is not what we expected."

    .line 248
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 250
    throw p0

    .line 253
    :cond_b
    :goto_7
    const/4 v2, 0x0

    .line 254
    :goto_8
    new-instance p1, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;

    .line 255
    invoke-direct {p1, p0, v0, v2}, Lcom/android/systemui/qs/tiles/DeviceControlsTile$handleClick$1;-><init>(Lcom/android/systemui/qs/tiles/DeviceControlsTile;Landroid/content/Intent;Lcom/android/systemui/animation/GhostedViewLaunchAnimatorController;)V

    .line 257
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 260
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 262
    return-void
    .line 265
.end method

.method public final handleLongClick(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 2
    move-result-object p2

    .line 5
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 6
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 8
    iget-object p2, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 10
    iget-object v0, p2, Lcom/android/systemui/controls/dagger/ControlsComponent;->controlsTileResourceConfiguration:Lcom/android/systemui/controls/controller/ControlsTileResourceConfigurationImpl;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    const v0, 0x7f080c04    # @drawable/controls_icon 'res/drawable/controls_icon.xml'

    .line 17
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 20
    move-result-object v0

    .line 23
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 24
    iget-boolean v0, p2, Lcom/android/systemui/controls/dagger/ControlsComponent;->featureEnabled:Z

    .line 26
    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->hasControlsApps:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 30
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    .line 32
    move-result v0

    .line 35
    if-eqz v0, :cond_3

    .line 36
    invoke-virtual {p2}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getVisibility()Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 38
    move-result-object v0

    .line 41
    sget-object v1, Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;->AVAILABLE:Lcom/android/systemui/controls/dagger/ControlsComponent$Visibility;

    .line 42
    const/4 v2, 0x1

    .line 44
    if-ne v0, v1, :cond_2

    .line 45
    invoke-virtual {p2}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p2}, Ljava/util/Optional;->get()Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 54
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsController;

    .line 55
    check-cast p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 57
    invoke-virtual {p2}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->getFavorites()Ljava/util/List;

    .line 59
    move-result-object v0

    .line 62
    iget-object p2, p2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->uiController:Lcom/android/systemui/controls/ui/ControlsUiController;

    .line 63
    check-cast p2, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;

    .line 65
    invoke-virtual {p2, v0}, Lcom/android/systemui/controls/ui/ControlsUiControllerImpl;->getPreferredSelectedItem(Ljava/util/List;)Lcom/android/systemui/controls/ui/SelectedItem;

    .line 67
    move-result-object p2

    .line 70
    instance-of v0, p2, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 71
    if-eqz v0, :cond_0

    .line 73
    move-object v0, p2

    .line 75
    check-cast v0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;

    .line 76
    iget-object v0, v0, Lcom/android/systemui/controls/ui/SelectedItem$StructureItem;->structure:Lcom/android/systemui/controls/controller/StructureInfo;

    .line 78
    iget-object v0, v0, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 80
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 82
    move-result v0

    .line 85
    if-eqz v0, :cond_0

    .line 86
    goto :goto_0

    .line 88
    :cond_0
    const/4 v2, 0x2

    .line 89
    :goto_0
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 90
    invoke-virtual {p2}, Lcom/android/systemui/controls/ui/SelectedItem;->getName()Ljava/lang/CharSequence;

    .line 92
    move-result-object p2

    .line 95
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->getTileLabel()Ljava/lang/CharSequence;

    .line 96
    move-result-object p0

    .line 99
    invoke-static {p2, p0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 100
    move-result p0

    .line 103
    if-eqz p0, :cond_1

    .line 104
    const/4 p2, 0x0

    .line 106
    :cond_1
    iput-object p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 107
    goto :goto_1

    .line 109
    :cond_2
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 110
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 112
    const p2, 0x7f130333    # @string/controls_tile_locked 'Device locked'

    .line 114
    invoke-virtual {p0, p2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    .line 117
    move-result-object p0

    .line 120
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 121
    :goto_1
    iget-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->secondaryLabel:Ljava/lang/CharSequence;

    .line 123
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->stateDescription:Ljava/lang/CharSequence;

    .line 125
    goto :goto_2

    .line 127
    :cond_3
    const/4 p0, 0x0

    .line 128
    iput p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 129
    :goto_2
    return-void
    .line 131
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/DeviceControlsTile;->controlsComponent:Lcom/android/systemui/controls/dagger/ControlsComponent;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/controls/dagger/ControlsComponent;->getControlsController()Ljava/util/Optional;

    .line 4
    move-result-object p0

    .line 7
    invoke-virtual {p0}, Ljava/util/Optional;->isPresent()Z

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 1

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$State;-><init>()V

    .line 4
    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 10
    return-object p0
    .line 12
.end method
