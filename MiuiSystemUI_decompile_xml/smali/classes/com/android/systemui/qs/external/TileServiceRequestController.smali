.class public final Lcom/android/systemui/qs/external/TileServiceRequestController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

.field public final commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

.field public dialogCanceller:Lkotlin/jvm/functions/Function1;

.field public final dialogCreator:Lkotlin/jvm/functions/Function0;

.field public final eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSHostAdapter;Lcom/android/systemui/statusbar/CommandQueue;Lcom/android/systemui/statusbar/commandline/CommandRegistry;Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$1;

    .line 2
    invoke-direct {v0, p1}, Lcom/android/systemui/qs/external/TileServiceRequestController$1;-><init>(Lcom/android/systemui/qs/QSHostAdapter;)V

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 12
    iput-object p3, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 14
    iput-object p4, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    .line 18
    new-instance p1, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    .line 20
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 22
    iput-object p1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    .line 25
    return-void
    .line 27
.end method


# virtual methods
.method public final init()V
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/external/TileServiceRequestController$init$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandRegistry:Lcom/android/systemui/statusbar/commandline/CommandRegistry;

    .line 7
    const-string/jumbo v2, "tile-service-add"

    .line 9
    invoke-virtual {v1, v2, v0}, Lcom/android/systemui/statusbar/commandline/CommandRegistry;->registerCommand(Ljava/lang/String;Lkotlin/jvm/functions/Function0;)V

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/qs/external/TileServiceRequestController;->commandQueueCallback:Lcom/android/systemui/qs/external/TileServiceRequestController$commandQueueCallback$1;

    .line 17
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 19
    return-void
    .line 22
.end method

.method public final requestTileAdd$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Landroid/content/ComponentName;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/graphics/drawable/Icon;Ljava/util/function/Consumer;)V
    .locals 20

    .line 1
    move-object/from16 v6, p0

    .line 2
    move-object/from16 v7, p4

    .line 4
    iget-object v0, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->eventLogger:Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;

    .line 6
    iget-object v1, v0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->instanceIdSequence:Lcom/android/internal/logging/InstanceIdSequence;

    .line 8
    invoke-virtual {v1}, Lcom/android/internal/logging/InstanceIdSequence;->newInstanceId()Lcom/android/internal/logging/InstanceId;

    .line 10
    move-result-object v8

    .line 13
    invoke-virtual/range {p1 .. p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 14
    move-result-object v9

    .line 17
    invoke-static/range {p1 .. p1}, Lcom/android/systemui/qs/external/CustomTile;->toSpec(Landroid/content/ComponentName;)Ljava/lang/String;

    .line 18
    move-result-object v1

    .line 21
    iget-object v2, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 22
    invoke-interface {v2, v1}, Lcom/android/systemui/plugins/miui/qs/MiuiQSHost;->indexOf(Ljava/lang/String;)I

    .line 24
    move-result v1

    .line 27
    const/4 v2, -0x1

    .line 28
    const/4 v10, 0x1

    .line 29
    const/4 v11, 0x0

    .line 30
    if-eq v1, v2, :cond_0

    .line 31
    move v1, v10

    .line 33
    goto :goto_0

    .line 34
    :cond_0
    move v1, v11

    .line 35
    :goto_0
    iget-object v12, v0, Lcom/android/systemui/qs/external/TileRequestDialogEventLogger;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 36
    if-eqz v1, :cond_1

    .line 38
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v0

    .line 43
    move-object/from16 v5, p5

    .line 44
    invoke-interface {v5, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_TILE_ALREADY_ADDED:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 49
    invoke-interface {v12, v0, v11, v9, v8}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 51
    return-void

    .line 54
    :cond_1
    move-object/from16 v5, p5

    .line 55
    new-instance v13, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;

    .line 57
    new-instance v14, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;

    .line 59
    move-object v0, v14

    .line 61
    move-object/from16 v1, p0

    .line 62
    move-object/from16 v2, p1

    .line 64
    move-object v3, v9

    .line 66
    move-object v4, v8

    .line 67
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController;Landroid/content/ComponentName;Ljava/lang/String;Lcom/android/internal/logging/InstanceId;Ljava/util/function/Consumer;)V

    .line 68
    invoke-direct {v13, v14}, Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$dialogResponse$1;)V

    .line 71
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;

    .line 74
    invoke-direct {v0, v13}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$dialogClickListener$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 76
    iget-object v1, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCreator:Lkotlin/jvm/functions/Function0;

    .line 79
    invoke-interface {v1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    .line 81
    move-result-object v1

    .line 84
    move-object v2, v1

    .line 85
    check-cast v2, Lcom/android/systemui/qs/external/TileRequestDialog;

    .line 86
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 88
    move-result-object v3

    .line 91
    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 92
    move-result-object v3

    .line 95
    const v4, 0x7f0d03c2    # @layout/tile_service_request_dialog 'res/layout/tile_service_request_dialog.xml'

    .line 96
    const/4 v5, 0x0

    .line 99
    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 100
    move-result-object v3

    .line 103
    move-object v15, v3

    .line 104
    check-cast v15, Landroid/view/ViewGroup;

    .line 105
    const v3, 0x7f0a0966    # @id/text

    .line 107
    invoke-virtual {v15, v3}, Landroid/view/ViewGroup;->requireViewById(I)Landroid/view/View;

    .line 110
    move-result-object v3

    .line 113
    check-cast v3, Landroid/widget/TextView;

    .line 114
    invoke-virtual {v3}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    .line 116
    move-result-object v4

    .line 119
    filled-new-array/range {p2 .. p2}, [Ljava/lang/Object;

    .line 120
    move-result-object v5

    .line 123
    const v14, 0x7f13094d    # @string/qs_tile_request_dialog_text '%1$s wants to add the following tile to Quick Settings'

    .line 124
    invoke-virtual {v4, v14, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 127
    move-result-object v4

    .line 130
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 131
    new-instance v3, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 134
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 136
    move-result-object v4

    .line 139
    new-instance v5, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;

    .line 140
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 142
    move-result-object v14

    .line 145
    invoke-direct {v5, v14}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 146
    invoke-direct {v3, v4, v5, v10}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/plugins/qs/QSIconView;Z)V

    .line 149
    new-instance v4, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;

    .line 152
    invoke-direct {v4}, Lcom/android/systemui/plugins/qs/QSTile$BooleanState;-><init>()V

    .line 154
    move-object/from16 v5, p3

    .line 157
    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 159
    iput-boolean v11, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->handlesLongClick:Z

    .line 161
    if-eqz v7, :cond_2

    .line 163
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getContext()Landroid/content/Context;

    .line 165
    move-result-object v5

    .line 168
    invoke-virtual {v7, v5}, Landroid/graphics/drawable/Icon;->loadDrawable(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    .line 169
    move-result-object v5

    .line 172
    if-eqz v5, :cond_2

    .line 173
    new-instance v7, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;

    .line 175
    invoke-direct {v7, v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$DrawableIcon;-><init>(Landroid/graphics/drawable/Drawable;)V

    .line 177
    goto :goto_1

    .line 180
    :cond_2
    const v5, 0x7f080ae6    # @drawable/android 'res/drawable/android.xml'

    .line 181
    invoke-static {v5}, Lcom/android/systemui/qs/tileimpl/QSTileImpl$ResourceIcon;->get(I)Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 184
    move-result-object v7

    .line 187
    :goto_1
    iput-object v7, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->icon:Lcom/android/systemui/plugins/qs/QSTile$Icon;

    .line 188
    iget-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->label:Ljava/lang/CharSequence;

    .line 190
    iput-object v5, v4, Lcom/android/systemui/plugins/qs/QSTile$State;->contentDescription:Ljava/lang/CharSequence;

    .line 192
    invoke-virtual {v3, v4}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->onStateChanged(Lcom/android/systemui/plugins/qs/QSTile$State;)V

    .line 194
    new-instance v4, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;

    .line 197
    invoke-direct {v4, v3}, Lcom/android/systemui/qs/external/TileRequestDialog$createTileView$1;-><init>(Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;)V

    .line 199
    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->post(Ljava/lang/Runnable;)Z

    .line 202
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 205
    move-result-object v4

    .line 208
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 209
    move-result-object v4

    .line 212
    const v5, 0x7f071003    # @dimen/qs_tile_service_request_tile_width '192.0dp'

    .line 213
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 216
    move-result v4

    .line 219
    invoke-virtual {v15}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 220
    move-result-object v5

    .line 223
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 224
    move-result-object v5

    .line 227
    const v7, 0x7f070fe5    # @dimen/qs_quick_tile_size '60.0dp'

    .line 228
    invoke-virtual {v5, v7}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 231
    move-result v5

    .line 234
    invoke-virtual {v15, v3, v4, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V

    .line 235
    invoke-virtual {v15, v10}, Landroid/view/ViewGroup;->setSelected(Z)V

    .line 238
    const/16 v19, 0x0

    .line 241
    const/16 v18, 0x0

    .line 243
    move-object v14, v2

    .line 245
    move/from16 v16, v18

    .line 246
    move/from16 v17, v18

    .line 248
    invoke-virtual/range {v14 .. v19}, Landroid/app/AlertDialog;->setView(Landroid/view/View;IIII)V

    .line 250
    invoke-static {v2}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setShowForAllUsers(Landroid/app/Dialog;)V

    .line 253
    invoke-virtual {v2, v10}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 256
    new-instance v3, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;

    .line 259
    invoke-direct {v3, v13}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$1;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 261
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 264
    new-instance v3, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;

    .line 267
    invoke-direct {v3, v13}, Lcom/android/systemui/qs/external/TileServiceRequestController$createDialog$1$2;-><init>(Lcom/android/systemui/qs/external/TileServiceRequestController$SingleShotConsumer;)V

    .line 269
    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 272
    const v3, 0x7f13094b    # @string/qs_tile_request_dialog_add 'Add tile'

    .line 275
    invoke-virtual {v2, v3, v0}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)V

    .line 278
    const/4 v3, -0x2

    .line 281
    const v4, 0x7f13094c    # @string/qs_tile_request_dialog_not_add 'Do not add tile'

    .line 282
    invoke-virtual {v2, v3, v4, v0, v10}, Lcom/android/systemui/statusbar/phone/SystemUIDialog;->setButton(IILandroid/content/DialogInterface$OnClickListener;Z)V

    .line 285
    check-cast v1, Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 288
    new-instance v0, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;

    .line 290
    invoke-direct {v0, v9, v1, v6}, Lcom/android/systemui/qs/external/TileServiceRequestController$requestTileAdd$1$1;-><init>(Ljava/lang/String;Lcom/android/systemui/statusbar/phone/SystemUIDialog;Lcom/android/systemui/qs/external/TileServiceRequestController;)V

    .line 292
    iput-object v0, v6, Lcom/android/systemui/qs/external/TileServiceRequestController;->dialogCanceller:Lkotlin/jvm/functions/Function1;

    .line 295
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 297
    sget-object v0, Lcom/android/systemui/qs/external/TileRequestDialogEvent;->TILE_REQUEST_DIALOG_SHOWN:Lcom/android/systemui/qs/external/TileRequestDialogEvent;

    .line 300
    invoke-interface {v12, v0, v11, v9, v8}, Lcom/android/internal/logging/UiEventLogger;->logWithInstanceId(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;ILjava/lang/String;Lcom/android/internal/logging/InstanceId;)V

    .line 302
    return-void
    .line 305
.end method
