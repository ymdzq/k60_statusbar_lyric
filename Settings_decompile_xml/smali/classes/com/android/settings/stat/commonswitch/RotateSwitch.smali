.class public Lcom/android/settings/stat/commonswitch/RotateSwitch;
.super Lcom/android/settings/stat/commonswitch/SwitchStat;
.source "RotateSwitch.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Lcom/android/settings/stat/commonswitch/SwitchStat;-><init>()V

    return-void
.end method


# virtual methods
.method getInfoList(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/stat/commonswitch/SwitchStat$Info;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    new-instance v0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settings/MiuiAutoRotateController;->isRotationLocked(Z)Z

    move-result v1

    const-string v2, "innerScreenLockSwitch"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    new-instance v0, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/android/settings/MiuiAutoRotateController;->isRotationLocked(Z)Z

    move-result v1

    const-string/jumbo v2, "outerScreenLockSwitch"

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/stat/commonswitch/SwitchStat$Info;-><init>(Lcom/android/settings/stat/commonswitch/SwitchStat;Ljava/lang/String;Z)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
