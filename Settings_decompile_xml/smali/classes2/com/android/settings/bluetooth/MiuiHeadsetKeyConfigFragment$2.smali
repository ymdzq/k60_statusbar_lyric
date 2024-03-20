.class Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;
.super Ljava/lang/Object;
.source "MiuiHeadsetKeyConfigFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V
    .locals 0

    .line 426
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "MiuiHeadsetKeyConfigFragment"

    .line 430
    :try_start_0
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v3, :cond_2a

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    if-nez v3, :cond_0

    goto/16 :goto_15

    .line 440
    :cond_0
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isTWS01Headset(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    const-string v3, "gesture"

    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;

    move-result-object v5

    .line 441
    invoke-static {v3, v5}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isSupportZimiAdapter(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    move v3, v4

    .line 444
    :goto_1
    iget-object v5, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v5}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/android/settings/bluetooth/HeadsetIDConstants;->isK77sHeadset(Ljava/lang/String;)Z

    move-result v5

    const-string v6, ""

    .line 447
    invoke-virtual/range {p1 .. p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->hashCode()I

    move-result v8

    const/4 v9, 0x5

    const/4 v10, 0x4

    const/4 v11, 0x3

    const/4 v12, 0x2

    sparse-switch v8, :sswitch_data_0

    goto :goto_2

    :sswitch_0
    const-string/jumbo v8, "right_double"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v4

    goto :goto_3

    :sswitch_1
    const-string v8, "long_press_left_headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v10

    goto :goto_3

    :sswitch_2
    const-string v8, "left_triple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v12

    goto :goto_3

    :sswitch_3
    const-string v8, "left_double"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    const/4 v7, 0x0

    goto :goto_3

    :sswitch_4
    const-string v8, "long_press_right_headset"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    move v7, v9

    goto :goto_3

    :sswitch_5
    const-string/jumbo v8, "right_triple"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v7, :cond_3

    move v7, v11

    goto :goto_3

    :cond_3
    :goto_2
    const/4 v7, -0x1

    :goto_3
    const-string v8, "=="

    const-string v13, "2"

    const-string v14, "1"

    const/16 v15, 0x10

    const-string v2, "0"

    if-eqz v7, :cond_23

    if-eq v7, v4, :cond_1c

    const-string v4, "3"

    if-eq v7, v12, :cond_14

    if-eq v7, v11, :cond_c

    if-eq v7, v10, :cond_8

    if-eq v7, v9, :cond_4

    goto/16 :goto_14

    :cond_4
    if-eqz v5, :cond_7

    .line 565
    :try_start_1
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "03FF00"

    goto :goto_4

    :cond_5
    const-string v3, "03FF01"

    .line 570
    :goto_4
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, 0x0

    goto :goto_5

    :cond_6
    const/4 v2, 0x1

    :goto_5
    iput v2, v4, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownRightKey:I

    .line 571
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "right long press: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_14

    .line 574
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "right long press: unsupport device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_14

    :cond_8
    if-eqz v5, :cond_b

    .line 551
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    const-string v3, "0300FF"

    goto :goto_6

    :cond_9
    const-string v3, "0301FF"

    .line 556
    :goto_6
    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v5, p2

    check-cast v5, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    const/4 v2, 0x0

    goto :goto_7

    :cond_a
    const/4 v2, 0x1

    :goto_7
    iput v2, v4, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mDropdownLeftKey:I

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "left long press: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 558
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v3, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    goto/16 :goto_14

    .line 560
    :cond_b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left long press: unsupport device:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v3}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDeviceId(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_14

    :cond_c
    const-string v5, "02FF02"

    const-string v7, "02FF05"

    if-eqz v3, :cond_10

    .line 525
    :try_start_2
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    const-string v6, "02FF03"

    .line 527
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    goto/16 :goto_a

    .line 528
    :cond_d
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 530
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    move-object v6, v5

    goto :goto_a

    .line 531
    :cond_e
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    const-string v6, "02FF04"

    .line 533
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    goto :goto_a

    .line 534
    :cond_f
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_13

    .line 536
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    move-object v6, v7

    goto :goto_a

    .line 539
    :cond_10
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    move-object v6, v5

    goto :goto_8

    :cond_11
    move-object v6, v7

    .line 544
    :goto_8
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_12

    const/4 v2, 0x0

    goto :goto_9

    :cond_12
    const/4 v2, 0x1

    :goto_9
    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    .line 546
    :cond_13
    :goto_a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "right triple: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_14

    :cond_14
    const-string v5, "0202FF"

    const-string v7, "0205FF"

    if-eqz v3, :cond_18

    .line 498
    :try_start_3
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    const-string v6, "0203FF"

    .line 500
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    goto/16 :goto_d

    .line 501
    :cond_15
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 503
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    move-object v6, v5

    goto :goto_d

    .line 504
    :cond_16
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    const-string v6, "0204FF"

    .line 506
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    goto :goto_d

    .line 507
    :cond_17
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 509
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    move-object v6, v7

    goto :goto_d

    .line 512
    :cond_18
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_19

    move-object v6, v5

    goto :goto_b

    :cond_19
    move-object v6, v7

    .line 517
    :goto_b
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1a

    const/4 v2, 0x0

    goto :goto_c

    :cond_1a
    const/4 v2, 0x1

    :goto_c
    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    .line 519
    :cond_1b
    :goto_d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left triple: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 520
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto/16 :goto_14

    :cond_1c
    const-string v4, "01FF03"

    if-eqz v3, :cond_1f

    .line 474
    :try_start_4
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1d

    const-string v6, "01FF01"

    .line 476
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    goto :goto_10

    .line 477
    :cond_1d
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 479
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    move-object v6, v4

    goto :goto_10

    .line 480
    :cond_1e
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_22

    const-string v6, "01FF02"

    .line 482
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    goto :goto_10

    .line 485
    :cond_1f
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_20

    move-object v6, v4

    goto :goto_e

    :cond_20
    const-string v3, "01FF04"

    move-object v6, v3

    .line 490
    :goto_e
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x0

    goto :goto_f

    :cond_21
    const/4 v2, 0x1

    :goto_f
    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    .line 492
    :cond_22
    :goto_10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "right double: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_14

    :cond_23
    const-string v4, "0103FF"

    if-eqz v3, :cond_26

    .line 450
    :try_start_5
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    const-string v6, "0101FF"

    .line 452
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    goto :goto_13

    .line 453
    :cond_24
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    .line 455
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    move-object v6, v4

    goto :goto_13

    .line 456
    :cond_25
    move-object/from16 v2, p2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v13, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_29

    const-string v6, "0102FF"

    .line 458
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iput v3, v2, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    goto :goto_13

    .line 461
    :cond_26
    move-object/from16 v3, p2

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_27

    move-object v6, v4

    goto :goto_11

    :cond_27
    const-string v3, "0104FF"

    move-object v6, v3

    .line 466
    :goto_11
    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    move-object/from16 v4, p2

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_28

    const/4 v2, 0x0

    goto :goto_12

    :cond_28
    const/4 v2, 0x1

    :goto_12
    iput v2, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    .line 468
    :cond_29
    :goto_13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "left double: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v2

    invoke-static {v6, v15}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v3

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v2, v5, v3, v4}, Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;->setFunKey(IILandroid/bluetooth/BluetoothDevice;)V

    .line 580
    :goto_14
    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v0}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$mupdateKeyConfig(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)V

    const/4 v2, 0x1

    return v2

    :cond_2a
    :goto_15
    move v2, v4

    .line 431
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "preference changed service: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmService(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lcom/android/bluetooth/ble/app/IMiuiHeadsetService;

    move-result-object v4

    if-nez v4, :cond_2b

    move v4, v2

    goto :goto_16

    :cond_2b
    const/4 v4, 0x0

    :goto_16
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", device: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v4}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v4

    if-nez v4, :cond_2c

    move v4, v2

    goto :goto_17

    :cond_2c
    const/4 v4, 0x0

    :goto_17
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDoubleClickLeft(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    iget v3, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftDoubleKey:I

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 433
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmTripleClickLeft(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    iget v3, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mLeftTripleKey:I

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 434
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmDoubleClickRight(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v2

    iget-object v3, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    iget v3, v3, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightDoubleKey:I

    invoke-virtual {v2, v3}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V

    .line 435
    iget-object v2, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    invoke-static {v2}, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->-$$Nest$fgetmTripleClickRight(Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;)Lmiuix/preference/DropDownPreference;

    move-result-object v2

    iget-object v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment$2;->this$0:Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;

    iget v0, v0, Lcom/android/settings/bluetooth/MiuiHeadsetKeyConfigFragment;->mRightTripleKey:I

    invoke-virtual {v2, v0}, Lmiuix/preference/DropDownPreference;->setValueIndex(I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    const/4 v1, 0x0

    return v1

    :catch_0
    move-exception v0

    .line 583
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ser preferernc listener error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x0

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7bdb101f -> :sswitch_5
        -0x66d24de0 -> :sswitch_4
        -0x56d6ecf7 -> :sswitch_3
        -0x3b645c6a -> :sswitch_2
        0xd389369 -> :sswitch_1
        0x68b25f54 -> :sswitch_0
    .end sparse-switch
.end method
