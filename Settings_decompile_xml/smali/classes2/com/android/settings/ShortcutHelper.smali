.class Lcom/android/settings/ShortcutHelper;
.super Ljava/lang/Object;
.source "SettingsApplication.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ShortcutHelper$Shortcut;
    }
.end annotation


# static fields
.field private static INST:Lcom/android/settings/ShortcutHelper;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 507
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 508
    iput-object p1, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method private createPendingIntent(Lcom/android/settings/ShortcutHelper$Shortcut;)Landroid/content/Intent;
    .locals 2

    .line 616
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0}, Landroid/content/Intent;-><init>()V

    const/high16 v0, 0x10200000

    .line 617
    invoke-virtual {p0, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 618
    sget-object v0, Lcom/android/settings/ShortcutHelper$1;->$SwitchMap$com$android$settings$ShortcutHelper$Shortcut:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const-string v0, "com.android.settings"

    const-string v1, "android.intent.category.DEFAULT"

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    :pswitch_0
    const-string/jumbo p1, "miui.intent.action.PERM_CENTER"

    .line 650
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 652
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.miui.securitycenter.permission.PermMainActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_1
    const-string/jumbo p1, "miui.intent.action.VIRUS_SCAN"

    .line 644
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 645
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 646
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.miui.viruscenter.activity.VirusScanAppActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_2
    const-string p1, "com.miui.powercenter.PowerCenter"

    .line 638
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 639
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 640
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_3
    const-string p1, "android.intent.action.SET_FIREWALL"

    .line 632
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 633
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 634
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.miui.antispam"

    const-string v1, "com.miui.antispam.ui.activity.MainActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_4
    const-string p1, "android.intent.action.VIEW_DATA_USAGE_SUMMARY"

    .line 626
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 627
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 628
    new-instance p1, Landroid/content/ComponentName;

    const-string v0, "com.miui.networkassistant"

    const-string v1, "com.miui.networkassistant.ui.MainActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_0

    :pswitch_5
    const-string/jumbo p1, "miui.intent.action.GARBAGE_CLEANUP"

    .line 620
    invoke-virtual {p0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 621
    invoke-virtual {p0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 622
    new-instance p1, Landroid/content/ComponentName;

    const-string v1, "com.miui.optimizecenter.MainActivity"

    invoke-direct {p1, v0, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settings/ShortcutHelper;
    .locals 1

    .line 512
    sget-object v0, Lcom/android/settings/ShortcutHelper;->INST:Lcom/android/settings/ShortcutHelper;

    if-nez v0, :cond_0

    .line 513
    new-instance v0, Lcom/android/settings/ShortcutHelper;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/ShortcutHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settings/ShortcutHelper;->INST:Lcom/android/settings/ShortcutHelper;

    .line 515
    :cond_0
    sget-object p0, Lcom/android/settings/ShortcutHelper;->INST:Lcom/android/settings/ShortcutHelper;

    return-object p0
.end method


# virtual methods
.method public createShortcutIntent(Lcom/android/settings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;
    .locals 4

    .line 564
    sget-object v0, Lcom/android/settings/ShortcutHelper$1;->$SwitchMap$com$android$settings$ShortcutHelper$Shortcut:[I

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    const/4 v0, -0x1

    move-object v2, v1

    goto :goto_0

    .line 593
    :pswitch_0
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_license_manage:I

    const-string v2, "com.android.settings:string/permission_mgr"

    goto :goto_0

    .line 588
    :pswitch_1
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_virus_scan:I

    const-string v2, "com.android.settings:string/virus_scan"

    goto :goto_0

    .line 583
    :pswitch_2
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_power_optimize:I

    const-string v2, "com.android.settings:string/power_mgr"

    goto :goto_0

    .line 578
    :pswitch_3
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_anti_spam:I

    const-string v2, "com.android.settings:string/anti_spam"

    goto :goto_0

    .line 573
    :pswitch_4
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_network_assistant:I

    const-string v2, "com.android.settings:string/network_assistant"

    goto :goto_0

    .line 568
    :pswitch_5
    sget v0, Lcom/android/settings/R$drawable;->ic_launcher_rubbish_clean:I

    const-string v2, "com.android.settings:string/cleaner"

    .line 599
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/ShortcutHelper;->createPendingIntent(Lcom/android/settings/ShortcutHelper$Shortcut;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    return-object v1

    .line 604
    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string p2, "duplicate"

    const/4 v3, 0x0

    .line 605
    invoke-virtual {v1, p2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "android.intent.extra.shortcut.NAME"

    .line 606
    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 607
    iget-object p0, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-static {p0, v0}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object p0

    const-string p2, "android.intent.extra.shortcut.ICON_RESOURCE"

    .line 608
    invoke-virtual {v1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string p0, "android.intent.extra.shortcut.INTENT"

    .line 610
    invoke-virtual {v1, p0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    return-object v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public removeShortcut(Lcom/android/settings/ShortcutHelper$Shortcut;)V
    .locals 1

    const-string v0, "com.miui.home.launcher.action.UNINSTALL_SHORTCUT"

    .line 557
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/ShortcutHelper;->createShortcutIntent(Lcom/android/settings/ShortcutHelper$Shortcut;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 558
    iget-object p0, p0, Lcom/android/settings/ShortcutHelper;->mContext:Landroid/content/Context;

    invoke-virtual {p0, p1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method
