.class public final Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;
.super Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/QSDetailContent$Callback;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final SIM_SLOT_DISABLED_ICON:[I

.field public final SIM_SLOT_ICON:[I

.field public mDefaultDataSlot:I

.field public mItems:Lcom/android/systemui/qs/QSDetailContent;

.field public final synthetic this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/tiles/MiuiCellularTile;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    invoke-direct {p0, p2}, Lcom/android/systemui/qs/tileimpl/QSDetailAdapter;-><init>(Landroid/content/Context;)V

    .line 4
    const p1, 0x7f081172    # @drawable/ic_qs_sim_card1_switch 'res/drawable/ic_qs_sim_card1_switch.xml'

    .line 7
    const p2, 0x7f081176    # @drawable/ic_qs_sim_card2_switch 'res/drawable/ic_qs_sim_card2_switch.xml'

    .line 10
    filled-new-array {p1, p2}, [I

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->SIM_SLOT_ICON:[I

    .line 17
    const p1, 0x7f081171    # @drawable/ic_qs_sim_card1_disable 'res/drawable/ic_qs_sim_card1_disable.xml'

    .line 19
    const p2, 0x7f081175    # @drawable/ic_qs_sim_card2_disable 'res/drawable/ic_qs_sim_card2_disable.xml'

    .line 22
    filled-new-array {p1, p2}, [I

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->SIM_SLOT_DISABLED_ICON:[I

    .line 29
    return-void
    .line 31
.end method


# virtual methods
.method public final createDetailView(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/qs/QSDetailContent;->Companion:Lcom/android/systemui/qs/QSDetailContent$Companion;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1, p2, p3}, Lcom/android/systemui/qs/QSDetailContent$Companion;->convertOrInflate(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;)Lcom/android/systemui/qs/QSDetailContent;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 11
    const-string p2, "Cellular"

    .line 13
    invoke-virtual {p1, p2}, Lcom/android/systemui/qs/QSDetailContent;->setSuffix(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 18
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/QSDetailContent;->setCallback(Lcom/android/systemui/qs/QSDetailContent$Callback;)V

    .line 20
    iget-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 23
    iget-boolean p1, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mShowingDetail:Z

    .line 25
    if-eqz p1, :cond_0

    .line 27
    invoke-virtual {p0}, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->updateItems()V

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 32
    return-object p0
    .line 34
.end method

.method public final getContainerHeight()I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    move-result-object p0

    .line 13
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 14
    const/4 v0, 0x1

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    const/4 p0, -0x2

    .line 19
    return p0

    .line 20
    :cond_0
    const/4 p0, -0x1

    .line 21
    return p0
    .line 22
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x75

    .line 2
    return p0
    .line 4
.end method

.method public final getSettingsIntent()Landroid/content/Intent;
    .locals 0

    .line 1
    invoke-static {}, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->longClickDataIntent()Landroid/content/Intent;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public final getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const v0, 0x7f130980    # @string/quick_settings_cellular_detail_title 'Mobile data'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final getToggleEnabled()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getToggleState()Ljava/lang/Boolean;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 4
    check-cast p0, Lcom/android/systemui/plugins/qs/QSTile$TrafficState;

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 8
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final hasHeader()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onDetailItemClick(Lcom/android/systemui/qs/QSDetailContent$Item;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-interface {p1}, Lcom/android/systemui/qs/QSDetailContent$Item;->getType()I

    .line 7
    move-result v0

    .line 10
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 11
    const/16 v2, 0xe9

    .line 13
    if-eq v0, v2, :cond_2

    .line 15
    const/16 p0, 0x91d

    .line 17
    if-eq v0, p0, :cond_1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    iget-object p0, v1, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 22
    check-cast p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 24
    iget-boolean p1, p1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;->isChecked:Z

    .line 26
    check-cast p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 28
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string/jumbo v1, "setIntelligentDualSim "

    .line 35
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object v0

    .line 47
    const-string v1, "NetworkController"

    .line 48
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    iget-object p0, p0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 55
    move-result-object p0

    .line 58
    const-string v0, "dual_mobile_data"

    .line 59
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 61
    const-string/jumbo v0, "smart_dual_sim"

    .line 64
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    sget-object v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->VICE_SLOT_VOLTE_DATA_ENABLED:Ljava/lang/String;

    .line 70
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    goto :goto_0

    .line 75
    :cond_2
    const-class v0, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 76
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Lcom/android/systemui/util/CallStateControllerImpl;

    .line 82
    iget v2, v0, Lcom/android/systemui/util/CallStateControllerImpl;->slot1CallState:I

    .line 84
    iget v0, v0, Lcom/android/systemui/util/CallStateControllerImpl;->slot2CallState:I

    .line 86
    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    .line 88
    move-result v0

    .line 91
    if-eqz v0, :cond_3

    .line 92
    iget-object p0, v1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 94
    const p1, 0x7f130981    # @string/quick_settings_cellular_detail_unable_change 'Can't set during call'

    .line 96
    const/4 v0, 0x0

    .line 99
    invoke-static {p0, p1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 100
    move-result-object p0

    .line 103
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 104
    goto :goto_0

    .line 107
    :cond_3
    invoke-interface {p1}, Lcom/android/systemui/qs/QSDetailContent$Item;->getTag()Ljava/lang/Object;

    .line 108
    move-result-object v0

    .line 111
    if-eqz v0, :cond_4

    .line 112
    invoke-interface {p1}, Lcom/android/systemui/qs/QSDetailContent$Item;->getTag()Ljava/lang/Object;

    .line 114
    move-result-object p1

    .line 117
    check-cast p1, Ljava/lang/Integer;

    .line 118
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 120
    move-result p1

    .line 123
    iget p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mDefaultDataSlot:I

    .line 124
    if-eq p0, p1, :cond_4

    .line 126
    invoke-static {}, Lmiui/telephony/SubscriptionManager;->getDefault()Lmiui/telephony/SubscriptionManager;

    .line 128
    move-result-object p0

    .line 131
    invoke-virtual {p0, p1}, Lmiui/telephony/SubscriptionManager;->setDefaultDataSlotId(I)V

    .line 132
    :cond_4
    :goto_0
    return-void
    .line 135
.end method

.method public final onDetailItemDisconnect(Lcom/android/systemui/qs/QSDetailContent$SelectableItem;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setToggleState(Z)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 4
    const/16 v1, 0x9b

    .line 6
    invoke-static {v0, v1, p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 8
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataController:Lcom/android/settingslib/net/DataUsageController;

    .line 11
    invoke-virtual {v0, p1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 13
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mUiHandler:Landroid/os/Handler;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDelayedRefreshState:Lcom/android/systemui/qs/tiles/MiuiCellularTile$$ExternalSyntheticLambda0;

    .line 18
    invoke-virtual {p1, p0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 20
    const/16 v0, 0x32

    .line 23
    int-to-long v0, v0

    .line 25
    invoke-virtual {p1, p0, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    return-void
    .line 29
.end method

.method public final updateItems()V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->this$0:Lcom/android/systemui/qs/tiles/MiuiCellularTile;

    .line 7
    iget-object v1, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 9
    const/4 v2, 0x0

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 14
    move-result v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v1, v2

    .line 19
    :goto_0
    if-lez v1, :cond_16

    .line 20
    new-instance v3, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 24
    move v4, v2

    .line 27
    :goto_1
    const/4 v5, 0x1

    .line 28
    iget-object v6, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 29
    if-ge v4, v1, :cond_13

    .line 31
    iget-object v7, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mSimInfoRecordList:Ljava/util/List;

    .line 33
    invoke-interface {v7, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 35
    move-result-object v7

    .line 38
    check-cast v7, Landroid/telephony/SubscriptionInfo;

    .line 39
    if-nez v7, :cond_2

    .line 41
    goto/16 :goto_a

    .line 43
    :cond_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 45
    move-result v8

    .line 48
    sget-boolean v9, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->DEBUG:Z

    .line 49
    if-eqz v9, :cond_3

    .line 51
    const-string v9, "generateItem "

    .line 53
    const-string v10, " "

    .line 55
    invoke-static {v9, v8, v10, v4}, Landroidx/sqlite/db/SupportSQLiteOpenHelper$Callback$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;I)Ljava/lang/String;

    .line 57
    move-result-object v9

    .line 60
    iget-object v10, v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 61
    invoke-static {v10, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    new-instance v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;

    .line 66
    invoke-direct {v9}, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;-><init>()V

    .line 68
    iput-boolean v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selectable:Z

    .line 71
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->areUiccApplicationsEnabled()Z

    .line 73
    move-result v10

    .line 76
    iget-object v11, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->SIM_SLOT_ICON:[I

    .line 77
    if-eqz v10, :cond_8

    .line 79
    if-ne v8, v5, :cond_4

    .line 81
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->isEmbedded()Z

    .line 83
    move-result v10

    .line 86
    if-eqz v10, :cond_4

    .line 87
    const v10, 0x7f080ff4    # @drawable/ic_esim_card 'res/drawable/ic_esim_card.xml'

    .line 89
    iput v10, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 92
    goto :goto_2

    .line 94
    :cond_4
    array-length v10, v11

    .line 95
    if-ge v8, v10, :cond_5

    .line 96
    aget v10, v11, v8

    .line 98
    iput v10, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 100
    :cond_5
    :goto_2
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    .line 102
    move-result v10

    .line 105
    invoke-static {v6}, Landroid/provider/MiuiSettings$VirtualSim;->isVirtualSimEnabled(Landroid/content/Context;)Z

    .line 106
    move-result v11

    .line 109
    if-eqz v11, :cond_6

    .line 110
    invoke-static {v6}, Landroid/provider/MiuiSettings$VirtualSim;->getVirtualSimSlotId(Landroid/content/Context;)I

    .line 112
    move-result v11

    .line 115
    if-ne v10, v11, :cond_6

    .line 116
    move v10, v5

    .line 118
    goto :goto_3

    .line 119
    :cond_6
    move v10, v2

    .line 120
    :goto_3
    if-eqz v10, :cond_7

    .line 121
    invoke-static {v6}, Lcom/miui/utils/VirtualSimUtils;->getVirtualSimCarrierName(Landroid/content/Context;)Ljava/lang/String;

    .line 123
    move-result-object v10

    .line 126
    goto :goto_4

    .line 127
    :cond_7
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 128
    move-result-object v10

    .line 131
    :goto_4
    iput-object v10, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 132
    iput-boolean v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 134
    goto :goto_5

    .line 136
    :cond_8
    array-length v10, v11

    .line 137
    if-ge v8, v10, :cond_9

    .line 138
    iget-object v10, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->SIM_SLOT_DISABLED_ICON:[I

    .line 140
    aget v10, v10, v8

    .line 142
    iput v10, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->iconRes:I

    .line 144
    :cond_9
    new-instance v10, Ljava/lang/StringBuilder;

    .line 146
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    .line 148
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    .line 151
    move-result-object v11

    .line 154
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 158
    move-result-object v11

    .line 161
    const v12, 0x7f1309f6    # @string/quick_settings_sim_disabled ' (Disabled)'

    .line 162
    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 165
    move-result-object v11

    .line 168
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 172
    move-result-object v10

    .line 175
    iput-object v10, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->title:Ljava/lang/CharSequence;

    .line 176
    iput-boolean v2, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 178
    :goto_5
    iget v10, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mDefaultDataSlot:I

    .line 180
    if-ne v10, v8, :cond_a

    .line 182
    goto :goto_6

    .line 184
    :cond_a
    move v5, v2

    .line 185
    :goto_6
    iput-boolean v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->selected:Z

    .line 186
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mCentralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 188
    check-cast v5, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 190
    invoke-virtual {v5}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->isKeyguardShowing()Z

    .line 192
    move-result v5

    .line 195
    if-eqz v5, :cond_b

    .line 196
    const-string v5, "****"

    .line 198
    iput-object v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 200
    goto :goto_7

    .line 202
    :cond_b
    invoke-virtual {v7}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    .line 203
    move-result-object v5

    .line 206
    iput-object v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->summary:Ljava/lang/CharSequence;

    .line 207
    :goto_7
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfoController:Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;

    .line 209
    iget-boolean v5, v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->listening:Z

    .line 211
    const/4 v7, 0x0

    .line 213
    if-eqz v5, :cond_12

    .line 214
    sget-object v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController;->URI:Landroid/net/Uri;

    .line 216
    iget-object v5, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mDataUsageInfo:Ljava/util/Map;

    .line 218
    invoke-static {v8, v5, v6}, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$Companion;->getTrafficMessage(ILjava/util/Map;Landroid/content/Context;)Ljava/lang/String;

    .line 220
    move-result-object v10

    .line 223
    if-nez v5, :cond_c

    .line 224
    goto :goto_8

    .line 226
    :cond_c
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 227
    move-result-object v11

    .line 230
    invoke-interface {v5, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-result-object v5

    .line 234
    check-cast v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;

    .line 235
    if-nez v5, :cond_d

    .line 237
    goto :goto_8

    .line 239
    :cond_d
    iget v11, v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billType:I

    .line 240
    if-eqz v11, :cond_e

    .line 242
    goto :goto_8

    .line 244
    :cond_e
    iget-object v5, v5, Lcom/android/systemui/controlcenter/policy/DataUsageInfoController$DataUsage;->billValue:Ljava/lang/String;

    .line 245
    if-nez v5, :cond_f

    .line 247
    goto :goto_8

    .line 249
    :cond_f
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 250
    move-result-object v7

    .line 253
    const v11, 0x7f130934    # @string/qs_bill_message_unit_cny 'CNY'

    .line 254
    invoke-virtual {v6, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 257
    move-result-object v6

    .line 260
    filled-new-array {v5, v6}, [Ljava/lang/Object;

    .line 261
    move-result-object v5

    .line 264
    const v6, 0x7f130933    # @string/qs_bill_message_balance '%1$s %2$s remaining'

    .line 265
    invoke-virtual {v7, v6, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 268
    move-result-object v7

    .line 271
    :goto_8
    if-nez v10, :cond_10

    .line 272
    goto :goto_9

    .line 274
    :cond_10
    if-nez v7, :cond_11

    .line 275
    move-object v7, v10

    .line 277
    goto :goto_9

    .line 278
    :cond_11
    const-string v5, " | "

    .line 279
    invoke-static {v10, v5, v7}, Landroidx/concurrent/futures/AbstractResolvableFuture$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 281
    move-result-object v7

    .line 284
    :cond_12
    :goto_9
    iput-object v7, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->secondarySummary:Ljava/lang/CharSequence;

    .line 285
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 287
    move-result-object v5

    .line 290
    iput-object v5, v9, Lcom/android/systemui/qs/QSDetailContent$SelectableItem;->tag:Ljava/lang/Object;

    .line 291
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 293
    :goto_a
    add-int/lit8 v4, v4, 0x1

    .line 296
    goto/16 :goto_1

    .line 298
    :cond_13
    iget-object v0, v0, Lcom/android/systemui/qs/tiles/MiuiCellularTile;->mController:Lcom/android/systemui/statusbar/connectivity/NetworkController;

    .line 300
    move-object v4, v0

    .line 302
    check-cast v4, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 303
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 305
    sget-boolean v4, Lcom/android/systemui/util/PhoneUtils;->MIUI_LPA:Z

    .line 308
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    .line 310
    move-result-object v4

    .line 313
    invoke-virtual {v4}, Lmiui/telephony/TelephonyManagerEx;->shouldHideIntelligentDualSimButton()Z

    .line 314
    move-result v4

    .line 317
    xor-int/2addr v4, v5

    .line 318
    if-eqz v4, :cond_15

    .line 319
    if-le v1, v5, :cond_15

    .line 321
    new-instance v1, Lcom/android/systemui/qs/QSDetailContent$DividerItem;

    .line 323
    invoke-direct {v1}, Lcom/android/systemui/qs/QSDetailContent$DividerItem;-><init>()V

    .line 325
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    new-instance v1, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;

    .line 331
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 333
    move-result-object v4

    .line 336
    const v7, 0x7f1309bd    # @string/quick_settings_intelligent_dual_sim_accelerate_title 'Smart dual SIM'

    .line 337
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 340
    move-result-object v4

    .line 343
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 344
    move-result-object v6

    .line 347
    const v7, 0x7f1309bc    # @string/quick_settings_intelligent_dual_sim_accelerate_summary 'Use mobile data of the secondary SIM to boost connection speed'

    .line 348
    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 351
    move-result-object v6

    .line 354
    check-cast v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;

    .line 355
    iget-object v0, v0, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->mContext:Landroid/content/Context;

    .line 357
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 359
    move-result-object v0

    .line 362
    const-string v7, "dual_mobile_data"

    .line 363
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 365
    move-result v7

    .line 368
    if-ne v7, v5, :cond_14

    .line 369
    const-string/jumbo v7, "smart_dual_sim"

    .line 371
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 374
    move-result v7

    .line 377
    if-ne v7, v5, :cond_14

    .line 378
    sget-object v7, Lcom/android/systemui/statusbar/connectivity/NetworkControllerImpl;->VICE_SLOT_VOLTE_DATA_ENABLED:Ljava/lang/String;

    .line 380
    invoke-static {v0, v7, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 382
    move-result v0

    .line 385
    if-ne v0, v5, :cond_14

    .line 386
    goto :goto_b

    .line 388
    :cond_14
    move v5, v2

    .line 389
    :goto_b
    invoke-direct {v1, v4, v6, v5}, Lcom/android/systemui/qs/QSDetailContent$ToggleItem;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)V

    .line 390
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    :cond_15
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 396
    new-array v0, v2, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 398
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 400
    move-result-object v0

    .line 403
    check-cast v0, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 404
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 406
    goto :goto_c

    .line 409
    :cond_16
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiCellularTile$CellularDetailAdapter;->mItems:Lcom/android/systemui/qs/QSDetailContent;

    .line 410
    new-array v0, v2, [Lcom/android/systemui/qs/QSDetailContent$Item;

    .line 412
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QSDetailContent;->setItems([Lcom/android/systemui/qs/QSDetailContent$Item;)V

    .line 414
    :goto_c
    return-void
    .line 417
.end method
