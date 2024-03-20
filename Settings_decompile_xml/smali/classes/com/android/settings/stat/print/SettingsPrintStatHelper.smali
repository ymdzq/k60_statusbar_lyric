.class public Lcom/android/settings/stat/print/SettingsPrintStatHelper;
.super Ljava/lang/Object;
.source "SettingsPrintStatHelper.java"


# static fields
.field private static volatile mInstance:Lcom/android/settings/stat/print/SettingsPrintStatHelper;


# instance fields
.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/stat/print/SettingsPrintStatHelper;
    .locals 2

    .line 24
    sget-object v0, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mInstance:Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    if-nez v0, :cond_1

    .line 25
    const-class v0, Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    monitor-enter v0

    .line 26
    :try_start_0
    sget-object v1, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mInstance:Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    if-nez v1, :cond_0

    .line 27
    new-instance v1, Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/android/settings/stat/print/SettingsPrintStatHelper;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mInstance:Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    .line 29
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 31
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mInstance:Lcom/android/settings/stat/print/SettingsPrintStatHelper;

    return-object p0
.end method


# virtual methods
.method public getMiPrintStatDataFromProvider()Lcom/android/settings/stat/print/MiPrintStatItem;
    .locals 25

    move-object/from16 v0, p0

    .line 40
    iget-object v0, v0, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    :try_start_0
    const-string v0, "content://com.android.printspooler.mistat.MiPrintStatProvider"

    .line 44
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v1, :cond_0

    .line 47
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "print_page"

    .line 48
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    const-string/jumbo v2, "select_print_button"

    .line 49
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    const-string/jumbo v3, "search_printers_num"

    .line 50
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const-string v4, "connect_printer_num"

    .line 51
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    const-string v5, "copies_num"

    .line 52
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    const-string/jumbo v6, "orientation_num"

    .line 53
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    move-result v6

    const-string v8, "color_num"

    .line 54
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    const-string/jumbo v9, "paper_size_num"

    .line 55
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getInt(I)I

    move-result v9

    const-string/jumbo v10, "print_num"

    .line 56
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    const-string/jumbo v11, "print_fail_num"

    .line 57
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getInt(I)I

    move-result v11

    const-string v12, "help_page"

    .line 58
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getInt(I)I

    move-result v12

    const-string/jumbo v13, "support_printer_page"

    .line 59
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getInt(I)I

    move-result v13

    const-string/jumbo v14, "printer_door_open"

    .line 61
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getInt(I)I

    move-result v14

    const-string/jumbo v15, "printer_jammed"

    .line 62
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    const-string/jumbo v7, "printer_out_of_paper"

    .line 63
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v16, v7

    const-string/jumbo v7, "printer_check"

    .line 64
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v17, v7

    const-string/jumbo v7, "printer_out_of_ink"

    .line 65
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v18, v7

    const-string/jumbo v7, "printer_out_of_toner"

    .line 66
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v19, v7

    const-string/jumbo v7, "printer_low_on_ink"

    .line 67
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v20, v7

    const-string/jumbo v7, "printer_low_on_toner"

    .line 68
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v21, v7

    const-string/jumbo v7, "printer_busy"

    .line 69
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v22, v7

    const-string/jumbo v7, "printer_offline"

    .line 70
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    move/from16 v23, v7

    const-string/jumbo v7, "no_connection_to_printer"

    .line 71
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object/from16 v24, v1

    .line 73
    :try_start_2
    new-instance v1, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    invoke-direct {v1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;-><init>()V

    .line 74
    invoke-virtual {v1, v0}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrintPageNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 75
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setSelectPrintButtonNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setSearchPrintersNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 77
    invoke-virtual {v0, v4}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setConnectPrinterNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 78
    invoke-virtual {v0, v5}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setCopiesNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 79
    invoke-virtual {v0, v6}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setOrientationNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 80
    invoke-virtual {v0, v8}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setColorNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 81
    invoke-virtual {v0, v9}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPaperSizeNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 82
    invoke-virtual {v0, v10}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrintNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 83
    invoke-virtual {v0, v11}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrintFailNum(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 84
    invoke-virtual {v0, v12}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setHelpPage(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 85
    invoke-virtual {v0, v13}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setSupportPrinterPage(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 86
    invoke-virtual {v0, v14}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterDoorOpen(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0, v15}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterJammed(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v16

    .line 88
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterOutOfPaper(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v17

    .line 89
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterCheck(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v18

    .line 90
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterOutOfInk(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v19

    .line 91
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterOutOfToner(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v20

    .line 92
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterLowOnInk(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v21

    .line 93
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterLowOnToner(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v22

    .line 94
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterBusy(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    move/from16 v2, v23

    .line 95
    invoke-virtual {v0, v2}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setPrinterOffline(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    move-result-object v0

    .line 96
    invoke-virtual {v0, v7}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->setNoConnectionToPrinter(I)Lcom/android/settings/stat/print/MiPrintStatItem$Builder;

    .line 97
    invoke-virtual {v1}, Lcom/android/settings/stat/print/MiPrintStatItem$Builder;->build()Lcom/android/settings/stat/print/MiPrintStatItem;

    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 104
    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object/from16 v1, v24

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object/from16 v24, v1

    :goto_0
    move-object/from16 v7, v24

    goto :goto_2

    :catch_1
    move-exception v0

    move-object/from16 v24, v1

    goto :goto_1

    :cond_0
    move-object/from16 v24, v1

    if-eqz v24, :cond_1

    invoke-interface/range {v24 .. v24}, Landroid/database/Cursor;->close()V

    :cond_1
    const/4 v1, 0x0

    return-object v1

    :catchall_2
    move-exception v0

    const/4 v7, 0x0

    goto :goto_2

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    :goto_1
    :try_start_3
    const-string v2, "SettingsPrintStatHelper"

    const-string v3, "Fail to query mi print stat data from provider ! "

    .line 100
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    if-eqz v1, :cond_2

    .line 104
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_2
    const/4 v1, 0x0

    return-object v1

    :catchall_3
    move-exception v0

    move-object v7, v1

    :goto_2
    if-eqz v7, :cond_3

    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_3
    throw v0
.end method

.method public traceMiPrintEvent(Z)V
    .locals 2

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/stat/print/SettingsPrintStatHelper;->getMiPrintStatDataFromProvider()Lcom/android/settings/stat/print/MiPrintStatItem;

    move-result-object p0

    const-string v0, "SettingsPrintStatHelper"

    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->isAlreadyStat()Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_0

    .line 121
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "traceMiPrintEvent MiPrintStatItem : "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrintPageNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "print_page"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getSelectPrintButtonNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "select_print_button"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getSearchPrintersNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "search_printers_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getConnectPrinterNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "connect_printer_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getCopiesNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "copies_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getOrientationNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "orientation_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getColorNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "color_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPaperSizeNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "paper_size_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrintNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "print_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrintFailNum()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "print_fail_num"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getHelpPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "help_page"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getSupportPrinterPage()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "support_printer_page"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterDoorOpen()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_door_open"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterJammed()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_jammed"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterOutOfPaper()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_out_of_paper"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterCheck()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_check"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterOutOfInk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_out_of_ink"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterOutOfToner()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_out_of_toner"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterLowOnInk()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_low_on_ink"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterLowOnToner()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_low_on_toner"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterBusy()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_busy"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getPrinterOffline()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string/jumbo v1, "printer_offline"

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/stat/print/MiPrintStatItem;->getNoConnectionToPrinter()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string/jumbo v0, "no_connection_to_printer"

    invoke-interface {p1, v0, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo p0, "miprint_stat_data"

    .line 149
    invoke-static {p0, p1}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :cond_1
    :goto_0
    const-string/jumbo p0, "miprint statItem is null or statItem is already stat"

    .line 116
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
