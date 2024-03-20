.class public final Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;
.super Lcom/android/systemui/qs/tileimpl/QSTileImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BLUETOOTH_SETTINGS:Landroid/content/Intent;


# instance fields
.field public final btHandler:Landroid/os/Handler;

.field public final callback:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;

.field public clickedToast:Landroid/widget/Toast;

.field public final controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

.field public final detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    const-string v1, "android.settings.BLUETOOTH_SETTINGS"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->BLUETOOTH_SETTINGS:Landroid/content/Intent;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;Lcom/android/systemui/statusbar/policy/BluetoothController;Landroid/os/Handler;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p9}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;-><init>(Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/qs/QsEventLogger;Landroid/os/Looper;Landroid/os/Handler;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/internal/logging/MetricsLogger;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/plugins/ActivityStarter;Lcom/android/systemui/qs/logging/QSLogger;)V

    .line 2
    iput-object p10, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 5
    iput-object p11, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->btHandler:Landroid/os/Handler;

    .line 7
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 9
    iget-object p2, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;-><init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;Landroid/content/Context;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 16
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;

    .line 18
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V

    .line 20
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->callback:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$callback$1;

    .line 23
    new-instance p1, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$1;

    .line 25
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$1;-><init>(Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V

    .line 27
    invoke-virtual {p4, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 30
    return-void
    .line 33
.end method

.method public static final handleShowStateMessage$showNormalMessage(Lcom/android/systemui/plugins/qs/QSTile$RestrictState;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V
    .locals 1

    .line 1
    iget p0, p0, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 2
    const/4 v0, 0x1

    .line 4
    if-eq p0, v0, :cond_1

    .line 5
    const/4 v0, 0x2

    .line 7
    if-eq p0, v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object p0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 11
    const v0, 0x7f130967    # @string/quick_settings_bt_state_change_message_on 'Bluetooth is on'

    .line 13
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 16
    move-result-object p0

    .line 19
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_1
    iget-object p0, p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 24
    const v0, 0x7f130966    # @string/quick_settings_bt_state_change_message_off 'Bluetooth is off'

    .line 26
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p1, p0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 33
    :goto_0
    return-void
    .line 36
.end method


# virtual methods
.method public final getDetailAdapter()Lcom/android/systemui/plugins/qs/DetailAdapter;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getLongClickIntent()Landroid/content/Intent;
    .locals 1

    .line 1
    new-instance p0, Landroid/content/Intent;

    .line 2
    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    .line 4
    invoke-direct {p0, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 6
    return-object p0
    .line 9
.end method

.method public final getMetricsCategory()I
    .locals 0

    .line 1
    const/16 p0, 0x71

    .line 2
    return p0
    .line 4
.end method

.method public final getTileLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 2
    const v0, 0x7f13095e    # @string/quick_settings_bluetooth_label 'Bluetooth'

    .line 4
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    return-object p0
    .line 11
.end method

.method public final handleClick(Landroid/view/View;)V
    .locals 14

    .line 1
    invoke-static {}, Lmiui/enterprise/RestrictionsHelperStub;->getInstance()Lmiui/enterprise/IRestrictionsHelper;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1}, Lmiui/enterprise/IRestrictionsHelper;->isBluetoothRestriction()Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    return-void

    .line 12
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 13
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 15
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 22
    iget v1, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 24
    const/4 v2, 0x1

    .line 26
    const/16 v3, 0xa

    .line 27
    const/4 v4, 0x0

    .line 29
    const/16 v5, 0xc

    .line 30
    if-eq v1, v5, :cond_3

    .line 32
    if-eq v1, v3, :cond_3

    .line 34
    const/16 v6, 0xf

    .line 36
    if-ne v1, v6, :cond_2

    .line 38
    goto :goto_0

    .line 40
    :cond_2
    move v1, v4

    .line 41
    goto :goto_1

    .line 42
    :cond_3
    :goto_0
    move v1, v2

    .line 43
    :goto_1
    iget-object v6, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 44
    if-nez v1, :cond_4

    .line 46
    const-string p0, "handleClick() Bluetooth not ready!"

    .line 48
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    return-void

    .line 53
    :cond_4
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 54
    if-eqz v1, :cond_5

    .line 56
    const-string p0, "handleClick() Bluetooth is in transient state!"

    .line 58
    invoke-static {v6, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    return-void

    .line 63
    :cond_5
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 64
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    iget-object v7, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 71
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 73
    move-result v8

    .line 76
    invoke-virtual {v0, v7}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 77
    move-result v9

    .line 80
    iget v10, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 81
    const-string v11, "handleClick() isEnabled: "

    .line 83
    const-string v12, ", supportRestrict: "

    .line 85
    const-string v13, ", isRestricted: "

    .line 87
    invoke-static {v11, v1, v12, v8, v13}, Lcom/android/keyguard/MiuiLockPatternChecker$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    move-result-object v11

    .line 92
    invoke-virtual {v11, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string v12, ", restrictState: "

    .line 96
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    move-result-object v9

    .line 107
    invoke-static {v6, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    if-eqz v8, :cond_10

    .line 111
    if-ne v10, v5, :cond_10

    .line 113
    xor-int/lit8 v6, p1, 0x1

    .line 115
    iget v8, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 117
    const-string v9, "BluetoothController"

    .line 119
    if-ne v8, v5, :cond_d

    .line 121
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 123
    if-eqz v0, :cond_c

    .line 125
    iget-object v0, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 127
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 129
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 132
    move-result v8

    .line 135
    const-string v10, "LocalBluetoothAdapter"

    .line 136
    if-eqz v8, :cond_b

    .line 138
    if-nez v7, :cond_6

    .line 140
    goto/16 :goto_2

    .line 142
    :cond_6
    iget-object v8, v0, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->mAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 144
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 146
    move-result v11

    .line 149
    const-string v12, "enableBluetoothRestrict = "

    .line 150
    if-eq v11, v5, :cond_7

    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    .line 154
    invoke-direct {v0, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 156
    invoke-virtual {v8}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    .line 159
    move-result v2

    .line 162
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    goto :goto_3

    .line 173
    :cond_7
    invoke-static {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 174
    move-result v8

    .line 177
    new-instance v11, Ljava/lang/StringBuilder;

    .line 178
    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 180
    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 183
    const-string v12, "  restrictState = "

    .line 186
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 194
    move-result-object v11

    .line 197
    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    const-string v11, "bluetooth_restricte_state   "

    .line 201
    if-eqz v6, :cond_9

    .line 203
    if-nez v8, :cond_8

    .line 205
    const-string v8, "bluetooth_restricte_state  = 1"

    .line 207
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-virtual {v0, v5, v3, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sendRestrictStateChanged(IILandroid/content/Context;)V

    .line 212
    goto :goto_4

    .line 215
    :cond_8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 216
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 218
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 221
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 224
    move-result-object v0

    .line 227
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    goto :goto_3

    .line 231
    :cond_9
    if-eqz v8, :cond_a

    .line 232
    const-string v8, "bluetooth_restricte_state  = 0"

    .line 234
    invoke-static {v10, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    invoke-virtual {v0, v3, v5, v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->sendRestrictStateChanged(IILandroid/content/Context;)V

    .line 239
    invoke-virtual {v0, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setBluetoothStateInt(I)V

    .line 242
    goto :goto_4

    .line 245
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    .line 246
    invoke-direct {v0, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 248
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 251
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 254
    move-result-object v0

    .line 257
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    goto :goto_3

    .line 261
    :cond_b
    :goto_2
    const-string v0, "isSupportBluetoothRestrict = false "

    .line 262
    invoke-static {v10, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :goto_3
    move v2, v4

    .line 267
    :goto_4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 268
    const-string v3, "enableBluetoothRestrict("

    .line 270
    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 272
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 275
    const-string v3, "), result: "

    .line 278
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 280
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 286
    move-result-object v0

    .line 289
    invoke-static {v9, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    goto :goto_5

    .line 293
    :cond_c
    const-string v0, "enableBluetoothRestrict() mLocalBluetoothManager is null"

    .line 294
    invoke-static {v9, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    goto :goto_5

    .line 299
    :cond_d
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    const-string v3, "enableBluetoothRestrict() bluetoothState: "

    .line 302
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 307
    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->connectionStateToString(I)Ljava/lang/String;

    .line 309
    move-result-object v0

    .line 312
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 313
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 316
    move-result-object v0

    .line 319
    invoke-static {v9, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :goto_5
    sget-boolean v0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mInControlCenter:Z

    .line 323
    if-nez v0, :cond_11

    .line 325
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->clickedToast:Landroid/widget/Toast;

    .line 327
    if-eqz v0, :cond_e

    .line 329
    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 331
    :cond_e
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 334
    move-result-object v0

    .line 337
    if-eqz p1, :cond_f

    .line 338
    const p1, 0x7f13095b    # @string/quick_settings_bluetooth_connected_tip 'Connected via Bluetooth successfully'

    .line 340
    goto :goto_6

    .line 343
    :cond_f
    const p1, 0x7f13095d    # @string/quick_settings_bluetooth_disconnected_tip 'All Bluetooth devices will stay disconnected today'

    .line 344
    :goto_6
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 347
    move-result-object p1

    .line 350
    invoke-static {v7, p1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    .line 351
    move-result-object p1

    .line 354
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 355
    iput-object p1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->clickedToast:Landroid/widget/Toast;

    .line 358
    goto :goto_7

    .line 360
    :cond_10
    xor-int/lit8 p1, v1, 0x1

    .line 361
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 363
    invoke-virtual {v0, p1}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->setBluetoothEnabled(Z)V

    .line 365
    :cond_11
    :goto_7
    if-eqz v1, :cond_12

    .line 368
    const/4 p1, 0x0

    .line 370
    goto :goto_8

    .line 371
    :cond_12
    sget-object p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 372
    :goto_8
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 374
    return-void
.end method

.method public final handleSecondaryClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 4
    if-nez p1, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 9
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 11
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->canConfigBluetooth()Z

    .line 13
    move-result v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->TAG:Ljava/lang/String;

    .line 17
    if-nez v0, :cond_1

    .line 19
    new-instance p1, Landroid/content/Intent;

    .line 21
    const-string v0, "android.settings.BLUETOOTH_SETTINGS"

    .line 23
    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 25
    const/4 v0, 0x0

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 29
    invoke-interface {p0, p1, v0}, Lcom/android/systemui/plugins/ActivityStarter;->postStartActivityDismissingKeyguard(Landroid/content/Intent;I)V

    .line 31
    const-string p0, "handleSecondaryClick() can not config bluetooth"

    .line 34
    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void

    .line 39
    :cond_1
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 42
    const-string v2, "handleSecondaryClick() isEnabled: "

    .line 44
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v0

    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/4 v0, 0x1

    .line 59
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showDetail(Z)V

    .line 60
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->detailAdapter:Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;

    .line 63
    if-nez p1, :cond_2

    .line 65
    invoke-virtual {v1, v0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->setBluetoothEnabled(Z)V

    .line 67
    sget-object p1, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 70
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 72
    :cond_2
    invoke-virtual {v1}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile$BluetoothDetailAdapter;->updateItems()V

    .line 75
    return-void
    .line 78
.end method

.method public final handleShowStateMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mState:Lcom/android/systemui/plugins/qs/QSTile$State;

    .line 2
    check-cast v0, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 4
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 9
    check-cast v1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_3

    .line 22
    iget-boolean v2, v0, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 24
    if-eqz v2, :cond_2

    .line 26
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v1

    .line 31
    iget-boolean v0, v0, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 32
    if-eqz v0, :cond_1

    .line 34
    const v0, 0x7f13095d    # @string/quick_settings_bluetooth_disconnected_tip 'All Bluetooth devices will stay disconnected today'

    .line 36
    goto :goto_0

    .line 39
    :cond_1
    const v0, 0x7f13095b    # @string/quick_settings_bluetooth_connected_tip 'Connected via Bluetooth successfully'

    .line 40
    :goto_0
    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->showStateMessage(Ljava/lang/CharSequence;)V

    .line 47
    goto :goto_1

    .line 50
    :cond_2
    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->handleShowStateMessage$showNormalMessage(Lcom/android/systemui/plugins/qs/QSTile$RestrictState;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V

    .line 51
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {v0, p0}, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->handleShowStateMessage$showNormalMessage(Lcom/android/systemui/plugins/qs/QSTile$RestrictState;Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;)V

    .line 55
    :goto_1
    return-void
    .line 58
.end method

.method public final handleUpdateState(Lcom/android/systemui/plugins/qs/QSTile$State;Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 2
    if-nez p1, :cond_0

    .line 4
    goto/16 :goto_b

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 8
    check-cast v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 10
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->mContext:Landroid/content/Context;

    .line 15
    invoke-static {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isSupportBluetoothRestrict(Landroid/content/Context;)Z

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->getBluetoothRestrictState(Landroid/content/Context;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v1, v2

    .line 33
    :goto_0
    sget-object v4, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->ARG_SHOW_TRANSIENT_ENABLING:Ljava/lang/Object;

    .line 34
    if-ne p2, v4, :cond_2

    .line 36
    move p2, v3

    .line 38
    goto :goto_1

    .line 39
    :cond_2
    move p2, v2

    .line 40
    :goto_1
    if-nez p2, :cond_4

    .line 41
    iget-boolean v4, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mEnabled:Z

    .line 43
    if-eqz v4, :cond_3

    .line 45
    goto :goto_2

    .line 47
    :cond_3
    move v4, v2

    .line 48
    goto :goto_3

    .line 49
    :cond_4
    :goto_2
    move v4, v3

    .line 50
    :goto_3
    iget v5, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 51
    const/4 v6, 0x2

    .line 53
    if-ne v5, v6, :cond_5

    .line 54
    move v5, v3

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    move v5, v2

    .line 58
    :goto_4
    if-nez p2, :cond_7

    .line 59
    iget p2, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mState:I

    .line 61
    const/16 v7, 0xb

    .line 63
    if-ne p2, v7, :cond_6

    .line 65
    goto :goto_5

    .line 67
    :cond_6
    move p2, v2

    .line 68
    goto :goto_6

    .line 69
    :cond_7
    :goto_5
    move p2, v3

    .line 70
    :goto_6
    iput-boolean p2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 71
    iput-boolean v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualTarget:Z

    .line 73
    iput-boolean v4, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 75
    iput-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 77
    const p2, 0x7f13095e    # @string/quick_settings_bluetooth_label 'Bluetooth'

    .line 79
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 82
    move-result-object v1

    .line 85
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 86
    const v7, 0x7f130b53    # @string/switch_bar_off 'Off'

    .line 88
    const-string v8, ","

    .line 91
    if-eqz v4, :cond_e

    .line 93
    if-eqz v5, :cond_b

    .line 95
    const v4, 0x7f13004f    # @string/accessibility_bluetooth_name 'Connected to %s.'

    .line 97
    filled-new-array {v1}, [Ljava/lang/Object;

    .line 100
    move-result-object v1

    .line 103
    invoke-virtual {p0, v4, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    move-result-object v1

    .line 107
    iput-object v1, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 108
    iget-object v1, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectedDevices:Ljava/util/List;

    .line 110
    check-cast v1, Ljava/util/ArrayList;

    .line 112
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 114
    move-result v4

    .line 117
    if-eqz v4, :cond_8

    .line 118
    goto :goto_7

    .line 120
    :cond_8
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLastActiveDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 121
    if-eqz v0, :cond_9

    .line 123
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 125
    move-result-object v0

    .line 128
    goto :goto_8

    .line 129
    :cond_9
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object v0

    .line 133
    check-cast v0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 134
    if-nez v0, :cond_a

    .line 136
    :goto_7
    const-string v0, ""

    .line 138
    goto :goto_8

    .line 140
    :cond_a
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 144
    :goto_8
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 145
    goto :goto_9

    .line 147
    :cond_b
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->isTransient:Z

    .line 148
    if-eqz v0, :cond_c

    .line 150
    const v0, 0x7f1300d3    # @string/accessibility_quick_settings_bluetooth 'Bluetooth.'

    .line 152
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 155
    move-result-object v0

    .line 158
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 159
    goto :goto_9

    .line 161
    :cond_c
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 162
    if-eqz v0, :cond_d

    .line 164
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    const v4, 0x7f1300b8    # @string/accessibility_not_connected 'Not connected.'

    .line 170
    invoke-virtual {p0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 173
    move-result-object v4

    .line 176
    new-instance v5, Ljava/lang/StringBuilder;

    .line 177
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 179
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 182
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 197
    move-result-object v0

    .line 200
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 201
    goto :goto_9

    .line 203
    :cond_d
    const v0, 0x7f130b54    # @string/switch_bar_on 'On'

    .line 204
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 207
    move-result-object v0

    .line 210
    new-instance v4, Ljava/lang/StringBuilder;

    .line 211
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 213
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 216
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 219
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 225
    move-result-object v0

    .line 228
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 229
    goto :goto_9

    .line 231
    :cond_e
    invoke-virtual {p0, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 232
    move-result-object v0

    .line 235
    new-instance v4, Ljava/lang/StringBuilder;

    .line 236
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 238
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 244
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 247
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 250
    move-result-object v0

    .line 253
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 254
    :goto_9
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;->value:Z

    .line 256
    if-eqz v0, :cond_f

    .line 258
    iget-boolean v1, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 260
    if-nez v1, :cond_f

    .line 262
    move v3, v6

    .line 264
    :cond_f
    iput v3, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->state:I

    .line 265
    if-eqz v0, :cond_10

    .line 267
    iget-boolean v0, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 269
    if-nez v0, :cond_10

    .line 271
    const v0, 0x7f08113a    # @drawable/ic_qs_bluetooth_on 'res/drawable/ic_qs_bluetooth_on.xml'

    .line 273
    goto :goto_a

    .line 276
    :cond_10
    const v0, 0x7f081139    # @drawable/ic_qs_bluetooth_off 'res/drawable/ic_qs_bluetooth_off.xml'

    .line 277
    :goto_a
    invoke-static {v0}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 280
    move-result-object v0

    .line 283
    iput-object v0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 286
    move-result-object v0

    .line 289
    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 290
    move-result-object p0

    .line 293
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 294
    move-result-object p0

    .line 297
    const p2, 0x7f1300df    # @string/accessibility_quick_settings_open_settings 'Open %s settings.'

    .line 298
    invoke-virtual {v0, p2, p0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 301
    move-result-object p0

    .line 304
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->dualLabelContentDescription:Ljava/lang/CharSequence;

    .line 305
    const-class p0, Landroid/widget/Switch;

    .line 307
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 309
    move-result-object p0

    .line 312
    iput-object p0, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->expandedAccessibilityClassName:Ljava/lang/String;

    .line 313
    iget-boolean p0, p1, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;->isRestricted:Z

    .line 315
    if-eqz p0, :cond_11

    .line 317
    const/4 v2, 0x3

    .line 319
    :cond_11
    iput v2, p1, Lcom/android/systemui/plugins/qs/QSTile$State;->activeBgColor:I

    .line 320
    :goto_b
    return-void
    .line 322
.end method

.method public final isAvailable()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public final isConnected()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 4
    iget p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mConnectionState:I

    .line 6
    const/4 v0, 0x2

    .line 8
    if-ne p0, v0, :cond_0

    .line 9
    const/4 p0, 0x1

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return p0
    .line 14
.end method

.method public final newTileState()Lcom/android/systemui/plugins/qs/QSTile$State;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/plugins/qs/QSTile$RestrictState;-><init>()V

    .line 4
    return-object p0
    .line 7
.end method

.method public final setDetailListening(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/tiles/MiuiBluetoothTile;->controller:Lcom/android/systemui/statusbar/policy/BluetoothController;

    .line 4
    check-cast p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    new-instance p1, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda0;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;)V

    .line 14
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/BluetoothControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 19
    :cond_0
    return-void
    .line 22
.end method
