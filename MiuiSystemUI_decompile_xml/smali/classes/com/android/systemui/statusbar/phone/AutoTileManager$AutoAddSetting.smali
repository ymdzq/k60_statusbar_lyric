.class public final Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mSpec:Ljava/lang/String;

.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/AutoTileManager;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 2
    invoke-direct {p0, p2, p3, p4, p5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;I)V

    .line 4
    iput-object p6, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 2
    iget-object p2, p2, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 6
    invoke-virtual {p2, v0}, Lcom/android/systemui/qs/AutoAddTracker;->isAdded(Ljava/lang/String;)Z

    .line 8
    move-result p2

    .line 11
    if-eqz p2, :cond_0

    .line 12
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 14
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 16
    new-instance p2, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;

    .line 18
    const/4 v0, 0x0

    .line 20
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;I)V

    .line 21
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 24
    return-void

    .line 27
    :cond_0
    if-eqz p1, :cond_2

    .line 28
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 30
    const-string p2, "custom("

    .line 32
    invoke-virtual {p1, p2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 34
    move-result p1

    .line 37
    const/4 p2, 0x1

    .line 38
    if-eqz p1, :cond_1

    .line 39
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 41
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 43
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 45
    invoke-static {v0}, Lcom/android/systemui/qs/external/CustomTile;->getComponentFromSpec(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 47
    move-result-object v0

    .line 50
    invoke-interface {p1, v0, p2}, Lcom/android/systemui/qs/QSHost;->addTile(Landroid/content/ComponentName;Z)V

    .line 51
    goto :goto_0

    .line 54
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 55
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHost:Lcom/android/systemui/qs/QSHost;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 59
    invoke-interface {p1, v0}, Lcom/android/systemui/qs/QSHost;->addTile(Ljava/lang/String;)V

    .line 61
    :goto_0
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 64
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mAutoTracker:Lcom/android/systemui/qs/AutoAddTracker;

    .line 66
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->mSpec:Ljava/lang/String;

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/systemui/qs/AutoAddTracker;->setTileAdded(Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;->this$0:Lcom/android/systemui/statusbar/phone/AutoTileManager;

    .line 73
    iget-object p1, p1, Lcom/android/systemui/statusbar/phone/AutoTileManager;->mHandler:Landroid/os/Handler;

    .line 75
    new-instance v0, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;

    .line 77
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/phone/AutoTileManager$AutoAddSetting;I)V

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 82
    :cond_2
    return-void
    .line 85
.end method
