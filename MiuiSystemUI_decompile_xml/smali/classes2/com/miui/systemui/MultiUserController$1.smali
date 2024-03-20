.class public final Lcom/miui/systemui/MultiUserController$1;
.super Lcom/android/systemui/qs/SettingObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/MultiUserController;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/MultiUserController;Lcom/android/systemui/util/settings/SecureSettings;Landroid/os/Handler;)V
    .locals 6

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/MultiUserController$1;->this$0:Lcom/miui/systemui/MultiUserController;

    .line 2
    const-string v3, "second_user_id"

    .line 4
    const/4 v4, 0x0

    .line 6
    const/16 v5, -0x2710

    .line 7
    move-object v0, p0

    .line 9
    move-object v1, p2

    .line 10
    move-object v2, p3

    .line 11
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/qs/SettingObserver;-><init>(Lcom/android/systemui/util/settings/SettingsProxy;Landroid/os/Handler;Ljava/lang/String;II)V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final handleValueChanged(IZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/systemui/MultiUserController$1;->this$0:Lcom/miui/systemui/MultiUserController;

    .line 2
    iput p1, p0, Lcom/miui/systemui/MultiUserController;->secondUserId:I

    .line 4
    return-void
    .line 6
.end method
